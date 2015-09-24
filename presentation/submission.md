---
title       : Developing Data Products - Course Project
subtitle    : Performance Prediction of a Car from Design Parameters
author      : Daniel, Yiquan Zhou
job         : Engineer
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Performance Prediction of a Car from Design Parameters

This presentation is being created as part of the course project of the Coursera's Developing Data Products course. This assignment is to demonstrate that the following concepts are understood by the students.

- **shiny** to build data product application
- **R-Presentation or slidify** to create data product related presentations

--- 

## The Application

To display the understanding of using **shiny** to build an application, a simple application called **Performance Prediction of a Car from Design Parameters** has been developed and deployed at: 
https://daniel-zhou.shinyapps.io/Developing-Data-Products/

The application allows the user to predict the performance of a car based on some basic design parameters, in terms of 
- time to complete the quarter mile 
- in fuel economy

---

## Source Codes

Source code for the project is available on the [GitHub](https://github.com/daniel-zhou/Developing-Data-Products).

---

## Data

Read Data

```r
mtcars_dt <- read.csv('mtcars.csv')
head(mtcars_dt)
```

```
##                   X  mpg cyl disp  hp drat    wt  qsec vs am gear carb
## 1         Mazda RX4 21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
## 2     Mazda RX4 Wag 21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
## 3        Datsun 710 22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
## 4    Hornet 4 Drive 21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
## 5 Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
## 6           Valiant 18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
```




