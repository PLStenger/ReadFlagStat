# ReadFlagStat
Read easily all yours FlagStat files created by Galaxy into one CSV file

Installation from GitHub and loading
------------------------------------

``` r
# may be useful : install.packages("devtools")
library(devtools)
install_github("PLStenger/ReadFlagStat")
library("ReadFlagStat)
```

Quick Start
-----------

Galaxy give you many FlagStat files in txt if you have many datas.
That's annoying to open one by one to check the information..
So,

Put all your FlagStat txt in a folder.

Got to **R**, don't forget to "**Get your working directory**" into this previous folder.

And run this command:

``` r
ReadFlagStat()
```

And that's it ! ;) 
You have your information into a "results.csv".
If you must restart your manip, don't forget to discard the bad "results.csv".
