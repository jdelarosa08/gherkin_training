### Gherkin practice ###
## create by: Joan De la Rosa 
## Create date: 3/31/2021


Feature: Login on Amazon Website. 
As a buyer User, 
I want to login into the website of Amazon
For validate the correct behavior of the Login

    Background:
        Given I am on the login page of Amazon

    Scenario: Login on Amazon Website with valid user
        When Appear the Login Form with the Email or Mobile Input
        And type 'valid@test.com' in the email field
        And Click Continue
        And type 'abc123' in the password field
        And Click Continue
        And Insert the ReCaptcha code
        And Click Signin
        Then the login must be successful
        And redirect to the homepage of Amazon
    
    Scenario: Login on Amazon Website with invalid user
        When Appear the Login Form with the Email or Mobile Input
        And type the invalid email 'invalid@asdd' in the email field 
        And click Continue
        Then should show a message of "We Cannot find an Account with that email address"
        And can't pass to the next level
    
    Scenario: Login on Amazon Website with invalid password
       When Appear the Login Form with the Email or Mobile Input
        And type 'valid@test.com' in the email field
        And Click Continue
        And type the invalid password '341233' in the password field
        And Click Continue
        Then should show a message of "Your password is incorrect"
        And can't pass to the next level

    Scenario: Login on Amazon Website without data
        When Appear the Login Form with the Email or Mobile Input
        And don't email in the email field
        And Click Continue
        Then should show a validation error message "Enter your email or mobile phone number"
        And can't pass to the next level
