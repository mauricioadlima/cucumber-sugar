Feature: Test all date sweetness

Feature: Test all date sweetness

  Scenario Outline: Sweetening my dates                     
    Given that today's date was "2016-12-28 19:38:52 -0200" 
    When I say "<x_days_ago>"                               
    Then I hope which the date is "<previous_date>"         
    But if I say "<in_x_days>"                              
    Then I hope which the date is "<next_date>"             

    Scenarios:
      | x_days_ago   | previous_date             | in_x_days   | next_date                 |
      | 0 days ago   | 2016-12-28 19:38:52 -0200 | in 0 days   | 2016-12-28 19:38:52 -0200 |
      | 1 day ago    | 2016-12-27 19:38:52 -0200 | in 1 day    | 2016-12-29 19:38:52 -0200 |
      | 10 days ago  | 2016-12-18 19:38:52 -0200 | in 10 days  | 2017-01-07 19:38:52 -0200 |
      | 366 days ago | 2015-12-28 19:38:52 -0200 | in 365 days | 2017-12-28 19:38:52 -0200 |
