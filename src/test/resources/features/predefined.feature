@predefined
Feature: Smoke steps

  @predefined1
  @regression
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then I type "Cucumber" into element with xpath "//textarea[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    # Then I wait for 2 sec,0 n b  b   b b
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then I should see page title contains "- Google Search"
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"

    Scenario:
    Given I open url "https://quote-qa.portnov.com"
      Then I click on element with xpath "//input[@id='name']"
      Then I type "<FirstName>" into element with xpath "//input[@id='firstName']"
      And I type "<MiddleName>" into element with xpath "//input[@id='middleName']"
      And I type "<LastName>" into element with xpath "//input[@id='lastName']"
      Then I click on element with xpath "//span[contains(text(),'Save')]"
      Then element with xpath "//input[@id='name']" should have attribute "value" as "<FullName>"
      Then I wait for 2 sec




  Scenario Outline: Quotes requests for users
  Given 
  Examples:
  | FirstName | Middle Name | LastName | FullName
  | Test      | Testgly     | Test1    | Test
  | Tara      |             | Mai      |
  |Glyn       |             | D'souza  |


Scenario: Calculator addition test
  Given I open url "https://www.calculator.net/"
  Then I wait for 2 sec
  Then I click on element with xpath "//span[contains(text(), '2')]"
  Then I click on element with xpath "(//span[contains(text(), '+')])[1]"
  Then I click on element with xpath "//span[contains(text(), '2')]"
  Then I click on element with xpath "//span[contains(text(), '=')]"
  Then element with xpath "//div[@id='sciOutPut']" should contain text "4"
  Then I wait for 2 sec

  Scenario: Calculator addition test
    Given I open url "https://www.calculator.net/"
    Then I wait for 2 sec
    Then I click on element with xpath "//span[contains(text(), '2')]"
    Then I click on element with xpath "(//span[contains(text(), '+')])[1]"
    Then I click on element with xpath "//span[contains(text(), '2')]"
    Then I click on element with xpath "//span[contains(text(), '=')]"
    Then element with xpath "//div[@id='sciOutPut']" should contain text "5"
    Then I wait for 2 sec

    Scenario: Calculator subtraction test
      Given I open url "https://www.calculator.net/"
      Then I wait for 2 sec
      Then I click on element with xpath "//span[contains(text(), '5')]"
      Then I click on element with xpath "(//span[contains(text(), '-')])[1]"
      Then I click on element with xpath "//span[contains(text(), '3')]"
      Then I click on element with xpath "//span[contains(text(), '=')]"
      Then element with xpath "//div[@id='sciOutPut']" should contain text "2"
      Then I wait for 2 sec

      Scenario: Calculator multiplication test

Feature: Homework Cartier Love Bracelet
  Scenario: Searching for Cartier Love Bracelet
    Given I open url "https://www.cartier.com/"
    Then I click on element with xpath "//div[@class='site-search']"
    Then element with xpath "//input[@id='siteSearch']" should be displayed
    Then I type "Love Bracelet" into element with xpath "//input[@id='siteSearch']"
    Then element with xpath "//form[@role='search']//button" should be displayed
    Then I click on element with xpath "//form[@role='search']//button"
    Then I should see page title contains "Love Bracelet"
    Then element with xpath "//*[@id='product-search-results']" should contain text "Love Bracelet"



      
      
      Scenario: Calculator responsive test
        Given I open url "https://www.calculator.net/"
        Then element with xpath "//div[@id='homefunbtn']" should be displayed
        Then I resize window to 700 and 400
        Then element with xpath "//div[@id='homefunbtn']" should not be displayed
        Then I wait for 2 sec
        
        Scenario: Recruit login test
          Given I open url "http://recruit-qa.portnov.com/"
          Then I click on element with xpath "//button[contains(text(), 'Login')]"
          Then element with xpath "//span[contains(text(), 'Login')]" should be displayed
          Then I type "student@example.com" into element with xpath "//input[@placeholder='Please enter an Email']"
          Then I type "welcome" into element with xpath "//input[@placeholder='Please enter a Password']"
          Then I click on element with xpath "//button[@type='submit']"
          Then I wait for element with xpath "//span[contains(text(), 'Careers')]/..//div/div/span/a" to be present
          Then element with xpath "//span[contains(text(), 'Careers')]/..//div/div/span/a" should contain text "Student"
  
  
         Scenario: Bing search engine
           Given I open url "https://www.bing.com/"
           Then I should see page title as "Bing"
           Then I type "Cucumber" into element with xpath "//textarea[@id='sb_form_q']"
           Then I click on element using JavaScript with xpath "//label[@for='sb_form_go']/*/*"
           Then I press enter for element with xpath "//textarea[@id='sb_form_q']"
           Then I wait for element with xpath "//ol[@id='b_results']" to be present
           Then I should see page title contains "Search"
           Then element with xpath "//ol[@id='b_results']" should contain text "Cucumber"



        



