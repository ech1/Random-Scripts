public class Frequency {
	public static void main(String[] args){
		String str = "This nigger is retarded.";
		char ch = 'e';
		int frequency = 0;

		for(int i = 0; i < str.length(); i++){
			if(ch == str.charAt(i)){
				++frequency;
			}
		}
		System.out.println("Frequency of " + ch + " = " + frequency);
	}
}

//The frequency of "i" is : 3
