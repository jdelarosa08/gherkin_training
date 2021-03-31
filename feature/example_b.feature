### Gherkin practice, Example B

Feature: Purchase on Amazon Website. 
As User,
I want to place an order and get the confirmation email 
when I make a purchase on Amazon Website

    Scenario Outline: Login on Amazon Website valid user
        Given Go to the url www.amazon.com.
        When I access to the homepage of Amazon.
        And immediately appear a model of Sign In.
        And Click Signin Button.
        And Insert your  <user> and <password>.
        And click Signin.
        Then should redirect to the homepage after successful login.
        Examples: 
            |  user         | password  |
            | test@test.com | abc123    |
    
    Scenario Outline: Search an available product
        Given The Amazon homepage with a successful login.
        When Type <product> into the search input.
        Then The Amazon Website should redirect to a List of product available with the same name.
        Examples: 
            |  product          |
            | ipad pro          |
            | moby dick book    |
    
    Scenario: Select and insert a product into the Cart.
        Given an Amazon page with a list of products by a search previously.
        When I selected a product of the list. 
        Then The Cart Should change the value number in the icon.
        And Should able to go to the Cart view and has elements to make a payment.
    
    Scenario: Go to the Cart view with yor product 
        Given an Amazon page with elements available in the Cart icons showing a number of the product.
        When I click on the cart icon with a number of products. 
        Then Should redirect to the Cart view. 
        And Has a product with a button to complete the check out of this. 
    
    Scenario Outline: Proceed to Checkout of your product 
        Given an Amazon page with the Cart items View.
        And has the button Proceed to check out.
        When I click to the button Proceed to Check out.
        And Select the Shipping Address.
        And Choose the shipping options <shipping>
        And Choose the payment Method
        | payment                                   |
        | Your Credit and debit Card                |
        | Gift Cards, Vouchers & Promotional Codes  |
        | Amazon.com Sotre Card                     |
        | Personal Checking Accounts                |
        And Shown the Order Summary with the Order Total
        Then Should able to place your order

        Examples: 
            |  shipping            | 
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
