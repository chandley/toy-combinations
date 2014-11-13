Feature: Application shuffles toy head,body,legs
  In order to amuse my three year old daughter
  As an owner of toys
  I want her to be able to shuffle pictures of head, body and legs

  Scenario: look at homepage
    Given a user
    When I visit the homepage
    Then I should see an unshuffled toy