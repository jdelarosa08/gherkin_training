### Gherkin practice, Example A 
# Note:   Adv = advertising

Feature: Verify Updates style of the Home page.
 As a Tester, 
 I want to verify the style of the Home and register page when I access. 
 for validating the requirements of the customer.

    Background:
        Given I am on the homepage with Chrome.
        And have a <Dimensions>.
        Examples:
        |Dimensions |
        |1920×1080  |
        |1366×768   |	
        |1440×900   |	
        |1536×864   |	
        |2560×1440  |	
        |1680×1050  |	
        |1280×720   |	
        |1280×800   |	
        |360×640    |	
        |1600×900   |	


    Scenario: Verify the font type of the register page
        When Appear the register page.
        Then the font type on the register page should are Arial 9.
    
    Scenario: Verify the space between advertising field
        When I have a successful login.
        And I in the homepage
        And The Adv is Visible.
        And The Promotion's is Internal or External. 
        Then The Adv space is "(value from image01.png)".

    Scenario: Verify the adv's for External Promo
        When I access to the reload the homepage. 
        And The Adv is External.
        Then The Browser should display a new/different Adv. 

    Scenario: Verify the adv's for Internal Promo.
        When I access to the reload the homepage. 
        And The Adv is Internal.
        Then The Browser should have 4 banners.
        And the Banners size should be the same.
    
    Scenario: Verify the Colors on the Main Menu.
        When I access the homepage.
        And Display the Main Menu.
        Then The Main Menu displayed should have black with green color.