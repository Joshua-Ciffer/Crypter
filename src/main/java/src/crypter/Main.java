package src.crypter;

import src.crypter.command.Encrypt;
import src.crypter.command.Decrypt;
import src.crypter.util.Command;
import src.crypter.util.InputMode;
import static src.crypter.util.Command.ENCRYPT;
import static src.crypter.util.Command.DECRYPT;
import static src.crypter.util.InputMode.STRING;
import static src.crypter.util.InputMode.FILE;

/**
 * The main entry point of the crypter java code. This will be called by Crypter.bat.
 *
 * @author Joshua Ciffer
 * @version 03/18/2018
 */
class Main {

	/**
	 * The crypter command to run.
	 */
	private static Command command;

	/**
	 * The method of text input. -string will accept input from the user, -file will input from a specified file.
	 */
	private static InputMode inputMode;

	/**
	 * The path of the input file. Only used if -file is passed.
	 */
	private static String inputPath;

	/**
	 * Determines whether or not the program's output will be saved to a file.
	 */
	private static boolean saveOutput;

	/**
	 * The path of the output file. Only used if -save is passed.
	 */
	private static String outputPath;

	/**
	 * Main entry point of the encryption/decryption code.
	 *
	 * @param args - Command line arguments.
	 */
	public static void main(String[] args) {
		try {
			parseCommandLineArguments(args);
			callCommand(command);
		} catch (IllegalArgumentException e) {
			System.err.println("\n" + e);
			System.exit(1);
		}
	}

	/**
	 * Sets program flags and variables based off of what arguments are passed from the parent batch script.
	 * 
	 * @param args - Command line arguments.
	 * @throws IllegalArgumentException - Thrown if any of the command line arguments are invalid.
	 */
	private static void parseCommandLineArguments(String[] args) throws IllegalArgumentException {
		command = Command.parseCommand(args[0]);
		if (!(command == ENCRYPT) && !(command == DECRYPT)) {
			throw new IllegalArgumentException("The command you entered is not valid.  Please refer to the command usage.");
		}
		inputMode = InputMode.parseInputMode(args[1]);
		if (!(inputMode == STRING) && !(inputMode == FILE)) {
			throw new IllegalArgumentException("Incorrect usage of options.  Please refer to the command usage.");
		}
		switch (inputMode) {
			case STRING: {
				saveOutput = Boolean.getBoolean(args[2]);
				switch (Boolean.toString(saveOutput)) {
					case "true": {
						outputPath = args[3];
						break;
					}
					case "false": {
						outputPath = null;
						break;
					}
				}
				break;
			}
			case FILE: {
				inputPath = args[2];
				saveOutput = Boolean.getBoolean(args[3]);
				switch (Boolean.toString(saveOutput)) {
					case "true": {
						outputPath = args[4];
						break;
					}
					case "false": {
						outputPath = null;
						break;
					}
				}
				break;
			}
		}
	}

	/**
	 * Calls the command class that was called by the crypter batch file.
	 *
	 * @param command - The command to call.
	 * @throws IllegalArgumentException - Thrown if a command was not specified.
	 */
	private static void callCommand(Command command) throws IllegalArgumentException {
		switch (command) {
			case ENCRYPT: {
				Encrypt.runCommand(inputMode, inputPath, saveOutput, outputPath);
				break;
			}
			case DECRYPT: {
				Decrypt.runCommand(inputMode, inputPath, saveOutput, outputPath);
				break;
			}
			default: {
				throw new IllegalArgumentException("A command was never specified to run.");
			}
		}
	}

}