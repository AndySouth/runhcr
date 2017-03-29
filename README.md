# runhcr a preliminary R package to access refugee data from UNHCR

Inspired by refugee hack team at SSI hackday March 2017
https://github.com/cspgdds/Visualflee

The current UNHCR operational portal for refugee situations at [data2.unhcr.org](data2.unhcr.org) has an API but documentation appears to refer to an [older version](http://data.unhcr.org/wiki/index.php/API_Documentation).

This package provides preliminary functions to access population data within camps. 

These functions have not been well tested and are not well protected against passing incorrect arguments. Feel free to modify.

### Installation

    #install.packages("devtools")
    require(devtools)
    install_github('AndySouth/runhcr')
    require(runhcr)

#### get camp names for refugees leaving a country
    camp_names('burundi')
    
 [1] "Country Level"             "Katanga"                   "Maniema"                  
 [4] "Nord-Kivu"                 "Sud-Kivu"                  "Eastern Province"         
 [7] "Kigali City"               "Northern Province"         "Southern Province"        
[10] "Western Province"          "Kampala"                   "Kyegegwa"                 
[13] "Other (various locations)" "South West"                "Kigoma - Kirundo regions"


#### get ID for a named camp (to be able to access popn data)
    geo_id('Maniema')

[1] 965

#### get popn data for a camp name or ID
    camp_popn(name_camp='Maniema')

       data_date unix_timestamp individuals
    1  2015-09-30     1443571200         275
    2  2015-10-31     1446249600         258
    3  2016-02-17     1455667200         258
    4  2016-02-23     1456185600         258
    5  2016-03-10     1457568000         258
    6  2016-03-27     1459036800         258
    7  2016-04-30     1461974400         258
    8  2016-05-31     1464652800         258
    9  2016-06-30     1467244800         265
    10 2016-07-31     1469923200         265
    11 2016-08-31     1472601600         265
    12 2016-09-15     1473897600         265
    13 2016-09-30     1475193600         265
    14 2016-10-31     1477872000         265
    15 2016-11-30     1480464000         265
    16 2016-12-31     1483142400         265
    17 2017-01-31     1485820800         265
    18 2017-02-28     1488240000         265

## TODO

1. contact UNHCR to see when documentation for the API will be made available
1. add checks for if return values are not as expected (empty or multiple objects where not expected)
1. tweet and see if anyon wants to use/contribute


