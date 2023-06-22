import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Transport {
    public static void main(String[] args) {
        // 경로와 파일명 설정
        String filePath = "C:\\Users\\Bino\\Desktop\\04월 서울시 교통량 조사자료(2023).csv";

        // 2차원 List 생성
        List<List<String>> trafficData = new ArrayList<>();

        try (BufferedReader br = new BufferedReader(new FileReader(filePath))) {
            String line;
            int rowNumber = 0;

            // CSV 파일 한 줄씩 읽어서 데이터 추가
            while ((line = br.readLine()) != null) {
                rowNumber++;

                // 첫 번째 줄은 헤더이므로 건너뜀
                if (rowNumber == 1) {
                    continue;
                }

                // 쉼표(,)를 기준으로 데이터 분리
                String[] columns = line.split(",");

                // 7번째부터 30번째 column 데이터 추출하여 2차원 List에 추가
                List<String> rowData = new ArrayList<>();
                for (int i = 6; i <= 29; i++) {
                    rowData.add(columns[i]);
                }
                trafficData.add(rowData);
                if (rowNumber == 61) break;
            }

            // 각 시간대(열)에 대한 최대값, 최소값, 평균값 계산
            for (int col = 0; col < trafficData.get(0).size(); col++) {
                List<Integer> values = new ArrayList<>();
                for (List<String> rowData : trafficData) {
                    values.add(Integer.parseInt(rowData.get(col)));
                }

                int max = Collections.max(values);
                int min = Collections.min(values);
                double sum = 0.0;
                for (int value : values) {
                    sum += value;
                }
                double average = sum / values.size();

                // 결과 출력
                System.out.print(col + "시의 최대값: " + max + ", ");
                System.out.print("최소값: " + min + ", ");
                System.out.println("평균값: " + average);
                System.out.println();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}