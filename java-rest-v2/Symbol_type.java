/**
 * Defines all the elements of a symbol_type, as described in <a href= "https://docs.coinapi.io/#list-all-symbols">https://docs.coinapi.io/#list-all-symbols</a>.
 * <p>
 * This enum is multithread safe: it is stateless (except for the enumeration of values, which are immutable).
 * <p>
 * Like all java enums, this enum is Comparable and Serializable.
 * <p>
 * @see <a href="https://docs.oracle.com/javase/8/docs/technotes/guides/language/enums.html">Enum documentation</a>
 */
public enum Symbol_type {
	
	/** FX Spot. Agreement to exchange one asset for another one (e.g. Buy BTC for USD) */
	SPOT,
	
	/** Futures contract. FX Spot derivative contract where traders agree to trade fx spot at predetermined future time */
	FUTURES,
	
	/** Option contract. FX Spot derivative contract where traders agree to trade right to require buy or sell of fx spot at agreed price on exercise date */
	OPTION,
	
	/** Perpetual contract. FX Spot derivative contract where traders agree to trade fx spot continously without predetermined future delivery time **/
	PERPETUAL,
	
	/** Index. Statistical composite that measures changes in the economy or markets. **/
	INDEX;
	
}
