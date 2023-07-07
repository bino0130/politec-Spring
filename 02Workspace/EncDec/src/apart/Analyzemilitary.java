package apart;

import org.apache.commons.math4.legacy.stat.correlation.PearsonsCorrelation;
import com.opencsv.CSVReader;
import com.opencsv.exceptions.CsvValidationException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import com.opencsv.CSVWriter;

public class Analyzemilitary {
	public static void main(String[] args) {
		 // ���� ������
        String filePath = "C:\\Users\\Bino\\Downloads\\World_Army_Dataset.csv";
        
        ArrayList<String> country = new ArrayList<String>();
        ArrayList<Double> milPower = new ArrayList<Double>();
        ArrayList<Double> population = new ArrayList<Double>();
        
        String[] line = null;
        
        try (CSVReader cr = new CSVReader(new FileReader(filePath))) {
        	int rowNumber = 0;
        	try {
        		while ((line = cr.readNext()) != null) {
        			rowNumber++;
        			
        			if (rowNumber == 1) continue;
        			
        			country.add(line[1]);
        			milPower.add(Double.parseDouble(line[5]));
        			population.add(Double.parseDouble(line[6]));
        		}
        	} catch (CsvValidationException e) {
        		e.printStackTrace();
        	}
        	
        } catch (IOException e) {
        	e.printStackTrace();
        }
        
        double[] milArr = listToArray(milPower);
        double[] popArr = listToArray(population);
        
        double correlation = new PearsonsCorrelation().correlation(milArr,popArr);
        System.out.println("������ : " + correlation);
        
     // ������ ����� ������ ���� ���
        String resultFilePath = "C:\\Users\\Bino\\Downloads\\correlation_result.csv";

        // CSVWriter ��ü ����
        try (CSVWriter cw = new CSVWriter(new FileWriter(resultFilePath))) {
            // ��� �߰�
            String[] header = {"Correlation"};
            cw.writeNext(header);

            // ��� ���� ���ڿ��� ��ȯ�Ͽ� �ۼ�
            String[] data = {String.valueOf(correlation)};
            cw.writeNext(data);
            System.out.println("�ۼ��Ϸ�");
        } catch (IOException e) {
            e.printStackTrace();
        }
        
	}
	
	public static double[] listToArray(List<Double> list) {
        double[] array = new double[list.size()];
        for (int i = 0; i < list.size(); i++) {
            array[i] = list.get(i);
        }
        return array;
    }
}