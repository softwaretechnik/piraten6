Feature: List all Services on the Homepage
  In order to quickly discover the IPv6 support of the German Pirate Party
  As an anonymous web user
  I want to see the current IPv6 support of all public web sites of the Pirate Party

  Scenario: Greeting on the homepage
    When I access the root page
    Then I should see "Piraten6 — IPv6 bei der Piratenpartei Deutschland"
