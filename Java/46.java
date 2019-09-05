public class MultiplyMatrices{
	public static void main(String[] args){
		int r1 = 2, c1 = 3;
		int r2 = 3, c2 = 2;
		int[][] firstM  = { {3,-2,5},	     {3,0,4} };
		int[][] secondM = { {2,3},    {-9,0},   {0,4} };
		int[][] multM   = multiplyMatrices(firstM, secondM, r1, c1, c2);
		display(multM);
	}
	public static int[][] multiplyMatrices(int[][] firstM, int[][] secondM, int r1, int c1, int c2){
		int[][] product = new int[r1][c2];
		for(int i = 0; i < r1; i++){
			for(j = 0; j < c2; j++){
				for(int k = 0; k < c1; k++){
					product[i][j] += firstM[i][k] * secondM[k][j];
				}
			}
		}
		return product;
	}
	public static void display(int[][] product){
		System.out.println("Product of 2 mamtrices is :");
		for(int[] row: product){
			for(int column : row){
				System.out.print(column + "    ");
			}
			System.out.println();
		}
	}
}
