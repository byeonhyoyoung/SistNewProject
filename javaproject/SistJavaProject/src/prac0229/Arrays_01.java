package prac0229;

public class Arrays_01 {

	public static void main(String[] args) {
		//배열
		
		int [] arr;
		arr = new int[3];
		//배열에 값 넣기
		arr[0] = 10;
		arr[1] = 20;
		arr[2] = 30;
		
		System.out.println("배열의 길이: "+arr.length);

		
		for(int i=0; i<arr.length; i++)
		{
			System.out.println(arr[i]);
		}
	}

}
