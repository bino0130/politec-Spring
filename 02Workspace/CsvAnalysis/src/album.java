import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import com.opencsv.CSVReader;
import com.opencsv.exceptions.CsvValidationException;

public class album {
    public static void main(String[] args) {
        // 경로와 파일명 설정
        String filePath = "C:\\Users\\Bino\\Desktop\\2019년 음반 판매량.csv";

        // 2차원 List 생성
        List<List<String>> trafficData = new ArrayList<>();

        try (CSVReader cr = new CSVReader(new FileReader(filePath))) {
            String[] line;
            int rowNumber = 0;

            // CSV 파일 한 줄씩 읽어서 데이터 추가
            try {
                while ((line = cr.readNext()) != null) {
                    rowNumber++;

                    // 첫 번째 줄은 헤더이므로 건너뜀
                    if (rowNumber == 1) {
                        continue;
                    }

                    // 5번째부터 7번째 column 데이터 추출하여 2차원 List에 추가
                    List<String> rowData = new ArrayList<>();
                    for (int i = 5; i < 8; i++) {
                        String data = line[i].replace(",", ""); // 쉼표 제거
                        rowData.add(data);
                    }
                    trafficData.add(rowData);
                }
            } catch (CsvValidationException e) {
                e.printStackTrace();
            }

            // 각 열에 대한 최대값, 최소값, 평균값 계산
            for (int col = 0; col < trafficData.get(0).size(); col++) {
                List<Double> values = new ArrayList<>();
                for (List<String> rowData : trafficData) {
                	String valueStr = rowData.get(col);
                    double value = Double.parseDouble(valueStr);
                    values.add(value);
                }

                double max = Collections.max(values);
                double min = Collections.min(values);
                double sum = 0.0;
                for (double value : values) {
                    sum += value;
                }
                double average = sum / values.size();

                if (col == 0) {
                    // 결과 출력
                    System.out.print("Average Rating\n" + "max : " + max + ", ");
                    System.out.print("min : " + min + ", ");
                    System.out.println("avg : " + average);
                } else if (col == 1) {
                    // 결과 출력
                    System.out.print("\nNumber of Ratings\n" + "max : " + max + ", ");
                    System.out.print("min : " + min + ", ");
                    System.out.println("avg : " + average);
                } else {
                    // 결과 출력
                    System.out.print("\nNumber Of Reviews\n" + "max : " + max + ", ");
                    System.out.print("min : " + min + ", ");
                    System.out.println("avg : " + average);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}