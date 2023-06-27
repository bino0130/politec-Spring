package ra;

import org.apache.commons.math3.stat.regression.SimpleRegression;

public class RA {

	public static void main(String[] args) {
		SimpleRegression simpleRegression = new SimpleRegression(true);
		simpleRegression.addData(new double[][] { 
			{ 12, 20 }, 
			{ 23, 30 }, 
			{ 32, 40 }, 
			{ 43, 50 }, 
			{ 52, 60 } });
		double N = 50.0;
		
		// getIntercept() :  절편 값 리턴
		System.out.println("Intercept = " + simpleRegression.getIntercept());
		
		// predict() : 새로운 x값에 대한 y값 예측
		System.out.println("Prediction for " + N + "= " + simpleRegression.predict(N));
		
		// getSquare() : R제곱 값 리턴
		System.out.println("R square " + simpleRegression.getRSquare());
		
		// getSignificance() : 유의 수준 리턴
		System.out.println("Significance Level " + simpleRegression.getSignificance());
	}
	
}