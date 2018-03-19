package src.crypter.command;

import java.util.Scanner;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.io.File;
import java.io.FileOutputStream;
import java.io.PrintStream;
import java.io.IOException;
import java.io.FileNotFoundException;
import src.crypter.util.InputMode;

/**
 * Command that will encrypt text inputed from different sources.
 *
 * @author Joshua Ciffer
 * @version 03/18/2018
 */
public class Encrypt {

	/**
	 * The text that the user provides to be encrypted.
	 */
	private static String unencryptedString;

	/**
	 * The encrypted form of the user's text.
	 */
	private static String encryptedString;

	/**
	 * Runs the command to gather text input, and then to encrypt it. The output will be printed to the user and saved to a file if the user chooses.
	 *
	 * @param inputMode - The method of text input. -string will accept input from the user, -file will input from a specified file.
	 * @param inputPath - The path of the input file. Only used if -file is passed.
	 * @param saveOutput - Determines whether or not the program's output will be saved to a file.
	 * @param outputPath - The path of the output file. Only used if -save is passed.
	 * @throws IllegalArgumentException - Thrown if an input mode was not specified.
	 */
	public static void runCommand(InputMode inputMode, String inputPath, boolean saveOutput, String outputPath) throws IllegalArgumentException {
		switch (inputMode) {
			case STRING: {
				unencryptedString = inputString();
				break;
			}
			case FILE: {
				unencryptedString = loadFile(inputPath);
				break;
			}
			default: {
				throw new IllegalArgumentException("An input mode was not specified.");
			}
		}
		encryptedString = encryptString(unencryptedString);
		if (saveOutput) {
			saveOutput(outputPath);
			System.out.println("\nEncrypted output was saved to: " + outputPath);
		} else {
			System.out.println("\nEncrypted output: " + encryptedString);
		}
		System.exit(0);
	}

	/**
	 * Prompts the user to input a string to be encrypted.
	 * 
	 * @return The user's input.
	 */
	private static String inputString() {
		Scanner userInput = new Scanner(System.in);
		System.out.print("\nEnter a string to encrypt: ");
		String inputtedString = userInput.nextLine();
		userInput.close();
		userInput = null;
		return inputtedString;
	}

	/**
	 * Loads the text from a specified file to be encrypted.
	 * 
	 * @param filePath - The path of the input file.
	 * @return The contents of the input file.
	 */
	private static String loadFile(String filePath) {
		String inputtedString = "";
		try {
			inputtedString = new String(Files.readAllBytes(Paths.get(filePath)));
		} catch (IOException e) {
			System.err.println("\nThe file you specified could not be found.");
			System.exit(2);
		}
		return inputtedString;
	}

	/**
	 * Encrypts the text the user has provided.
	 *
	 * @param unencryptedString - The unencrypted text.
	 * @return The encrypted text.
	 */
	private static String encryptString(String unencryptedString) {
		return unencryptedString;
	}

	/**
	 * Saves the encrypted output to a file.
	 *
	 * @param outputPath - The path of the output file.
	 */
	private static void saveOutput(String outputPath) {
		File file = new File(outputPath);
		try {
			file.createNewFile();
			PrintStream fileWriter = null;
			try {
				fileWriter = new PrintStream(new FileOutputStream(file));
				fileWriter.println(encryptedString);
			} catch (FileNotFoundException e) {
				System.err.println("\nThe output file could not be created.");
				System.exit(2);
			}
		} catch (IOException e) {
			System.err.println("\nThe output file could not be saved.");
			System.exit(2);
		}
	}

}