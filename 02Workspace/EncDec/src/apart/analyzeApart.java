package apart;

import org.apache.commons.math4.legacy.stat.correlation.PearsonsCorrelation;
import com.opencsv.CSVReader;
import com.opencsv.exceptions.CsvValidationException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class analyzeApart {

	public static void main(String[] args) {
//		double[] x = {1,2,3,4,5};
//		double[] y = {10,20,30,40,50};
//		double[] y2 = {-10, -20, -30, -40, -50};
//		
//		double correlation = new PearsonsCorrelation().correlation(y,x);
//		System.out.println(correlation);
//		
//		double correlation2 = new PearsonsCorrelation().correlation(y2, x);
//		System.out.println(correlation2);
		
		// column값들을 ArrayList에 저장
		ArrayList<Double> nationWide = new ArrayList<>(), sudoguon = new ArrayList<>(), 
				seoul = new ArrayList<>(), gukgoThree = new ArrayList<>(),
			    gukgoFive = new ArrayList<>(), gukgoTen = new ArrayList<>(), 
			    hoisaThree = new ArrayList<>(), cd91 = new ArrayList<>(), 
			    callRate = new ArrayList<>();
		ArrayList<String> date = new ArrayList<>();
		
		 // 파일 저장경로
        String filePath = "C:\\Users\\Bino\\Desktop\\아파트 거래지수, 금리.csv";

        String[] line = null;
        
        try (CSVReader cr = new CSVReader(new FileReader(filePath))) {
        	int rowNumber = 0;
        	try {
				while ((line = cr.readNext()) != null ) {
					rowNumber++;
					
					if (rowNumber == 1) {
						continue;
					}
					
					// 誘몃━ �꽑�뼵�빐�몦 ArrayList�뿉 媛� column蹂� 媛� �엯�젰
					nationWide.add(Double.parseDouble(line[0]));
					sudoguon.add(Double.parseDouble(line[1]));
					seoul.add(Double.parseDouble(line[2]));
					date.add(line[3]);
					gukgoThree.add(Double.parseDouble(line[4]));
					gukgoFive.add(Double.parseDouble(line[5]));
					gukgoTen.add(Double.parseDouble(line[6]));
					hoisaThree.add(Double.parseDouble(line[7]));
					cd91.add(Double.parseDouble(line[8]));
					callRate.add(Double.parseDouble(line[9]));
					
				}
			} catch (CsvValidationException e) {
				e.printStackTrace();
			}
        } catch (IOException e) {
        	e.printStackTrace();
        }
        
        double[] a = listToArray(nationWide);
		double[] b = listToArray(sudoguon);
		double[] c = listToArray(seoul);
		double[] d = listToArray(gukgoThree);
		double[] e = listToArray(gukgoFive);
		double[] f = listToArray(gukgoTen);
		double[] g = listToArray(hoisaThree);
		double[] h = listToArray(cd91);
		double[] i = listToArray(callRate);
		
		// 1.2010~2023
		double correlation = new PearsonsCorrelation().correlation(a,b);
		System.out.println("2010년 ~ 2023년 상관계수 : " + correlation);
		
		// 2.2013~2021 (201301월 인덱스 번호 : 36, 202112월 인덱스 번호 : 143)
		double[] aa = new double[108];
		double[] bb = new double[108];
		double[] cc = new double[108];
		double[] dd = new double[108];
		double[] ee = new double[108];
		double[] ff = new double[108];
		double[] gg = new double[108];
		double[] hh = new double[108];
		double[] ii = new double[108];
		
		System.arraycopy(a, 36, aa, 0, 108);
		System.arraycopy(b, 36, bb, 0, 108);
		System.arraycopy(c, 36, cc, 0, 108);
		System.arraycopy(d, 36, dd, 0, 108);
		System.arraycopy(e, 36, ee, 0, 108);
		System.arraycopy(f, 36, ff, 0, 108);
		System.arraycopy(g, 36, gg, 0, 108);
		System.arraycopy(h, 36, hh, 0, 108);
		System.arraycopy(i, 36, ii, 0, 108);
		
		double correlation2 = new PearsonsCorrelation().correlation(aa, bb);
		System.out.println("2013년 ~ 2021년 상관계수 : " + correlation2);
		
		// 3.2022~2023 (202201월 인덱스 번호 : 144, 202304월 인덱스 번호 : 159) 
		double[] aaa = new double[16];
		double[] bbb = new double[16];
		double[] ccc = new double[16];
		double[] ddd = new double[16];
		double[] eee = new double[16];
		double[] fff = new double[16];
		double[] ggg = new double[16];
		double[] hhh = new double[16];
		double[] iii = new double[16];
		
		System.arraycopy(a, 144, aaa, 0, 16);
		System.arraycopy(b, 144, bbb, 0, 16);
		System.arraycopy(c, 144, ccc, 0, 16);
		System.arraycopy(d, 144, ddd, 0, 16);
		System.arraycopy(e, 144, eee, 0, 16);
		System.arraycopy(f, 144, fff, 0, 16);
		System.arraycopy(g, 144, ggg, 0, 16);
		System.arraycopy(h, 144, hhh, 0, 16);
		System.arraycopy(i, 144, iii, 0, 16);
		
		double correlation3 = new PearsonsCorrelation().correlation(aaa, bbb);
		System.out.println("2022년 ~ 2023년 상관계수 : " + correlation3);
	}
	
	public static double[] listToArray(List<Double> list) {
        double[] array = new double[list.size()];
        for (int i = 0; i < list.size(); i++) {
            array[i] = list.get(i);
        }
        return array;
    }

}