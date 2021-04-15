package io.coinapi.rest;

/**
 * Defines all the elements of a Period identifier, as described in <a href= "https://docs.coinapi.io/#list-all-periods">https://docs.coinapi.io/#list-all-periods</a>.
 * <p>
 * This enum is multithread safe: it is stateless (except for the enumeration of values, which are immutable).
 * <p>
 * Like all java enums, this enum is Comparable and Serializable.
 * <p>
 * @see <a href="https://docs.oracle.com/javase/8/docs/technotes/guides/language/enums.html">Enum documentation</a>
 */
public enum Period_identifier {
	
	_1SEC,
	_2SEC,
	_3SEC,
	_4SEC,
	_5SEC,
	_6SEC,
	_10SEC,
	_15SEC,
	_20SEC,
	_30SEC,
	_1MIN,
	_2MIN,
	_3MIN,
	_4MIN,
	_5MIN,
	_6MIN,
	_10MIN,
	_15MIN,
	_20MIN,
	_30MIN,
	_1HRS,
	_2HRS,
	_3HRS,
	_4HRS,
	_6HRS,
	_8HRS,
	_12HRS,
	_1DAY,
	_2DAY,
	_3DAY,
	_5DAY,
	_7DAY,
	_10DAY,
	_1MTH,
	_2MTH,
	_3MTH,
	_4MTH,
	_6MTH,
	_1YRS,
	_2YRS,
	_3YRS,
	_4YRS,
	_5YRS;
	
	// defensive code: check that every enum identifier above starts with an underscore:
	//	--failure to do so means that the coinapiValue method below is broken
	static {
		for (Period_identifier period_identifier : values()) {
			if (!period_identifier.name().startsWith("_"))
				throw new IllegalStateException("enum element " + period_identifier.name() + " fails to start with an underscore ('_')");
		}
	}
	
	/**
	 * Similar to the builtin Java enum method {@link #valueOf(String) valueOf},
	 * except that arg s must be the actual period ID value that coinapi uses.
	 * In other words, s must start with a digit, not an underscore ('_') char.
	 * <p>
	 * @throws IllegalArgumentException if s does not equal a supported period ID value
	 */
	public static Period_identifier parse(String s) throws IllegalArgumentException {
		for (Period_identifier pi : values()) {
			if (pi.coinapiValue().equals(s)) return pi;
		}
		throw new IllegalArgumentException("s = " + s + " is an unsupported value");
	}
	
	@Override public String toString() {
		return coinapiValue();
	}
	
	/**
	 * Returns the actual period ID value that coinapi uses for this element.
	 * <p>
	 * The names of the enum elements above, unfortunately, cannot exactly equal their coinapi values because Java identifiers may not start with a digit.
	 * That is why all the enum elements above start with an underscore ('_').
	 * So, this method returns the element identifier's characters after the first char; in effect, it drops the initial underscore char.
	 */
	private String coinapiValue() {
		return name().substring(1);
	}
	// If top performance is needed, this method should be replaced with a private final String field that caches the result that this method calculates each time.
	
}
