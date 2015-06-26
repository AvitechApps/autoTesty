package com.portalMain;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

import com.changeRequest.ChangeRequest;
import com.portal.LoginTool;

/**
 * Hello world!
 *lll
 */
public class App 
{
	public static final String portalURL = "https://testportal:7444/web/guest/home";
	public static final String userName = "admin";
	public static final String userPassword = "test";
	
    public static void main( String[] args )
    {
    	 WebDriver driver = new FirefoxDriver();
	        driver.get(portalURL);
	        
	        
	        
	     //   if(driver.findElement(By.id("_58_login"). != null)
	        
	        //String elementval = driver.findElement(By.id("_58_login"));
	        		
	        //Log In
	        LoginTool tool = new LoginTool(driver);
	        tool.Login();
	        
	        //
	        ChangeRequest CR = new ChangeRequest(driver);
	        CR.CreateCR();
	        
	        
	        //Sign Out
	        //tool.SignOut();

	     /*   Worker worker = new Worker();
	       driver.s*/
    }
}
