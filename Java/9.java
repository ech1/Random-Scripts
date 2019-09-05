public class SwampNumbers {
	public static void main(String[] args){
		float first = 1.20f, second = 2.45f;

		System.out.println("--Before Swap--");
		System.out.println("First num " + first);
		System.out.println("Sec num   " + second);

		float temp = first;
		first = second;
		sceond = temp;

		System.out.println("--After Swap--");
		System.out.println("First num " + first);
		System.out.println("Sec num   " + second);

}
