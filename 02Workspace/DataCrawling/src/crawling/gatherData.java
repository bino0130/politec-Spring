package crawling;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class gatherData {

	public static WebDriver driver;
	public static String base_url = "https://www.naver.com";
	public static final String WEB_DRIVER_ID = "webdriver.chrome.driver";
	public static final String WEB_DRIVER_PATH = "C:\\Users\\Bino\\Downloads\\chromeDriver\\chromedriver.exe";
	
	public static void main(String[] args) {
		System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);
		driver = new ChromeDriver();
		crawl();
	}
	
	public static void crawl() {
		try {
			driver.get(base_url);
			System.out.println(driver.getPageSource());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			driver.close();
		}
	}
}