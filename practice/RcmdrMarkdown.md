---
output:
  pdf_document: default
  html_document: default
---
<!-- R Commander Markdown Template -->

Replace with Main Title
=======================

### mihap

### 2024-10-10




``` r
> my.data <- 
+   read.table("C:/Users/mihap/Code/Faks/famnit24-statistika/practice/data.txt",
+    header=TRUE, stringsAsFactors=TRUE, sep="\t", na.strings="NA", dec=".", 
+   strip.white=TRUE)
```


### Summarize Data Set: my.data

``` r
> summary(my.data)
```

```
               Timestamp        Age            Sex          Height     
 10.10.2010 10:38:39:  1   Min.   :18.00   female:348   Min.   :152.0  
 10.10.2010 14:13:31:  1   1st Qu.:20.00   male  :176   1st Qu.:167.0  
 10.10.2010 17:30:55:  1   Median :20.00                Median :171.0  
 10.10.2010 17:54:13:  1   Mean   :20.06                Mean   :173.2  
 10.10.2010 21:32:16:  1   3rd Qu.:20.00                3rd Qu.:179.0  
 10.11.2010 18:58:17:  1   Max.   :27.00                Max.   :202.0  
 (Other)            :518                                               
     Weight         Shoe.size     Eye.Color   Smoking  
 Min.   : 31.00   Min.   :35.00   black:  6   no :483  
 1st Qu.: 57.00   1st Qu.:38.00   blue :148   yes: 41  
 Median : 64.00   Median :40.00   brown:223            
 Mean   : 65.64   Mean   :40.42   green:117            
 3rd Qu.: 74.00   3rd Qu.:42.00   other: 30            
 Max.   :103.00   Max.   :49.00                        
 NA's   :1                                             
 Smoking.How.many.per.day Videogames TV..hours.per.week.
 Min.   : 0.0000          no :370    Min.   : 0.000     
 1st Qu.: 0.0000          yes:154    1st Qu.: 2.000     
 Median : 0.0000                     Median : 4.000     
 Mean   : 0.5919                     Mean   : 5.256     
 3rd Qu.: 0.0000                     3rd Qu.: 7.000     
 Max.   :25.0000                     Max.   :45.000     
                                                        
 Internet..hours.per.week. Books..how.many.per.year. Sport..hours.per.week.
 Min.   : 1.00             Min.   :  0.00            Min.   : 0.000        
 1st Qu.: 7.00             1st Qu.:  5.00            1st Qu.: 3.000        
 Median :12.00             Median :  8.00            Median : 4.000        
 Mean   :15.35             Mean   : 11.59            Mean   : 5.417        
 3rd Qu.:20.00             3rd Qu.: 15.00            3rd Qu.: 7.000        
 Max.   :80.00             Max.   :150.00            Max.   :30.000        
                           NA's   :2                                       
       Pet                 Faculty    Friends.on.Facebook
 no      :152   Dental Medicine: 73   Min.   :   0       
 Dog     :105   Medicine       :352   1st Qu.: 152       
 Cat     : 71   Veterinary     : 99   Median : 300       
 Cat, Dog: 41                         Mean   : 326       
 Other   : 23                         3rd Qu.: 431       
 Rodent  : 20                         Max.   :5000       
 (Other) :112                         NA's   :277        
 Sleep..hours.per.night. PetBird   PetCat    PetDog    PetFish   Petno    
 Min.   : 4.000          No :495   No :350   No :311   No :473   No :371  
 1st Qu.: 7.000          Yes: 29   Yes:174   Yes:213   Yes: 51   Yes:153  
 Median : 7.000                                                           
 Mean   : 7.304                                                           
 3rd Qu.: 8.000                                                           
 Max.   :12.000                                                           
 NA's   :277                                                              
 PetOther  PetRodent
 No :449   No :478  
 Yes: 75   Yes: 46  
                    
                    
                    
                    
                    
```



``` r
> library(abind, pos=17)
```



``` r
> library(e1071, pos=18)
```



