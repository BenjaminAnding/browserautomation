Feature: Generic template for features

Scenario: User can do thing, when something happens, then assert something
  Given users goes to Google
  When the user searches for "Lena Soderberg"
  Then Google should return results for "playmate"
