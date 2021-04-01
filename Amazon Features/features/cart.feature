### Gherkin practice ###
## create by: Joan De la Rosa 
## Create date: 3/31/2021
## Note Qty = Quantity 

Feature: Cart on Amazon Website. 
As a buyer User, 
I want to add a product into the Cart of Amazon website
For validate the correct behavior of the Cart 

    Scenario: Select and insert a product into the Cart.
        Given an Amazon page with a list of products by a previous search.
        When I selected a product of the list.
        And Click over product 
        And Show the product Details 
        And click on "Add to Cart" button. 
        Then The Cart Should change the value number in the icon to 1.
        And Should able to go to the Cart view 
        And has an element to make a payment.
    
    Scenario Outline: Select and insert multi product into the Cart.
        Given an Amazon page with a list of products <product> by a previous search.
        When I selected a product of the list.
        And Click over product 
        And Show the product Details 
        And click on "Add to Cart" button. 
        Then The Cart Should change the value number in the icon to <itmes>.
        And Should able to go to the Cart view 
        And has elements to make a payment.
        Examples: 
            | product                         | items   |
            | ipad pro                        |  1      |
            | ipad Prod Cover                 |  2      |
            | ipad Prod glass Screen protector|  3      |

    Scenario: Select and insert a product with multiple Qty of it in the Cart.
        Given an Amazon page with a list of products by a previous search.
        When I selected a product of the list
        And Click over product 
        And Show the product Details 
        And Select 4 from the Dropdown Qty
        And click on "Add to Cart" button. 
        Then The Cart Should change the value number making addition of 4 items to the value.
        And Should able to go to the Cart view 
        And has an element to make a payment.
    
    Scenario: Remove Items from the Cart items
        Given an Amazon cart page with a list of previously added products.
          When I selected a product from the list.
          And I click the Delete option located under the title.
          Then the number of items within the cart list should be reduced
          And the amount of the value of the Icon Cart should be reducing
