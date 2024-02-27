package prac0227;

import java.util.Scanner;

public class prac_01 {

//	static Scanner sc = new Scanner(System.in);
//	
//	public static void main(String[] args) {
//		
//		
//		quiz_1();
//		quiz_2();
//		
//	}
//
//	private static void quiz_1() {
//
//		System.out.println("양수 갯수와 음수 갯수를 구하시오 (0 입력시 종료)");
//		
//		int num;
//		int i=0, n1=0, n2=0;
//		
//		while(true) {
//			num = sc.nextInt();
//			
//			if(num==0)
//				break;
//			if(num>0) {
//				n2++;
//			}
//			else
//				n1++;
//		}
//		System.out.println("양수: "+n2);
//		System.out.println("음수: "+n1);
//		
//	}
//	
//	private static void quiz_2() {
//
//		//Q. 반복해서 점수를 입력하는데 (1~100) 0을 입력시 빠져나와 갯수와 합계와 평균을 구하시오
//		//범위에 맞지 않는 점수는 횟수에서 제외되어야 한다
//		
//		System.out.println("반복해서 점수를 입력(1~100사이/(0입력 시 종료)");
//		
//		int num, sum=0;
//		
//		while(true) {
//			num = sc.nextInt();
//			
//			if(num==0)
//				break;
//			sum+=num;
//		}
//		System.out.println("합계: "+sum);
//		
//	}
	
	
	public static void main(String[] args) {
		
//		Scanner sc = new Scanner(System.in);
//		
//		String name;
//		int cnt=0;
//		
//		while(true)
//		{
//			System.out.println("이름을 입력하세요.(종료:끝)");
//			name = sc.nextLine();
//			
//			if(name.equals("끝"))
//				break;
//			
//			if(name.startsWith("김"))
//				cnt++;
//			
//		}
//		
//		System.out.println("김씨 성을 가진 사람은 총 "+cnt+"명 입니다.");
		
		
		System.out.println();
		/*
		 * 반복적으로 나이를 입력한다 0이되면 종료
		 * 나이가 50세 이상일경우 a변수 증가
		 * 나이가 30세 이상이면 b변수 증가
		 * 그이외는 c변수 증가
		 * 
		 * 빠져나온후 출력내용
		 * 50세 이상: 3명
		 * 30세 이상: 2명
		 * 그 외: 3명
		 */
		
		Scanner sc = new Scanner(System.in);
		
		int age;
		int a=0, b=0, c=0;
		
		while(true) {
			
			System.out.println("나이를 입력해주세요.(0입력시 종료)");
			age = sc.nextInt();
			
			if(age==0)
				break;
			
			if(age>=50) {
				a++;
			}else if(age>=30) {
				b++;
			}else
				c++;
		}
		
		System.out.println("50세 이상: "+a+"명");
		System.out.println("30세 이상: "+b+"명");
		System.out.println("그 외: "+c+"명");
		
		
	}

}
