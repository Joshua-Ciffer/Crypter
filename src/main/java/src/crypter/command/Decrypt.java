package src.crypter.command;
import java.util.Scanner;
import src.crypter.util.InputMode;

/**
 * 
 *
 * @author Joshua Ciffer
 * @version 03/18/2018
 */
public class Decrypt {

	private static String encryptedString;
	
	private static String decryptedString;
	
	public static void runCommand(InputMode inputMode, String inputPath, boolean saveOutput, String outputPath) {
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
			
		} else {
			System.out.println("Decrypted output: " + decryptedString);
		}
	}

	private static String inputString() {
		Scanner userInput = new Scanner(System.in);
		System.out.print("Enter a string to decrypt: ");
		String inputtedString = userInput.nextLine();
		userInput.close();
		userInput = null;
		return inputtedString;
	}
	
	private static String loadFile(String filePath) {
		return null;
	}
	
	private static String decryptString(String encryptedString) {
		return null;
	}
	
}