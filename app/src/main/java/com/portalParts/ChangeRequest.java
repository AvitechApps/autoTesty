package com.portalParts;

import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class ChangeRequest {

	private WebDriver driver;
	
	public ChangeRequest(WebDriver driver){
		this.driver = driver;
	}
	public void CreateCR(){
		//WebElement leftPanel = driver.findElement(By.className("portlet-body"));
		
		driver.findElement(By.cssSelector("a[href*='/group/wizardportal/change-request']")).click();
		driver.findElement(By.cssSelector("div[title*='Create Change Request']")).click();
		
	}
	
	
}
