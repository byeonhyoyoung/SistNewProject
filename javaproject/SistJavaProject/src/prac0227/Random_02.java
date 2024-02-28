package prac0227;

import java.util.Random;

public class Random_02 {

	public static void main(String[] args) {
		
		Random r = new Random();
		
		System.out.println("0~9사이의 난수 5개 발생");
		
		for(int i=1; i<=5; i++)
		{
			int a=r.nextInt(10);
			System.out.println(a);
		}
		
		System.out.println("========================");
		System.out.println("0~99사이의 난수 5개 발생");
		
		for(int i=1; i<=5; i++)
		{
			int a=r.nextInt(100);
			System.out.println(a);
		}

		System.out.println("========================");
		System.out.println("1~10사이의 난수 5개발생");
		
		for(int i=1; i<=5; i++)
		{
			int a=r.nextInt(10)+1; //int a=r.nextInt(11);으로 하면 안되나?
			System.out.println(a);
		}
//		nextInt(n) 메서드는 0부터 n-1 사이의 난수를 생성합니다. 
//		따라서 r.nextInt(10)은 0부터 9까지의 난수를 생성하고 여기에 1을 더하면 1부터 10까지의 난수를 생성할 수 있습니다. 
//		마찬가지로 r.nextInt(11)은 0부터 10까지의 난수를 생성합니다.
		
		
		System.out.println("========================");
		System.out.println("65~90사이의 난수 5개발생");
		
//		이 부분은 반복문입니다. 총 5번의 반복을 수행하며, 
//		각 반복에서 난수를 생성하고 이에 해당하는 문자를 출력합니다.
		for(int i=1;i<=5;i++)
		{
//			r.nextInt(26)은 0부터 25까지의 난수를 생성합니다. 
//			여기에 65를 더함으로써 65부터 90 사이의 숫자를 얻습니다. 
//			이는 ASCII 코드에서 대문자 알파벳 A부터 Z까지에 해당하는 범위입니다.
//			따라서 a에는 65부터 90 사이의 숫자가 저장됩니다.
			int a=r.nextInt(26)+65; //65~90
			System.out.println(a);
			
//			a에 저장된 숫자를 문자로 변환하여 출력합니다. 
//			(char)는 해당 숫자를 문자로 변환하는 역할을 합니다.
//			따라서 a에 저장된 숫자에 해당하는 문자가 출력됩니다. 
//			이는 대문자 알파벳 A부터 Z까지의 범위에 해당합니다.
//			System.out.println((char)a);
		}
		
		
	}
	

}
