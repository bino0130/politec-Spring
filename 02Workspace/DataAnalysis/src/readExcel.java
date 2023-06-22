import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class readExcel {

	public static void main(String[] args) {
		try {
			String file = "C:\\Users\\Bino\\Downloads\\04월 서울시 교통량 조사자료(2023).xlsx";
			FileInputStream fis = new FileInputStream(file);
			XSSFWorkbook workbook = new XSSFWorkbook(fis);
			XSSFSheet sheet = workbook.getSheet("2023년 04월");

			for (int row = 1; row < sheet.getPhysicalNumberOfRows(); row++) { // 전체 데이터를 저회하는 반복문
				XSSFRow rows = sheet.getRow(row);
				if (rows != null) { // row 한 줄을 읽는거고
					String value = "";
					int cells = rows.getPhysicalNumberOfCells(); // column 개수 파악하는 변수
					for (int column = 0; column < cells; column++) {
						XSSFCell cell = rows.getCell(column); // cell 값을 변수 cell에 대입
						if (cell != null) {
							switch (cell.getCellType()) {
								// case FORMULA:
								// value = cell.getCellFormula();
								// break;
								case NUMERIC:
									value = String.valueOf(cell.getNumericCellValue());
									break;
								case STRING:
									value = cell.getStringCellValue();
									break;
								case BLANK:
									value = String.valueOf(cell.getBooleanCellValue());
									break;
								case ERROR:
									value = String.valueOf(cell.getErrorCellValue());
									break;
								default:
									break;
							}
							System.out.print(value + " ");
						}
					}
					System.out.println();
				}
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
