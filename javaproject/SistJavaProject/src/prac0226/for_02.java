package prac0226;

public class for_02 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 가로로 1~10까지 출력
		
//		for(int i=1; i<=10; i++)
//		{
//			System.out.print(i + " ");
//		}
//		System.out.println();
//		
//		//10~1까지 출력
//		
//		for(int i=10; i>=1; i--)
//		{
//			System.out.print(i+ " ");
//		}
//		System.out.println();
//		
//		//5씩 증가
//		
//		for(int i=0; i<=30; i+=5)
//		{
//			System.out.print(i + " ");
//		}
		
		
		
		System.out.println();
		//반복문안에서 합계 구하기
		
		int sum = 0;
		
		for(int i=1; i<=10; i++) {
			
			sum += i;
			
		}

		System.out.println("1~10까지의 합계는 "+sum+"입니다");
		
		
		//while문
		
		int n = 1;
		int tot = 0;
		
		while(n<=10)
		{
			tot += n;
			n++;
		}
		System.out.println("1~10까지의 합계는 "+tot+"입니다.");
		
		System.out.println("for문으로 1~10까지중 2씩증가할경우의 합계를 구하시오");
		
		int total = 0;
		for(int a=1; a<=10; a+=2)
		{
			total += a;
		}
		System.out.println("총 합계는 "+total); //1+3+5+7+9=25
	}

}
