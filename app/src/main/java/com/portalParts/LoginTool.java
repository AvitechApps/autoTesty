package com.portalParts;

import org.openqa.selenium.*;

import com.portalParts.app.App;

public class LoginTool {
	private WebDriver driver;
	
	public LoginTool(WebDriver driver){
		this.driver = driver;
	}

	public void Login(){
		    driver.findElement(By.id("_58_login")).sendKeys(App.userName);
	        driver.findElement(By.id("_58_password")).sendKeys(App.userPassword);
	        driver.findElement(By.className("aui-button-input-submit")).click();
	}
	public void Logout(){
		driver.findElement(By.className("sign-out")).click();
	}
}