### Numerical Summaries: my.data


``` r
> Dataset <- 
+   read.table("C:/Users/mihap/Code/Faks/famnit24-statistika/practice/data.txt",
+    header=TRUE, stringsAsFactors=TRUE, sep="\t", na.strings="NA", dec=".", 
+   strip.white=TRUE)
```


### Summarize Data Set: Dataset

``` r
> summary(Dataset)
```

```
               Timestamp        Age            Sex          Height     
 10.10.2010 10:38:39:  1   Min.   :18.00   female:348   Min.   :152.0  
 10.10.2010 14:13:31:  1   1st Qu.:20.00   male  :176   1st Qu.:167.0  
 10.10.2010 17:30:55:  1   Median :20.00                Median :171.0  
 10.10.2010 17:54:13:  1   Mean   :20.06                Mean   :173.2  
 10.10.2010 21:32:16:  1   3rd Qu.:20.00                3rd Qu.:179.0  
 10.11.2010 18:58:17:  1   Max.   :27.00                Max.   :202.0  
 (Other)            :518                                               
     Weight         Shoe.size     Eye.Color   Smoking  
 Min.   : 31.00   Min.   :35.00   black:  6   no :483  
 1st Qu.: 57.00   1st Qu.:38.00   blue :148   yes: 41  
 Median : 64.00   Median :40.00   brown:223            
 Mean   : 65.64   Mean   :40.42   green:117            
 3rd Qu.: 74.00   3rd Qu.:42.00   other: 30            
 Max.   :103.00   Max.   :49.00                        
 NA's   :1                                             
 Smoking.How.many.per.day Videogames TV..hours.per.week.
 Min.   : 0.0000          no :370    Min.   : 0.000     
 1st Qu.: 0.0000          yes:154    1st Qu.: 2.000     
 Median : 0.0000                     Median : 4.000     
 Mean   : 0.5919                     Mean   : 5.256     
 3rd Qu.: 0.0000                     3rd Qu.: 7.000     
 Max.   :25.0000                     Max.   :45.000     
                                                        
 Internet..hours.per.week. Books..how.many.per.year. Sport..hours.per.week.
 Min.   : 1.00             Min.   :  0.00            Min.   : 0.000        
 1st Qu.: 7.00             1st Qu.:  5.00            1st Qu.: 3.000        
 Median :12.00             Median :  8.00            Median : 4.000        
 Mean   :15.35             Mean   : 11.59            Mean   : 5.417        
 3rd Qu.:20.00             3rd Qu.: 15.00            3rd Qu.: 7.000        
 Max.   :80.00             Max.   :150.00            Max.   :30.000        
                           NA's   :2                                       
       Pet                 Faculty    Friends.on.Facebook
 no      :152   Dental Medicine: 73   Min.   :   0       
 Dog     :105   Medicine       :352   1st Qu.: 152       
 Cat     : 71   Veterinary     : 99   Median : 300       
 Cat, Dog: 41                         Mean   : 326       
 Other   : 23                         3rd Qu.: 431       
 Rodent  : 20                         Max.   :5000       
 (Other) :112                         NA's   :277        
 Sleep..hours.per.night. PetBird   PetCat    PetDog    PetFish   Petno    
 Min.   : 4.000          No :495   No :350   No :311   No :473   No :371  
 1st Qu.: 7.000          Yes: 29   Yes:174   Yes:213   Yes: 51   Yes:153  
 Median : 7.000                                                           
 Mean   : 7.304                                                           
 3rd Qu.: 8.000                                                           
 Max.   :12.000                                                           
 NA's   :277                                                              
 PetOther  PetRodent
 No :449   No :478  
 Yes: 75   Yes: 46  
                    
                    
                    
                    
                    
```



### Histogram: Sport..hours.per.week.

``` r
> with(Dataset, Hist(Sport..hours.per.week., scale="frequency", 
+   breaks="Sturges", col="darkgray"))
```

