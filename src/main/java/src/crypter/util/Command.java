package src.crypter.util;

/**
 * Values for different Commands that can be executed.
 *
 * @author Joshua Ciffer
 * @version 03/18/2018
 */
public enum Command {

	/**
	 * Command to encrypt text.
	 */
	ENCRYPT,

	/**
	 * Command to decrypt text.
	 */
	DECRYPT;

	/**
	 * Returns a Command enum value for the name of the command.
	 *
	 * @param command - The name of the command.
	 * @return Enum value for that command.
	 * @throws IllegalArgumentException - Thrown if an invalid name is entered.
	 */
	public static Command parseCommand(String command) throws IllegalArgumentException {
		switch (command.toLowerCase()) {
			case "encrypt": {
				return ENCRYPT;
			}
			case "decrypt": {
				return DECRYPT;
			}
			default: {
				throw new IllegalArgumentException("Invalid command.");
			}
		}
	}

	/**
	 * Returns the name of the command in a string.
	 * 
	 * @param command - The command to convert to a string.
	 * @return Name of the command.
	 * @throws IllegalArgumentException - Thrown if an invalid command is entered.
	 */
	public static String toString(Command command) throws IllegalArgumentException {
		switch (command) {
			case ENCRYPT: {
				return "encrypt";
			}
			case DECRYPT: {
				return "decrypt";
			}
			default: {
				throw new IllegalArgumentException("Invalid command.");
			}
		}
	}

}