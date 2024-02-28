package prac0228;

import java.util.Scanner;

public class RandomSu_01 {

	public static void main(String[] args) {
		// 1~10 사이의 랜덤수를 발생시켜 그 숫자 맞추기
		
		Scanner sc = new Scanner(System.in);
		
		int rnd = (int)(Math.random()*10)+1; //(Math.random():난수를 생성하는 함수
		/*
		Math.random()은 자바에서 제공하는 Math 클래스의 정적 메서드 중 하나입니다. 
		이 메서드는 0 이상 1 미만의 임의의 double 형식 값을 반환합니다. 
		이 값은 난수를 생성하는 데 사용될 수 있습니다. 
		Math.random()은 난수를 직접적으로 의미하는 것이 아니라, 
		난수를 생성하는 메서드를 호출하는 것입니다. 
		이 메서드를 호출하면 0 이상 1 미만의 값을 얻게 되며, 
		이를 적절히 가공하여 필요한 범위의 난수를 얻을 수 있습니다.
		Math.random() 메서드는 0 이상 1 미만의 소수를 반환합니다. 
		그러나 많은 경우에 난수를 정수형으로 사용해야 하므로, 
		(int)를 사용하여 소수 부분을 제거하고 정수형으로 변환합니다.
		*/
		
		int su;
		int cnt = 0;
		
		
		/* while(true)는 사용자가 맞추기를 성공할 때까지 프로그램이 종료되지 않고 
		 * 계속해서 사용자로부터 입력을 받고, 그에 따른 처리를 하기 위해 사용됩니다. 
		 * 사용자가 맞추면 break;문을 통해 무한루프를 탈출하고 프로그램이 종료됩니다.
		 * 이처럼 무한루프는 특정 상황에 따라 반복이 필요한 경우에 유용하게 사용됩니다. 
		 * 종료 조건이 명확하게 주어졌을 때, 이를 만족할 때까지 반복하는 데에 활용됩니다. */
		while(true)
		{
			cnt++;
			System.out.print(cnt+"회: ");
			su = sc.nextInt();
			
			if(su>rnd)
				System.out.println(su+"보다 작습니다.");
			else if(su<rnd)
				System.out.println(su+"보다 큽니다.");
			else
			{
				System.out.println("맞았습니다. 정답은"+rnd+" 입니다");
				break;
			}
		}

			System.out.println("종료되었습니다.");
	}

}
