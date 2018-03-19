package src.crypter;

/**
 * The main entry point of the crypter java code.  This will be called by Crypter.bat.
 *
 * @author Joshua
 * @version 03/18/2018
 */
public class Main {

	public static void main(String[] args) {
		System.out.println("Main.java");
		System.out.println("args length: " + args.length);
		for (int i = 0; i < args.length; i++) {
			System.out.println(args[i]);
		}
	}

}