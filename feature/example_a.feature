### Gherkin practice, Example A 

### US GP002:Look and feel
#
# Summary: Verify the Home Page style as required:
#
#   Acceptance Criteria:
#       - AC1: Font type of the register Arial 9.
#       - AC2: Space between advertising fields
#           * The space is described in the image01.png in the user history which must be reserved for internal or external promotion of the page
#           * The external advertising of the page must be changing at each reload or access to the page.
#           * The internal advertising must be defined by the company, it must have four changing banners, for which the size must be the same.
#       - AC3: Colors
#           * The color of the main menu should be black with green color
#   Exceptions:
#       * Check only on Chrome Browser
#       * Exact dimensions of external advertising are not relevant
#       * To access home page, login is required

Feature: Home page look and feel.
 As a Tester, 
 I want to verify the style of the Home and register page  
 when I access. 

    Background:
        Given I am on the homepage with Chrome.
        And have Any Dimensions.

    Scenario: Verify the font type of the register page/modal.
        When Appear the register modal/page.
        Then The register modal/page I should have a font type Arial 9.

    Scenario: Verify the space between advertising field
        When I make the login.
        And The Adv's is Visible.
        And The Promotion's is Internal or External. 
        Then The adv's space is "(value from image01.png)".

    Scenario: Verify the adv's for External Promo
        When I access to the reload the homepage. 
        And The Adv's is External.
        Then The Browser should display a new/different Adv's. 

    Scenario: Verify the adv's for Internal Promo.
        When I access to the reload the homepage. 
        And The Adv's is Internal.
        Then The Browser should have 4 banners.
        And the Banners size should be the same.
    
    Scenario: Verify the Colors on the Main Menu.
        When I access the homepage.
        And Display the Main Menu.
        Then The Main Menu displayed should have black with green color.