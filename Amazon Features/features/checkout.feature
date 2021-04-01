### Gherkin practice ###
## create by: Joan De la Rosa 
## Create date: 3/31/2021


Feature: Checkout a product on Amazon Website. 
As a buyer User, 
I want to Purchase into the website of Amazon
For validate the correct behavior of the Checkout feature.

    Scenario: Go to the Cart view with yor product 
        Given an Amazon page with elements available in the Cart
        When I click on the cart icon with a number of products. 
        Then Should redirect to the Cart view. 
        And Has a product with a button to complete the check out of this. 
    
    Scenario Outline: Proceed to Checkout of your product 
        Given an Amazon page with the Cart items View.
        And has the button Proceed to check out.
        When I click to the button Proceed to Check out.
        And Select the Shipping Address.
        And Choose the shipping options <shipping>
        And Choose the payment Method 'your Credit and debit card'
        And Shown the Order Summary with the Order Total
        Then Should able to place your order
        Examples: 
            | shipping             |
            | free prime delivery  |
            | free shipping        |
            | shipping charges     |

    Scenario: Place your product order
        Given an Amazon page with the Review Order details
        And Verify the Order summary 
        And Verify the Order Total
        And the Place your Order button able to click
        When I Click on Place your Order Button
        Then site Should get an order confirmation message 
        And the Site view Change to complete the process 
        And the User should get an Email with the Confirmation 
