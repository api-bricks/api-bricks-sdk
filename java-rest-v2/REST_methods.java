import java.io.Closeable;
import java.io.IOException;
import java.time.Instant;
import java.util.ArrayList;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 * Contains methods that call coinapi's REST API.
 * <p>
 * This class is multithread safe.
 * It is always <a href="http://www.ibm.com/developerworks/java/library/j-jtp0618.html">properly constructed</a>.
 * All of its fields are final.
 * Its {@link #key} field is immutable, while its {@link #client} field is a multithread safe type.
 * See p. 53 of <a href="http://www.javaconcurrencyinpractice.com">Java Concurrency In Practice</a> for more discussion.
 */
public class REST_methods implements Closeable {
	
	// -------------------- instance fields --------------------
	
	private final String key;
	
	// For top performance, it is critical that you cache the OkHttpClient instance:
	//	OkHttp performs best when you create a single OkHttpClient instance and reuse it for all of your HTTP calls.
	//	This is because each client holds its own connection pool and thread pools.
	//	Reusing connections and threads reduces latency and saves memory.
	//	Conversely, creating a client for each request wastes resources on idle pools.
	//	https://square.github.io/okhttp/3.x/okhttp/okhttp3/OkHttpClient.html
	private final OkHttpClient client = new OkHttpClient();
	
	// -------------------- constructor --------------------
	
	public REST_methods(String key) {
		this.key = key;
	}
	
	// -------------------- close --------------------
	
	@Override public void close() {
		// The code below is described in the "Shutdown isn't necessary" section here: https://square.github.io/okhttp/3.x/okhttp/okhttp3/OkHttpClient.html
		client.dispatcher().executorService().shutdown();
		client.connectionPool().evictAll();
		//client.cache().close();    // only call this if client was created with a cache; the one above was NOT
	}
	
	// -------------------- get_json --------------------
	
	private String get_json(String url) throws IOException {
		//RequestBody body = RequestBody.create(null, new byte[0]);
		
		Request request = new Request.Builder()
			.url("https://rest.coinapi.io" + url)
			//.post(body)
			.addHeader("X-CoinAPI-Key", key)
			.build();
		
		try (
			Response response = client.newCall(request).execute()    // you MUST always immediately close response, easiest way is like this; see https://square.github.io/okhttp/3.x/okhttp/okhttp3/ResponseBody.html 
		) {
			ResponseBody body = response.body();    // no need to null check the result of body(): it is annotated @Nullable but its javadoc states that "Returns a non-null value if this response was ... returned from Call.execute()" which is the case above; see https://square.github.io/okhttp/3.x/okhttp/okhttp3/Response.html#body--
			
			if (response.code() >= 400) {
				String error;
				try {
					JSONObject object = new JSONObject(body.string());
					if (object.has("error")) {
						error = object.getString("error");
					} else {
						error = "[NOTHING: response has no value for \"error\"]";
					}
				} catch (Throwable t) {
					error = "[FAILED to extract response's \"error\" value because this Throwable was raised: " + t + "]";
				}
				
				String message =
					"the response code for url is an ERROR code:" + "\n"
					+ "\t" + "url = " + url + "\n"
					+ "\t" + "response code = " + response.code() + "\n"
					+ "\t" + "response body error = " + error + "\n";
				
				throw new RuntimeException(message);
			}
			
			return body.string();
		}
	}
	
	// -------------------- public API methods (and private helper methods) --------------------

	public Exchange[] list_all_exchanges() throws IOException {
		String json = get_json("/v1/exchanges");
		JSONArray array = new JSONArray(json);
		
		Exchange[] result = new Exchange[array.length()];
		for (int i = 0; i < array.length(); i++) {
			String exchange_id = array.getJSONObject(i).getString("exchange_id");
			String name = array.getJSONObject(i).getString("name");
			String website = array.getJSONObject(i).getString("website");
			result[i] = new Exchange(exchange_id, name, website);
		}
		return result;
	}
	
	public Asset[] list_all_assets() throws IOException {
		String json = get_json("/v1/assets");
		JSONArray array = new JSONArray(json);
		
		Asset[] result = new Asset[array.length()];
		for (int i = 0; i < array.length(); i++) {
			String asset_id = array.getJSONObject(i).getString("asset_id");
			String name = array.getJSONObject(i).optString("name", null);
			boolean type_is_crypto = array.getJSONObject(i).getInt("type_is_crypto") != 0;
			result[i] = new Asset(asset_id, name, type_is_crypto);
		}
		return result;
	}
	
	public Symbol[] list_all_symbols() throws IOException {
		String json = get_json("/v1/symbols");
		JSONArray array = new JSONArray(json);
		
		Symbol[] result = new Symbol[array.length()];
		for (int i = 0; i < array.length(); i++) {
			String symbol_id = array.getJSONObject(i).getString("symbol_id");
			String exchange_id = array.getJSONObject(i).getString("exchange_id");
			Symbol_type symbol_type = Symbol_type.valueOf(array.getJSONObject(i).getString("symbol_type"));
			String asset_id_base = array.getJSONObject(i).optString("asset_id_base");
			String asset_id_quote = array.getJSONObject(i).optString("asset_id_quote");
			if (symbol_type == Symbol_type.FUTURES) {
				Instant future_delivery_time = Instant.parse(array.getJSONObject(i).getString("future_delivery_time"));
				result[i] = new Symbol(
					symbol_id, exchange_id, symbol_type, asset_id_base, asset_id_quote, false,
					0.0, 0.0, null, null, future_delivery_time
				);
			} else if (symbol_type == Symbol_type.OPTION) {
				boolean option_type_is_call = array.getJSONObject(i).getBoolean("option_type_is_call");
				double option_strike_price = array.getJSONObject(i).getDouble("option_strike_price");
				double option_contract_unit = array.getJSONObject(i).getDouble("option_contract_unit");
				Option_exercise_style option_exercise_style = Option_exercise_style.valueOf(array.getJSONObject(i).getString("option_exercise_style"));
				Instant option_expiration_time = Instant.parse(array.getJSONObject(i).getString("option_expiration_time"));
				result[i] = new Symbol(
					symbol_id, exchange_id, symbol_type, asset_id_base, asset_id_quote, option_type_is_call,
					option_strike_price, option_contract_unit, option_exercise_style, option_expiration_time, null
				);
			} else {
				result[i] = new Symbol(symbol_id, exchange_id, symbol_type, asset_id_base, asset_id_quote);
			}
		}
		return result;
	}
	
	public Exchange_rate get_exchange_rate(String asset_id_base, String asset_id_quote) throws IOException {
		String json = get_json("/v1/exchangerate/" + asset_id_base + "/" + asset_id_quote);
		JSONObject object = new JSONObject(json);
		
		asset_id_base = object.getString("asset_id_base");
		asset_id_quote = object.getString("asset_id_quote");
		double rate = object.getDouble("rate");
		
		return new Exchange_rate(Instant.parse(object.getString("time")), asset_id_base, asset_id_quote, rate);
	}
	
	public Exchange_rate get_exchange_rate(String asset_id_base, String asset_id_quote, Instant time) throws IOException {
		String json = get_json("/v1/exchangerate/" + asset_id_base + "/" + asset_id_quote + "?time=" + time);
		JSONObject object = new JSONObject(json);
		
		asset_id_base = object.getString("asset_id_base");
		asset_id_quote = object.getString("asset_id_quote");
		double rate = object.getDouble("rate");
		return new Exchange_rate(Instant.parse(object.getString("time")), asset_id_base, asset_id_quote, rate);
	}
	
	public Exchange_rate[] get_all_exchange_rates(String asset_id_base) throws IOException {
		String json = get_json("/v1/exchangerate/" + asset_id_base);
		JSONObject object = new JSONObject(json);
		JSONArray array = object.getJSONArray("rates");
		
		Exchange_rate[] result = new Exchange_rate[array.length()];
		for (int i = 0; i < array.length(); i++) {
			String asset_id_quote = array.getJSONObject(i).getString("asset_id_quote");
			double rate = array.getJSONObject(i).getDouble("rate");
			Instant time = Instant.parse(array.getJSONObject(i).getString("time"));
			result[i] = new Exchange_rate(time, asset_id_base, asset_id_quote, rate);
		}
		return result;
	}
	
	public Period[] ohlcv_list_all_periods() throws IOException {
		String json = get_json("/v1/ohlcv/periods");
		JSONArray array = new JSONArray(json);
		
		Period[] result = new Period[array.length()];
		for (int i = 0; i < array.length(); i++) {
			Period_identifier period_id = Period_identifier.parse(array.getJSONObject(i).getString("period_id"));
			int length_seconds = array.getJSONObject(i).getInt("length_seconds");
			int length_months = array.getJSONObject(i).getInt("length_months");
			int unit_count = array.getJSONObject(i).getInt("unit_count");
			String unit_name = array.getJSONObject(i).getString("unit_name");
			String display_name = array.getJSONObject(i).getString("display_name");
			
			result[i] = new Period(period_id, length_seconds, length_months, unit_count, unit_name, display_name);
		}
		return result;
	}
	
	private Timedata[] parse_timeseries(JSONArray array) {
		Timedata[] result = new Timedata[array.length()];
		for (int i = 0; i < array.length(); i++) {
			Instant time_period_start = Instant.parse(array.getJSONObject(i).getString("time_period_start"));
			Instant time_period_end = Instant.parse(array.getJSONObject(i).getString("time_period_end"));
			Instant time_open = Instant.parse(array.getJSONObject(i).getString("time_open"));
			Instant time_close = Instant.parse(array.getJSONObject(i).getString("time_close"));
			double price_open = array.getJSONObject(i).getDouble("price_open");
			double price_high = array.getJSONObject(i).getDouble("price_high");
			double price_low = array.getJSONObject(i).getDouble("price_low");
			double price_close = array.getJSONObject(i).getDouble("price_close");
			double volume_traded = array.getJSONObject(i).getDouble("volume_traded");
			int trades_count = array.getJSONObject(i).getInt("trades_count");

			result[i] = new Timedata(time_period_start, time_period_end, time_open, time_close, price_open, price_high, price_low, price_close, volume_traded, trades_count);
		}
		return result;
	}
	
	public Timedata[] ohlcv_get_latest_timeseries(String symbol_id, Period_identifier period_id) throws IOException {
		String json = get_json("/v1/ohlcv/" + symbol_id + "/latest?period_id=" + period_id);
		JSONArray array = new JSONArray(json);
		return parse_timeseries(array);
	}
	
	public Timedata[] ohlcv_get_latest_timeseries(String symbol_id, Period_identifier period_id, int limit) throws IOException {
		String json = get_json("/v1/ohlcv/" + symbol_id + "/latest?period_id=" + period_id + "&limit=" + limit);
		JSONArray array = new JSONArray(json);
		return parse_timeseries(array);
	}
	
	public Timedata[] ohlcv_get_historical_timeseries(String symbol_id, Period_identifier period_id, Instant time_start) throws IOException {
		String json = get_json("/v1/ohlcv/" + symbol_id + "/history?period_id=" + period_id + "&time_start=" + time_start);
		JSONArray array = new JSONArray(json);
		return parse_timeseries(array);
	}
	
	public Timedata[] ohlcv_get_historical_timeseries(String symbol_id, Period_identifier period_id, Instant time_start, Instant time_end) throws IOException {
		String json = get_json("/v1/ohlcv/" + symbol_id + "/history?period_id=" + period_id + "&time_start=" + time_start + "&time_end=" + time_end);
		JSONArray array = new JSONArray(json);
		return parse_timeseries(array);
	}
	
	public Timedata[] ohlcv_get_historical_timeseries(String symbol_id, Period_identifier period_id, Instant time_start, int limit) throws IOException {
		String json = get_json("/v1/ohlcv/" + symbol_id + "/history?period_id=" + period_id + "&time_start=" + time_start + "&limit=" + limit);
		JSONArray array = new JSONArray(json);
		return parse_timeseries(array);
	}
	
	public Timedata[] ohlcv_get_historical_timeseries(String symbol_id, Period_identifier period_id, Instant time_start, Instant time_end, int limit) throws IOException {
		String json = get_json(
			"/v1/ohlcv/" + symbol_id
			+ "/history?"
			+ "period_id=" + period_id
			+ "&time_start=" + time_start
			+ "&time_end=" + time_end
			+ "&limit=" + limit
		);
		JSONArray array = new JSONArray(json);
		return parse_timeseries(array);
	}
	
	private Trade parse_trade(JSONObject object, String symbol_id) {
		if (symbol_id == null) symbol_id = object.getString("symbol_id");
		Instant time_exchange = Instant.parse(object.getString("time_exchange"));
		Instant time_coinapi = Instant.parse(object.getString("time_coinapi"));
		String uuid = object.getString("uuid");
		double price = object.getDouble("price");
		double size = object.getDouble("size");
		Taker_side taker_side = Taker_side.valueOf(object.getString("taker_side"));
		
		return new Trade(symbol_id, time_exchange, time_coinapi, uuid, price, size, taker_side);
	}
	
	private Trade[] parse_trades(JSONArray array) {
		Trade[] result = new Trade[array.length()];
		
		for (int i = 0; i < array.length(); i++) {
			result[i] = parse_trade(array.getJSONObject(i), null);
		}
		return result;
	}
	
	private Quote_with_trade parse_quote_with_trade(JSONObject object) {
		String symbol_id = object.getString("symbol_id");
		Instant time_exchange = Instant.parse(object.getString("time_exchange"));
		Instant time_coinapi = Instant.parse(object.getString("time_coinapi"));
		double ask_price = object.getDouble("ask_price");
		double ask_size = object.getDouble("ask_size");
		double bid_price = object.getDouble("bid_price");
		double bid_size = object.getDouble("bid_size");
		Trade last_trade = null;
		if (object.has("last_trade")) last_trade = parse_trade(object.getJSONObject("last_trade"), symbol_id);
		return new Quote_with_trade(symbol_id, time_exchange, time_coinapi, ask_price, ask_size, bid_price, bid_size, last_trade);
	}
	
	private Quote parse_quote(JSONObject object) {
		String symbol_id = object.getString("symbol_id");
		Instant time_exchange = Instant.parse(object.getString("time_exchange"));
		Instant time_coinapi = Instant.parse(object.getString("time_coinapi"));
		double ask_price = object.getDouble("ask_price");
		double ask_size = object.getDouble("ask_size");
		double bid_price = object.getDouble("bid_price");
		double bid_size = object.getDouble("bid_size");
		return new Quote(symbol_id, time_exchange, time_coinapi, ask_price, ask_size, bid_price, bid_size);
	}
	
	private Quote_with_trade[] parse_quotes_with_trade(JSONArray array) {
		Quote_with_trade[] result = new Quote_with_trade[array.length()];
		for (int i = 0; i < array.length(); i++) {
			result[i] = parse_quote_with_trade(array.getJSONObject(i));
		}
		return result;
	}
	
	private Quote[] parse_quotes(JSONArray array) {
		Quote[] result = new Quote[array.length()];
		for (int i = 0; i < array.length(); i++) {
			result[i] = parse_quote(array.getJSONObject(i));
		}
		return result;
	}
	
	private void parse_levels(ArrayList<Level> levels, JSONArray array) {
		for (int i = 0; i < array.length(); i++) {
			double price = array.getJSONObject(i).getDouble("price");
			double size = array.getJSONObject(i).getDouble("size");
			levels.add(new Level(price, size));
		}
	}
	
	private Orderbook parse_orderbook(JSONObject object) {
		String symbol_id = object.getString("symbol_id");
		Instant time_exchange = Instant.parse(object.getString("time_exchange"));
		Instant time_coinapi = Instant.parse(object.getString("time_coinapi"));
		ArrayList<Level> bids = new ArrayList<Level>();
		ArrayList<Level> asks = new ArrayList<Level>();
		if (object.has("asks")) {
			parse_levels(asks, object.getJSONArray("asks"));
		}
		if (object.has("bids")) {
			parse_levels(bids, object.getJSONArray("bids"));
		}
		return new Orderbook(symbol_id, time_exchange, time_coinapi, bids, asks);
	}
	
	private Orderbook[] parse_orderbooks(JSONArray array) {
		Orderbook[] result = new Orderbook[array.length()];
		for (int i = 0; i < array.length(); i++) {
			result[i] = parse_orderbook(array.getJSONObject(i));
		}
		return result;
	}
	
	public Trade[] trades_get_latest_data() throws IOException {
		String json = get_json("/v1/trades/latest");
		JSONArray array = new JSONArray(json);
		return parse_trades(array);
	}
	
	public Trade[] trades_get_latest_data(int limit) throws IOException {
		String json = get_json("/v1/trades/latest?limit=" + limit);
		JSONArray array = new JSONArray(json);
		return parse_trades(array);
	}
	
	public Trade[] trades_get_latest_data(String symbol_id) throws IOException {
		String json = get_json("/v1/trades/" + symbol_id + "/latest");
		JSONArray array = new JSONArray(json);
		return parse_trades(array);
	}
	
	public Trade[] trades_get_latest_data(String symbol_id, int limit) throws IOException {
		String json = get_json("/v1/trades/" + symbol_id + "/latest?limit=" + limit);
		JSONArray array = new JSONArray(json);
		return parse_trades(array);
	}
	
	public Trade[] trades_get_historical_data(String symbol_id, Instant time_start) throws IOException {
		String json = get_json("/v1/trades/" + symbol_id + "/history?time_start=" + time_start);
		JSONArray array = new JSONArray(json);
		return parse_trades(array);
	}
	
	public Trade[] trades_get_historical_data(String symbol_id, Instant time_start, int limit) throws IOException {
		String json = get_json("/v1/trades/" + symbol_id + "/history?time_start=" + time_start + "&limit=" + limit);
		JSONArray array = new JSONArray(json);
		return parse_trades(array);
	}
	
	public Trade[] trades_get_historical_data(String symbol_id, Instant time_start, Instant time_end) throws IOException {
		String json = get_json("/v1/trades/" + symbol_id + "/history?time_start=" + time_start + "&time_end=" + time_end);
		JSONArray array = new JSONArray(json);
		return parse_trades(array);
	}
	
	public Trade[] trades_get_historical_data(String symbol_id, Instant time_start, Instant time_end, int limit) throws IOException {
		String json = get_json("/v1/trades/" + symbol_id + "/history?time_start=" + time_start + "&time_end=" + time_end + "&limit=" + limit);
		JSONArray array = new JSONArray(json);
		return parse_trades(array);
	}
	
	public Quote_with_trade[] quotes_get_for_all_symbols() throws IOException {
		String json = get_json("/v1/quotes/current");
		JSONArray array = new JSONArray(json);
		return parse_quotes_with_trade(array);
	}
	
	public Quote_with_trade quotes_get_for_symbol(String symbol_id) throws IOException {
		String json = get_json("/v1/quotes/" + symbol_id + "/current");
		JSONObject object = new JSONObject(json);
		return parse_quote_with_trade(object);
	}
	
	public Quote[] quotes_get_latest_data() throws IOException {
		String json = get_json("/v1/quotes/latest");
		JSONArray array = new JSONArray(json);
		return parse_quotes(array);
	}
	
	public Quote[] quotes_get_latest_data(int limit) throws IOException {
		String json = get_json("/v1/quotes/latest?limit=" + limit);
		JSONArray array = new JSONArray(json);
		return parse_quotes(array);
	}
	
	public Quote[] quotes_get_latest_data(String symbol_id) throws IOException {
		String json = get_json("/v1/quotes/" + symbol_id + "/latest");
		JSONArray array = new JSONArray(json);
		return parse_quotes(array);
	}
	
	public Quote[] quotes_get_latest_data(String symbol_id, int limit) throws IOException {
		String json = get_json("/v1/quotes/" + symbol_id + "/latest?limit=" + limit);
		JSONArray array = new JSONArray(json);
		return parse_quotes(array);
	}
	
	public Quote[] quotes_get_historical_data(String symbol_id, Instant time_start) throws IOException {
		String json = get_json("/v1/quotes/" + symbol_id + "/history?time_start=" + time_start);
		JSONArray array = new JSONArray(json);
		return parse_quotes(array);
	}
	
	public Quote[] quotes_get_historical_data(String symbol_id, Instant time_start, int limit) throws IOException {
		String json = get_json("/v1/quotes/" + symbol_id + "/history?time_start=" + time_start + "&limit=" + limit);
		JSONArray array = new JSONArray(json);
		return parse_quotes(array);
	}
	
	public Quote[] quotes_get_historical_data(String symbol_id, Instant time_start, Instant time_end) throws IOException {
		String json = get_json("/v1/quotes/" + symbol_id + "/history?time_start=" + time_start + "&time_end=" + time_end);
		JSONArray array = new JSONArray(json);
		return parse_quotes(array);
	}
	
	public Quote[] quotes_get_historical_data(String symbol_id, Instant time_start, Instant time_end, int limit) throws IOException {
		String json = get_json("/v1/quotes/" + symbol_id + "/history?time_start=" + time_start + "&time_end=" + time_end + "&limit=" + limit);
		JSONArray array = new JSONArray(json);
		return parse_quotes(array);
	}
	
	public Orderbook[] orderbooks_get_for_all_symbols() throws IOException {
		String json = get_json("/v1/orderbooks/current");
		JSONArray array = new JSONArray(json);
		return parse_orderbooks(array);
	}
	
	public Orderbook orderbooks_get_for_symbol(String symbol_id) throws IOException {
		String json = get_json("/v1/orderbooks/" + symbol_id + "/current");
		JSONObject object = new JSONObject(json);
		return parse_orderbook(object);
	}
	
	public Orderbook[] orderbooks_get_latest_data(String symbol_id) throws IOException {
		String json = get_json("/v1/orderbooks/" + symbol_id + "/latest");
		JSONArray array = new JSONArray(json);
		return parse_orderbooks(array);
	}
	
	public Orderbook[] orderbooks_get_latest_data(String symbol_id, int limit) throws IOException {
		String json = get_json("/v1/orderbooks/" + symbol_id + "/latest?limit=" + limit);
		JSONArray array = new JSONArray(json);
		return parse_orderbooks(array);
	}
	
	public Orderbook[] orderbooks_get_historical_data(String symbol_id, Instant time_start) throws IOException {
		String json = get_json("/v1/orderbooks/" + symbol_id + "/history?time_start=" + time_start);
		JSONArray array = new JSONArray(json);
		return parse_orderbooks(array);
	}
	
	public Orderbook[] orderbooks_get_historical_data(String symbol_id, Instant time_start, int limit) throws IOException {
		String json = get_json("/v1/orderbooks/" + symbol_id + "/history?time_start=" + time_start + "&limit=" + limit);
		JSONArray array = new JSONArray(json);
		return parse_orderbooks(array);
	}
	
	public Orderbook[] orderbooks_get_historical_data(String symbol_id, Instant time_start, Instant time_end) throws IOException {
		String json = get_json("/v1/orderbooks/" + symbol_id + "/history?time_start=" + time_start + "&time_end=" + time_end);
		JSONArray array = new JSONArray(json);
		return parse_orderbooks(array);
	}
	
	public Orderbook[] orderbooks_get_historical_data(String symbol_id, Instant time_start, Instant time_end, int limit) throws IOException {
		String json = get_json("/v1/orderbooks/" + symbol_id + "/history?time_start=" + time_start + "&time_end=" + time_end + "&limit=" + limit);
		JSONArray array = new JSONArray(json);
		return parse_orderbooks(array);
	}
	
	private int[] parse_int_array(JSONArray array) {
		int[] result = new int[array.length()];
		for (int i = 0; i < array.length(); i++) {
			result[i] = array.getInt(i);
		}
		return result;
	}
	
}
