Feature: Show movie list
  As movie enthuthiast
  I want to be able to see available movies
  So that I view more details about a movie

  Scenario: Click movie shows movie details
    Given I have all the "movieListed" on the screen
    When I tap on one movie image
    Then I expect the "movieDetail" to be displayed