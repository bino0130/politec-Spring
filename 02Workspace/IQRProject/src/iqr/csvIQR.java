package iqr;

import java.io.FileInputStream;
import java.io.InputStreamReader;

import org.apache.commons.math3.distribution.TDistribution;
import org.apache.commons.math3.stat.regression.OLSMultipleLinearRegression;

import com.opencsv.CSVReader;

public class csvIQR {

   private static int coefficientCount = 3;
   private static int lineCount = 122;
   private static double significanceLevel = 0.05; // 유의 수준 설정
   public static String filePath = "C:\\Users\\Bino\\Downloads\\HappinessAlcoholConsumption.csv";
    
   public static void main(String[] args) {
      CSVReader csvReader;
      double[][] xArray = new double[lineCount][coefficientCount];
      double[] yArray = new double[lineCount];

      try {
         csvReader = new CSVReader(new InputStreamReader(new FileInputStream(filePath), "CP949"));

         String[] nextLine;
         if ((nextLine = csvReader.readNext()) == null) {
            System.out.println("파일을 찾지 못 했습니다.");
         }
         

         // 파일 읽어서 필요한 값 구하기
         int count = 0;
         while ((nextLine = csvReader.readNext()) != null) {

            for (int i = 0; i < coefficientCount; i++) {
               xArray[count][i] = Double.parseDouble(nextLine[i + 4]);
            }
            yArray[count] = Double.parseDouble(nextLine[3]);

            count++;
         }
         csvReader.close();
      } catch (Exception e) {
         e.printStackTrace();
      }

      // IQR을 사용하여 아웃라이어 제거
      double[] filteredYArray = removeOutliers(yArray, xArray);

      multipleRegressionTest(xArray, filteredYArray);
   }

   public static void multipleRegressionTest(double[][] xArray, double[] yArray) {
      OLSMultipleLinearRegression multipleLinearRegression = new OLSMultipleLinearRegression();
      multipleLinearRegression.newSampleData(yArray, xArray);
      double[] coefficients = multipleLinearRegression.estimateRegressionParameters(); // 모든 계수들의 집합

      System.out.println("1.계수");
      System.out.println(" y 절편 : " + coefficients[0]); // y(종속변수)절편
      System.out.println(" HDI : " + coefficients[1]);
      System.out.println(" GDP : " + coefficients[2]);
      System.out.println(" Beer : " + coefficients[3]);
      System.out.println("\n2.결정계수 : " + multipleLinearRegression.calculateRSquared()); // 결정계수
      System.out.println("\n3.조정된 결정계수 : " + multipleLinearRegression.calculateAdjustedRSquared()); // 조정된 결정계수

      double[] standardErrors = multipleLinearRegression.estimateRegressionParametersStandardErrors();   // 표준오차
      System.out.println("\n4.표준오차");
      System.out.println(" y 절편 : " + standardErrors[0]);
      System.out.println(" HDI : " + standardErrors[1]);
      System.out.println(" GDP : " + standardErrors[2]);
      System.out.println(" Beer : " + standardErrors[3]);
      
      
       // t-통계량과 유의 수준을 이용한 유의성 계산
        TDistribution tDistribution = new TDistribution(xArray.length - xArray[0].length);
        double[] tValues = new double[standardErrors.length];
        double[] pValues = new double[standardErrors.length];
        for (int i = 0; i < standardErrors.length; i++) {
            tValues[i] = multipleLinearRegression.estimateRegressionParameters()[i] / standardErrors[i];
            pValues[i] = 2 * (1 - tDistribution.cumulativeProbability(Math.abs(tValues[i])));
        }
        
      System.out.println("\n5.t 통계량");
      System.out.println(" y 절편 : " + tValues[0]);
      System.out.println(" HDI : " + tValues[1]);
      System.out.println(" GDP : " + tValues[2]);
      System.out.println(" Beer : " + tValues[3]);

      System.out.println("\n6.P-value ");
      System.out.println(" y 절편 " + pValues[0]);
      System.out.println(" HDI : " + pValues[1]);
      System.out.println(" GDP : " + pValues[2]);
      System.out.println(" Beer : " + pValues[3]);
      
        // 유의 수준과 비교하여 회귀 계수의 유의성 판단
      System.out.println("\n7. 유의 수준");
        for (int i = 0; i < pValues.length; i++) {
            if (pValues[i] < significanceLevel) {
                System.out.println("Regression coefficient " + (i + 1) + " is significant.");
            } else {
                System.out.println("Regression coefficient " + (i + 1) + " is not significant.");
            }
        }
   }

   public static double[] removeOutliers(double[] yArray, double[][] xArray) {
      double[] filteredYArray = yArray.clone();
      double[][] filteredXArray = xArray.clone();

      double Q1 = calculatePercentile(filteredYArray, 0.25);
      double Q3 = calculatePercentile(filteredYArray, 0.75);
      double IQR = Q3 - Q1;
      double upperThreshold = Q3 + 1.5 * IQR;
      double lowerThreshold = Q1 - 1.5 * IQR;

      int newCount = 0;
      for (int i = 0; i < filteredYArray.length; i++) {
         if (filteredYArray[i] >= lowerThreshold && filteredYArray[i] <= upperThreshold) {
            filteredYArray[newCount] = filteredYArray[i];
            filteredXArray[newCount] = filteredXArray[i];
            newCount++;
         }
      }

      // 필터링된 배열 반환
      return java.util.Arrays.copyOf(filteredYArray, newCount);
   }

   public static double calculatePercentile(double[] array, double percentile) {
      java.util.Arrays.sort(array);
      int index = (int) (array.length * percentile);
      return array[index];
   }
}