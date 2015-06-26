package com.app;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

import com.app.ChangeRequest;
import com.app.LoginTool;

/**
 * Hello world!
 *ugjhg
 */
public class App 
{
    public static void main( String[] args )
    {
    	 WebDriver driver = new FirefoxDriver();
	        driver.get("https://testportal:7444/web/guest/home");
	        
	        
	        
	     //   if(driver.findElement(By.id("_58_login"). != null)
	        
	        //String elementval = driver.findElement(By.id("_58_login"));
	        		
	        //Log In
	        LoginTool tool = new LoginTool(driver);
	        tool.Login();
	        
	        
	        ChangeRequest CR = new ChangeRequest(driver);
	        CR.CreateCR();
	        
	        
	        //Sign Out
	        //tool.SignOut();

	     /*   Worker worker = new Worker();
	       driver.s*/
    }
}
