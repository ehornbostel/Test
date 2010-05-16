Feature: Deal creation
  In order to book a deal
  I want to log in and go to the deal form

  Scenario: Deal creation
    Given I have an account
    And I'm logged in
    And There's no deals
    When I click Deals link
    And I click New deal link
    Then I should see "Property Type"
    And have 1 deal draft assigned to my user id and account id

  Scenario: Deal publication
    Given I have an account
    And I'm logged in
    And I have 1 deal
    When I edit the deal
    And I publish that deal
    Then I should see "Deal is now published"
    And the deal should not be flagged as a draft anymore

  Scenario: Deal edition, Step 1: Deal type
    Given I have an account
    And I'm logged in
    And I have 1 deal
    When I edit the deal
    And I select "Office" from "Property Type:"
    And I select "Lease" from "Transaction Type:"
    And I press "Save"
    Then I should see "Deal type has been saved"
    And the deal record should have "Office" assigned to "property_type"
    And the deal record should have "Lease" assigned to "transaction_type"