<div class="figure">
<img src="figure/unnamed-chunk-8-1.png" alt="plot of chunk unnamed-chunk-8" width="750" />
<p class="caption">plot of chunk unnamed-chunk-8</p>
</div>


### Histogram: Sport..hours.per.week.

``` r
> with(Dataset, Hist(Sport..hours.per.week., scale="frequency", 
+   breaks="Sturges", col="darkgray", xlab="Št. ur športa na teden", 
+   ylab="Frekvenca"))
```

<div class="figure">
<img src="figure/unnamed-chunk-9-1.png" alt="plot of chunk unnamed-chunk-9" width="750" />
<p class="caption">plot of chunk unnamed-chunk-9</p>
</div>


### Histogram: Sport..hours.per.week.

``` r
> with(Dataset, Hist(Sport..hours.per.week., scale="frequency", 
+   breaks="Sturges", col="darkgray", xlab="Št. ur športa na teden", 
+   ylab="Frekvenca"))
```

<div class="figure">
<img src="figure/unnamed-chunk-10-1.png" alt="plot of chunk unnamed-chunk-10" width="750" />
<p class="caption">plot of chunk unnamed-chunk-10</p>
</div>


``` r
> with(Dataset, Hist(Sport..hours.per.week., scale="frequency",
+ breaks="Sturges", col="darkgray", xlab="Št. ur športa na teden",
+ ylab="Frekvenca"))
```

<div class="figure">
<img src="figure/unnamed-chunk-11-1.png" alt="plot of chunk unnamed-chunk-11" width="750" />
<p class="caption">plot of chunk unnamed-chunk-11</p>
</div>



### Histogram: Sport..hours.per.week.

``` r
> with(Dataset, Hist(Sport..hours.per.week., groups=Smoking, 
+   scale="frequency", breaks="Sturges", col="darkgray", 
+   xlab="Št. ur športa na teden", ylab="Frekvenca"))
```

<div class="figure">
<img src="figure/unnamed-chunk-12-1.png" alt="plot of chunk unnamed-chunk-12" width="750" />
<p class="caption">plot of chunk unnamed-chunk-12</p>
</div>


### Histogram: Weight

``` r
> with(Dataset, Hist(Weight, groups=Videogames, scale="frequency", 
+   breaks="Sturges", col="darkgray"))
```

<div class="figure">
<img src="figure/unnamed-chunk-13-1.png" alt="plot of chunk unnamed-chunk-13" width="750" />
<p class="caption">plot of chunk unnamed-chunk-13</p>
</div>


### Bar Plot: Videogames

``` r
> with(Dataset, Barplot(Videogames, by=Sex, style="divided", 
+   legend.pos="above", xlab="Videogames", ylab="Frequency", label.bars=TRUE))
```

<div class="figure">
<img src="figure/unnamed-chunk-14-1.png" alt="plot of chunk unnamed-chunk-14" width="750" />
<p class="caption">plot of chunk unnamed-chunk-14</p>
</div>


### Histogram: Weight

``` r
> with(Dataset, Hist(Weight, groups=Sex, scale="frequency", breaks="Sturges", 
+   col="darkgray"))
```

<div class="figure">
<img src="figure/unnamed-chunk-15-1.png" alt="plot of chunk unnamed-chunk-15" width="750" />
<p class="caption">plot of chunk unnamed-chunk-15</p>
</div>


### Histogram: Friends.on.Facebook

``` r
> with(Dataset, Hist(Friends.on.Facebook, groups=Videogames, 
+   scale="frequency", breaks="Sturges", col="darkgray"))
```

<div class="figure">
<img src="figure/unnamed-chunk-16-1.png" alt="plot of chunk unnamed-chunk-16" width="750" />
<p class="caption">plot of chunk unnamed-chunk-16</p>
</div>


### Bar Plot: Eye.Color

``` r
> with(Dataset, Barplot(Eye.Color, by=Sex, style="divided", 
+   legend.pos="above", xlab="Eye.Color", ylab="Frequency", label.bars=TRUE))
```

