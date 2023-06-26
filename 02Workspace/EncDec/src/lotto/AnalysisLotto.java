package lotto;

import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import com.opencsv.CSVReader;
import com.opencsv.exceptions.CsvValidationException;

public class AnalysisLotto {

	public static void main(String[] args) {
		ArrayList<Integer> first = new ArrayList<>();
		ArrayList<Integer> second = new ArrayList<>();
		ArrayList<Integer> third = new ArrayList<>();
		ArrayList<Integer> fourth = new ArrayList<>();
		ArrayList<Integer> fifth = new ArrayList<>();
		ArrayList<Integer> sixth = new ArrayList<>();

		// 파일 저장경로
		String filePath = "C:\\Users\\Bino\\Desktop\\로또.csv";

		String[] line = null;

		try (CSVReader cr = new CSVReader(new FileReader(filePath))) {
			int rowNumber = 0;
			try {
				while ((line = cr.readNext()) != null) {
					rowNumber++;

					if (rowNumber == 1) {
						continue;
					}

					// 첫번째 ~ 여섯번째 숫자 리스트에 각각 입력
					first.add(Integer.parseInt(line[0]));
					second.add(Integer.parseInt(line[1]));
					third.add(Integer.parseInt(line[2]));
					fourth.add(Integer.parseInt(line[3]));
					fifth.add(Integer.parseInt(line[4]));
					sixth.add(Integer.parseInt(line[5]));
				}
			} catch (CsvValidationException e) {
				e.printStackTrace();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}

		int percent = 0;
		for (int i = 0; i < first.size() - 1; i++) {
			ArrayList<String> preList = new ArrayList<>();
			preList.add((first.get(i).toString()));
			preList.add((second.get(i).toString()));
			preList.add((third.get(i).toString()));
			preList.add((fourth.get(i).toString()));
			preList.add((fifth.get(i).toString()));
			preList.add((sixth.get(i).toString()));
			
			ArrayList<String> nxtList = new ArrayList<>();
			nxtList.add((first.get(i + 1).toString()));
			nxtList.add((second.get(i + 1).toString()));
			nxtList.add((third.get(i + 1).toString()));
			nxtList.add((fourth.get(i + 1).toString()));
			nxtList.add((fifth.get(i + 1).toString()));
			nxtList.add((sixth.get(i + 1).toString()));
			
			for (String compareNum : preList) {
				if (nxtList.contains(compareNum)) {
					percent++;
					break;
				}
			}
		}
		
		double printPercent = (double)(percent) / (first.size() - 1) * 100;
		System.out.println("중복되지 않을 확률 : " + printPercent);
	}
}