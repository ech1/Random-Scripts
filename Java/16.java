public class Alphabet {
	public static void main(String[] args) {
		char c = '*';
		if( (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') )
			System.out.println(c + " is in the alphabet.");
		else
			System.out.println(c + " is not in the alphabet.");
	}
}