<div class="figure">
<img src="figure/unnamed-chunk-17-1.png" alt="plot of chunk unnamed-chunk-17" width="750" />
<p class="caption">plot of chunk unnamed-chunk-17</p>
</div>


### Bar Plot: Eye.Color

``` r
> with(Dataset, Barplot(Eye.Color, xlab="Eye.Color", ylab="Frequency", 
+   label.bars=TRUE))
```

<div class="figure">
<img src="figure/unnamed-chunk-18-1.png" alt="plot of chunk unnamed-chunk-18" width="750" />
<p class="caption">plot of chunk unnamed-chunk-18</p>
</div>


``` r
> library(colorspace, pos=19)
```



### Pie Chart: Eye.Color

``` r
> with(Dataset, piechart(Eye.Color, xlab="", ylab="", main="Eye.Color", 
+   col=rainbow_hcl(5), scale="percent"))
```

<div class="figure">
<img src="figure/unnamed-chunk-20-1.png" alt="plot of chunk unnamed-chunk-20" width="750" />
<p class="caption">plot of chunk unnamed-chunk-20</p>
</div>


### Pie Chart: Eye.Color

``` r
> with(Dataset, piechart(Eye.Color, xlab="", ylab="", main="Eye.Color", 
+   col=palette()[2:6], scale="percent"))
```

<div class="figure">
<img src="figure/unnamed-chunk-21-1.png" alt="plot of chunk unnamed-chunk-21" width="750" />
<p class="caption">plot of chunk unnamed-chunk-21</p>
</div>


### Pie Chart: Eye.Color

``` r
> with(Dataset, piechart(Eye.Color, xlab="", ylab="", main="Eye.Color", 
+   col=palette()[2:6], scale="percent"))
```

<div class="figure">
<img src="figure/unnamed-chunk-22-1.png" alt="plot of chunk unnamed-chunk-22" width="750" />
<p class="caption">plot of chunk unnamed-chunk-22</p>
</div>


### Bar Plot: Sex

``` r
> with(Dataset, Barplot(Sex, by=Faculty, style="divided", legend.pos="above", 
+   xlab="Sex", ylab="Frequency", label.bars=TRUE))
```

<div class="figure">
<img src="figure/unnamed-chunk-23-1.png" alt="plot of chunk unnamed-chunk-23" width="750" />
<p class="caption">plot of chunk unnamed-chunk-23</p>
</div>


### Scatterplot: Height~Weight

``` r
> scatterplot(Height~Weight, regLine=FALSE, smooth=FALSE, boxplots=FALSE, 
+   data=Dataset)
```

<div class="figure">
<img src="figure/unnamed-chunk-24-1.png" alt="plot of chunk unnamed-chunk-24" width="750" />
<p class="caption">plot of chunk unnamed-chunk-24</p>
</div>


### Scatterplot: Weight~Height

``` r
> scatterplot(Weight~Height, regLine=FALSE, smooth=FALSE, boxplots=FALSE, 
+   data=Dataset)
```

<div class="figure">
<img src="figure/unnamed-chunk-25-1.png" alt="plot of chunk unnamed-chunk-25" width="750" />
<p class="caption">plot of chunk unnamed-chunk-25</p>
</div>


### Numerical Summaries: Dataset

``` r
> numSummary(Dataset[,"Friends.on.Facebook", drop=FALSE], statistics=c("mean",
+    "sd", "IQR", "quantiles"), quantiles=c(0,.25,.5,.75,1))
```

```
     mean       sd IQR 0% 25% 50% 75% 100%   n  NA
 325.9514 370.7482 279  0 152 300 431 5000 247 277
```


### Boxplot: ~ Friends.on.Facebook

``` r
> Boxplot( ~ Friends.on.Facebook, data=Dataset, id=list(method="y"))
```

<div class="figure">
<img src="figure/unnamed-chunk-27-1.png" alt="plot of chunk unnamed-chunk-27" width="750" />
<p class="caption">plot of chunk unnamed-chunk-27</p>
</div>

```
[1] "327" "373" "374" "394" "436"
```


