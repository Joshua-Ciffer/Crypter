package src.crypter.util;

/**
 * Values for different methods of text input.
 *
 * @author Joshua Ciffer
 * @version 03/18/2018
 */
public enum InputMode {

	/**
	 * Inputs text from a string.
	 */
	STRING,

	/**
	 * Inputs text from a file.
	 */
	FILE;

	/**
	 * Returns an InputMode enum value for the name of the input mode.
	 *
	 * @param inputMode - The name of the input mode.
	 * @return Enum value for that input mode.
	 * @throws IllegalArgumentException - Thrown if an invalid name is entered.
	 */
	public static InputMode parseInputMode(String inputMode) {
		switch (inputMode.toLowerCase()) {
			case "string": {
				return STRING;
			}
			case "file": {
				return FILE;
			}
			default: {
				throw new IllegalArgumentException("Invalid input mode.");
			}
		}
	}

	/**
	 * Returns the name of the input mode in a string.
	 *
	 * @param inputMode - The input mode to convert to a string.
	 * @return Name of the input mode.
	 * @throws IllegalArgumentException - Thrown if an invalid input mode is entered.
	 */
	public static String toString(InputMode inputMode) throws IllegalArgumentException {
		switch (inputMode) {
			case STRING: {
				return "string";
			}
			case FILE: {
				return "file";
			}
			default: {
				throw new IllegalArgumentException("Invalid input mode.");
			}
		}
	}

}