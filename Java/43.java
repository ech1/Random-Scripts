public class Largest {
	public static void main(String[] args){
		double[] numArray = {123,321,654,456,987,789}
		double largest = numArray[0];

		for(double num: numArray){
			if(largest < num)
				largest = num;
		}
		System.out.format("Largest element = %.2f", largest);
	}
}
