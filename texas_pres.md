Executed Offenders
===
author: Ben Apple
date: 16JAN2015
transition: rotate

An App of Executed Offenders by
    Texas Department of Criminal Justice 

Texas Department of Criminal Justice 
===

<small>The Texas Department of Criminal Justice (TDCJ) manages offenders in state prisons, state jails and private correctional facilities that contract with TDCJ. The agency also provides funding and certain oversight of community supervision (previously known as adult probation) and is responsible for the supervision of offenders released from prison on parole or mandatory supervision. 

In addition the TDCJ keeps a database of all offenders executed by the state</small>

Web Page: http://www.tdcj.state.tx.us

Data: http://www.tdcj.state.tx.us/death_row/dr_executed_offenders.html

About App (1/2)
========================================================

This application uses the following six fields from that database: 
* Last Name
* First Name
* Age 
* Year
* Race
* County


About App (2/2)
========================================================

Each tab shows corresponding histogram.

You can dynamicly change histograms on each tabs using Tuning pane on the left side

There is boundary check for Age, but no input type check at all

Encountering any error while tuning means that THERE IS NO SUCH DATA (empty sub set) [I'm unsuccessful updating inputText from server.R]

Encountering any error while tuning: JUST SIMPLY DELETE OR UPDATE YOUR TUNING PARAMETER/S

Thank You
========================================================

<small> The below table is a brief summary of the data </small>


```r
rawData <- read.csv("D:/RFiles/texas data product/data_texas.csv")
summary(rawData)
```

```
     Last.Name     First.Name       Age               Date    
 Johnson  :  9   James  : 23   Min.   :24.00   1/31/1995:  2  
 Hernandez:  7   Robert : 22   1st Qu.:32.50   4/6/1997 :  2  
 Green    :  6   John   : 16   Median :38.00   9/8/2000 :  2  
 Martinez :  6   Richard: 15   Mean   :39.11   1/10/1997:  1  
 Williams :  6   David  : 14   3rd Qu.:44.00   1/10/1998:  1  
 Harris   :  5   Michael: 14   Max.   :66.00   1/10/2002:  1  
 (Other)  :476   (Other):411                   (Other)  :506  
       Race            County   
 Black   :190   Harris    :121  
 Hispanic: 92   Dallas    : 53  
 Other   :  2   Bexar     : 38  
 White   :231   Tarrant   : 37  
                Jefferson : 15  
                Montgomery: 15  
                (Other)   :236  
```
