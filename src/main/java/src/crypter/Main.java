package src.crypter;

/**
 * The main entry point of the crypter java code. This will be called by Crypter.bat.
 *
 * @author Joshua
 * @version 03/18/2018
 */
final class Main {

	private static String command;

	private static String inputMode;

	private static String inputPath;

	private static boolean saveOutput;

	private static String outputPath;

	public static void main(String[] args) {
		System.out.println("Main.java");
		System.out.println("args length: " + args.length);
		for (int i = 0; i < args.length; i++) {
			System.out.println(args[i]);
		}
		parseCommandLineArguments(args);
	}

	private static void parseCommandLineArguments(String[] args) throws IllegalArgumentException {
		if ((command.equals("encrypt") || command.equals("decrypt")) && (inputMode.equals("string") || inputMode.equals("file"))) {
			command = args[0];
			inputMode = args[1];
			switch (inputMode.toLowerCase()) {
				case "string": {
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
						default: {
							throw new IllegalArgumentException("Illegal arguments.");
						}

					}
					break;
				}
				case "file": {
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
						default: {
							throw new IllegalArgumentException("Invalid arguments.");
						}
					}
					break;
				}
				default: {
					throw new IllegalArgumentException("Invalid arguments.");
				}
			}
		} else {
			throw new IllegalArgumentException("Invalid arguments.");
		}

	}

}