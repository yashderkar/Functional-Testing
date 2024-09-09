package Function_testing;

import java.awt.AWTException;
import java.awt.Robot;
import java.awt.Toolkit;
import java.awt.datatransfer.StringSelection;
import java.awt.event.KeyEvent;
import java.io.File;
import java.io.IOException;
import org.openqa.selenium.By;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

import com.google.common.io.Files;

public class Login {

	public static void main(String[] args) throws InterruptedException, AWTException, IOException {
		System.setProperty("webdriver.chrome.driver","D:\\jar\\chromedriver-win64\\chromedriver-win64\\chromedriver.exe");
		WebDriver driver=new ChromeDriver();
		driver.get(" https://demo.dealsdray.com/");
		driver.manage().window().maximize();
		Thread.sleep(3000);
		
		WebElement us=driver.findElement(By.cssSelector("input[id=\"mui-1\"]"));
		us.click();
		us.sendKeys("prexo.mis@dealsdray.com");
		
		WebElement pass=driver.findElement(By.cssSelector("div>input[id=\"mui-2\"]"));
		pass.click();
		pass.sendKeys("prexo.mis@dealsdray.com");
		
		WebElement lg=driver.findElement(By.cssSelector("div>button[class=\"MuiButton-root MuiButton-contained MuiButton-containedPrimary MuiButton-sizeMedium MuiButton-containedSizeMedium MuiButtonBase-root  css-1usxxvf\"]"));
		lg.click();
		
		//WebElement order=driver.findElement(By.cssSelector("span[class=\"sidenavHoverShow css-1s178v5\"]"));
		Thread.sleep(500);
		WebElement or=driver.findElement(By.cssSelector("div>button[tabindex=\"0\"]"));
		or.click();
		
		Thread.sleep(500);
		WebElement or2=driver.findElement(By.partialLinkText("Orders"));
		or2.click();
		
		Thread.sleep(500);
		WebElement adb=driver.findElement(By.cssSelector("button[class=\"MuiButton-root MuiButton-contained MuiButton-containedPrimary MuiButton-sizeMedium MuiButton-containedSizeMedium MuiButtonBase-root  css-vwfva9\"]"));
		adb.click();
		
		Thread.sleep(500);
		WebElement cf=driver.findElement(By.cssSelector("div[class=\"MuiOutlinedInput-root MuiInputBase-root MuiInputBase-colorPrimary MuiInputBase-formControl MuiInputBase-sizeSmall css-uodm64\"]"));
		cf.click();
		
		Robot rb=new Robot();
		rb.delay(5000);
		
		StringSelection ss=new StringSelection("C:\\Users\\KHAMANKAR\\Downloads\\demo-data.xlsx");
		Toolkit.getDefaultToolkit().getSystemClipboard().setContents(ss,null);
		
		rb.keyPress(KeyEvent.VK_CONTROL);
		rb.keyPress(KeyEvent.VK_V);
		
		rb.keyRelease(KeyEvent.VK_CONTROL);
		rb.keyRelease(KeyEvent.VK_V);
		
		rb.keyPress(KeyEvent.VK_ENTER);
		rb.keyRelease(KeyEvent.VK_ENTER);
		
		Thread.sleep(500);
		WebElement imp=driver.findElement(By.cssSelector("button[class=\"MuiButton-root MuiButton-contained MuiButton-containedPrimary MuiButton-sizeMedium MuiButton-containedSizeMedium MuiButtonBase-root  css-6aomwy\"]"));
		imp.click();
		
		Thread.sleep(500);
		WebElement vd=driver.findElement(By.cssSelector("div>button[class=\"MuiButton-root MuiButton-contained MuiButton-containedPrimary MuiButton-sizeMedium MuiButton-containedSizeMedium MuiButtonBase-root  css-6aomwy\"]"));
		vd.click();
		
		File scl=((TakesScreenshot)driver).getScreenshotAs(OutputType.FILE);
		Files.copy(scl,new File ("C:\\Users\\KHAMANKAR\\Downloads\\scl.png"));
		
		
		driver.close();
		}}
