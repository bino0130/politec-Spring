import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;

import com.opencsv.CSVReader;
import com.opencsv.CSVWriter;

public class AnalysisOne {

	public static void main(String[] args) {
		String readFileName = "C:\\Users\\Bino\\Desktop\\04월 서울시 교통량 조사자료(2023).csv";
		String writeFileName = "C:\\Users\\Bino\\Desktop\\test2.csv";
		
		int[][] array = new int[24][60];
		int cnt = 0;
		
		CSVReader csvReader;
		try {
			csvReader = new CSVReader(new InputStreamReader(new FileInputStream(readFileName), "CP949"));
			String[] nextLine;
			while ((nextLine = csvReader.readNext()) != null) {
				System.out.println(nextLine.length + " : " + String.join("|", nextLine));
				if(cnt==10) break;
				cnt++;
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		/*try {
			CSVWriter cw = new CSVWriter(new FileWriter(writeFileName));
			String[] data = {"abc", "def", "ghi"};
			cw.writeNext(data);
			cw.close();
		} catch (IOException e) {
			e.printStackTrace();
		}*/
	}

}