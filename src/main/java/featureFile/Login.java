package featureFile;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class Login {
	
	@Given("^Launch App$")
	public void launch_App() throws Throwable {
		System.out.println("Launch");
		WebDriver driver=new ChromeDriver();
		driver.get("http://www.google.com");
	}

	@When("^enter username$")
	public void enter_username() throws Throwable {
		System.out.println("Enter Username");
	}

	@When("^enter password$")
	public void enter_password() throws Throwable {
		System.out.println("Enter Password");
	}

	@Then("^login$")
	public void login() throws Throwable {
		System.out.println("Login");
	}

}
