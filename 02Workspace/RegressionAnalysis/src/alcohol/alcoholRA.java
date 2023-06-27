package alcohol;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import org.apache.commons.math3.stat.regression.OLSMultipleLinearRegression;
import com.opencsv.CSVReader;
import com.opencsv.exceptions.CsvValidationException;

public class alcoholRA {

    public static int coefficientCount = 3;
    public static int lineCount = 122;
    public static String filePath = "C:\\Users\\Bino\\Downloads\\HappinessAlcoholConsumption.csv";

    public static void main(String[] args) {
        double[][] xArray = new double[lineCount][coefficientCount];
        double[] yArray = new double[lineCount];

        try (BufferedReader br = new BufferedReader(new FileReader(filePath))) {
            CSVReader csvReader = new CSVReader(br);
            String[] nextLine;
            
            try {
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
			} catch (CsvValidationException e) {
				e.printStackTrace();
			} catch (NumberFormatException e) {
				e.printStackTrace();
			}
        } catch (IOException e) {
            e.printStackTrace();
        }

        multipleRegressionTest(xArray, yArray);
    }

    public static void multipleRegressionTest(double[][] xArray, double[] yArray) {
        OLSMultipleLinearRegression multipleLinearRegression = new OLSMultipleLinearRegression();
        multipleLinearRegression.newSampleData(yArray, xArray);
        double[] coefficients = multipleLinearRegression.estimateRegressionParameters(); // 모든 계수들의 집합

        System.out.println("Intercept = " + coefficients[0]); // y(종속변수)절편
        for (int i = 1; i <= coefficientCount; i++) {
            System.out.println("coefficient" + i + " = " + coefficients[i]);
        }
        System.out.println("R square = " + multipleLinearRegression.calculateRSquared()); // 결정계수
        System.out.println("Adj R square = " + multipleLinearRegression.calculateAdjustedRSquared()); // 조정된 결정계수

        double[] significanceLevels = multipleLinearRegression.estimateRegressionParametersStandardErrors();
        System.out.println("Significance levels");
        for (int i = 1; i < significanceLevels.length; i++) {
            System.out.println("Variable " + i + ": " + significanceLevels[i]);
        }
    }
}