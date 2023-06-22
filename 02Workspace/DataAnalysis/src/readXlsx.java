import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class readXlsx {

    public static void main(String[] args) {
        try {
        	String file = "C:\\Users\\Bino\\Desktop\\2019년 음반 판매량 엑셀버전.xlsx";
            FileInputStream fis = new FileInputStream(file);
            XSSFWorkbook workbook = new XSSFWorkbook(fis);
            XSSFSheet sheet = workbook.getSheet("2019년 음반 판매량");

            List<Double> column6Values = new ArrayList<>();
            List<Double> column7Values = new ArrayList<>();
            List<Double> column8Values = new ArrayList<>();

            for (Row row : sheet) {
                Cell cell6 = row.getCell(5); // 6번째 column
                if (cell6 != null && cell6.getCellType() == CellType.NUMERIC) {
                    column6Values.add(cell6.getNumericCellValue());
                }

                Cell cell7 = row.getCell(6); // 7번째 column
                if (cell7 != null && cell7.getCellType() == CellType.NUMERIC) {
                    column7Values.add(cell7.getNumericCellValue());
                }

                Cell cell8 = row.getCell(7); // 8번째 column
                if (cell8 != null && cell8.getCellType() == CellType.NUMERIC) {
                    column8Values.add(cell8.getNumericCellValue());
                }
            }

            double column6Max = column6Values.stream().mapToDouble(Double::doubleValue).max().orElse(0.0);
            double column6Min = column6Values.stream().mapToDouble(Double::doubleValue).min().orElse(0.0);
            double column6Avg = column6Values.stream().mapToDouble(Double::doubleValue).average().orElse(0.0);

            double column7Max = column7Values.stream().mapToDouble(Double::doubleValue).max().orElse(0.0);
            double column7Min = column7Values.stream().mapToDouble(Double::doubleValue).min().orElse(0.0);
            double column7Avg = column7Values.stream().mapToDouble(Double::doubleValue).average().orElse(0.0);

            double column8Max = column8Values.stream().mapToDouble(Double::doubleValue).max().orElse(0.0);
            double column8Min = column8Values.stream().mapToDouble(Double::doubleValue).min().orElse(0.0);
            double column8Avg = column8Values.stream().mapToDouble(Double::doubleValue).average().orElse(0.0);

            System.out.println("Average Rating\n" + "Max: " + column6Max + " Min: " + column6Min + " Avg: " + column6Avg);
            System.out.println("\nNumber Of Ratings\n" + "Max: " + column7Max + " Min: " + column7Min + " Avg: " + column7Avg);
            System.out.println("\nNumber Of Reviews\n" + "Max: " + column8Max + " Min: " + column8Min + " Avg: " + column8Avg);

            workbook.close();
            fis.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IllegalStateException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}