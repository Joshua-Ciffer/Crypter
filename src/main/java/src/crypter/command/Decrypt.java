package src.crypter.command;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Scanner;
import src.crypter.util.InputMode;

/**
 * Command that will decrypt text inputed from different sources.
 *
 * @author Joshua Ciffer
 * @version 03/18/2018
 */
public class Decrypt {

	/**
	 * The text that the user provides to be decrypted.
	 */
	private static String encryptedString;

	/**
	 * The decrypted form of the user's text.
	 */
	private static String decryptedString;

	/**
	 * Runs the command to gather text input, and then to decrypt it. The output will be printed to the user and saved to a file if the user chooses.
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
				encryptedString = inputString();
				break;
			}
			case FILE: {
				encryptedString = loadFile(inputPath);
				break;
			}
			default: {
				throw new IllegalArgumentException("An input mode was not specified.");
			}
		}
		decryptedString = decryptString(encryptedString);
		if (saveOutput) {
			saveOutput(outputPath);
			System.out.println("\nDecrypted output was saved to: " + outputPath);
		} else {
			System.out.println("\nDecrypted output: " + decryptedString);
		}
		System.exit(0);
	}

	/**
	 * Prompts the user to input a string to be decrypted.
	 * 
	 * @return The user's input.
	 */
	private static String inputString() {
		Scanner userInput = new Scanner(System.in);
		System.out.print("\nEnter a string to be decrypted: ");
		String inputtedString = userInput.nextLine();
		userInput.close();
		userInput = null;
		return inputtedString;
	}

	/**
	 * Loads the text from a specified file to be decrypted.
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
	 * Decrypts the text that the user has provided.
	 *
	 * @param encryptedString - The encrypted text.
	 * @return The decrypted text.
	 */
	private static String decryptString(String encryptedString) {
		return null;
	}

	/**
	 * Saves the decrypted output to a file.
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
				fileWriter.println(decryptedString);
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