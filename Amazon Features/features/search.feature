### Gherkin practice ###
## create by: Joan De la Rosa 
## Create date: 3/31/2021

Feature: Seach on Amazon Website. 
As a buyer User, 
I want to Search a product into the website of Amazon
For validate the correct behavior of the Search feature.

    Scenario Outline: Search a product without login 
        Given The Amazon homepage without login 
        When Type <product> into the search input.
        Then The Amazon Website should redirect to a List of product available with the same name.
        Examples: 
            |  product          |
            | ipad pro          |
            | moby dick book    |
    
    Scenario Outline: Search a product with login 
        Given The Amazon homepage with a successful login.
        When Type <product> into the search input.
        Then The Amazon Website should redirect to a List of products available with the same name.
        And The list of product show first the Sponsored products with the same name
        And the price could be cheaper.
        Examples: 
            |  product          |
            | ipad pro          |
            | moby dick book    |
    
    Scenario: No result after making a search of product without Login
        Given The Amazon homepage
        When Type "asdfasfasdf" into the search input.
        Then should redirect to the No results page
        And show a help message to help you. 
        And the Bottom show the Signin Button

    Scenario: No result after making a search of product with Login
        Given The Amazon homepage
        When Type "asdfasfasdf" into the search input.
        Then should redirect to the No results page
        And show a help message to help you. 
        And the Bottom show a list items of "Deals in magazine subscriptions"

    Scenario: Search a Product in a Department 
        Given The Amazon homepage
        When Type "Dell laptop" into the search input.
        And Select the Department "Computers" in the Dropdown "All"
        Then The Amazon Website should redirect to a List of products available into the deparmet Computers with the same name.
