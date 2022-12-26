> sample(c("cow", "deer", "pig", "chicken", "duck", "sheep", "dog"), 4)
[1] "dog"   "duck"  "cow"   "sheep"

> sample(c("cow", "deer", "pig", "chicken", "duck", "sheep", "dog"), 4)
[1] "pig"     "cow"     "chicken" "deer"   
> sample(c("cow", "deer", "pig", "chicken", "duck", "sheep", "dog"), 4)
[1] "pig"     "duck"    "deer"    "chicken"
> sample(c("cow", "deer", "pig", "chicken", "duck", "sheep", "dog"), 4)
[1] "duck"    "deer"    "chicken" "dog"   


> num_rows <- 1:nrow(demo_table)
> View(num_rows)
> sample_rows <- sample(num_rows, 3)
> sample_rows <- sample(num_rows, 3)
> sample_rows <- sample(num_rows, 3)
> sample_rows <- sample(num_rows, 3)
> sample_rows <- sample(num_rows, 3)
> sample_rows <- sample(num_rows, 3)
> demo_table[sample_rows,]
    Name    Vehicle_Class Year Total_Miles
2 Claire           Pickup 2017       15022
4  Kerri Subcompact_Sedan 2018       12349
3 Xavier              SUV 2019        4532

> summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer), .groups = 'keep') #create summary table
> View(summarize_demo)
> summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer),Maximum_Price=max(price),Num_Vehicles=n(), .groups = 'keep') #create summary table with multiple columns
> ?gather()
> demo_table3 <- read.csv('demo2.csv',check.names = F,stringsAsFactors = F)
> View(demo_table3)
> long_table <- gather(demo_table3,key="Metric",value="Score",buying_price:popularity)
> View(long_table)
> View(demo_table3)
> long_table <- demo_table3 %>% gather(key="Metric",value="Score",buying_price:popularity)
> ?spread()
> wide_table <- long_table %>% spread(key="Metric",value="Score")
> View(wide_table)
> all.equal(demo_table3,wide_table)
[1] "Names: 7 string mismatches"                      
[2] "Component 2: Mean relative difference: 0.5808824"
[3] "Component 3: Mean relative difference: 0.8276762"
[4] "Component 4: Mean relative difference: 0.5555556"
[5] "Component 5: Mean relative difference: 0.4978166"
[6] "Component 6: Mean relative difference: 0.4863636"
[7] "Component 7: Mean relative difference: 1.818182" 
[8] "Component 8: Mean relative difference: 0.5152355"
> table <-demo_table3[,order(colnames(wide_table))]
> View(table)
> table <- demo_table3[,(colnames(wide_table))]
> ?ggplot()
> head(mpg)
# A tibble: 6 × 11
  manufacturer model displ  year   cyl trans    drv     cty   hwy fl    class
  <chr>        <chr> <dbl> <int> <int> <chr>    <chr> <int> <int> <chr> <chr>
1 audi         a4      1.8  1999     4 auto(l5) f        18    29 p     comp…
2 audi         a4      1.8  1999     4 manual(… f        21    29 p     comp…
3 audi         a4      2    2008     4 manual(… f        20    31 p     comp…
4 audi         a4      2    2008     4 auto(av) f        21    30 p     comp…
5 audi         a4      2.8  1999     6 auto(l5) f        16    26 p     comp…
6 audi         a4      2.8  1999     6 manual(… f        18    26 p     comp…

> plt <- ggplot(mpg,aes(x=class)) #import dataset into ggplot2
> plt + geom_bar() #plot a bar plot
> ?geom_bar()
> mpg_summary <- mpg %>% group_by(manufacturer) %>% summarize(Vehicle_Count=n(), .groups = 'keep') #create summary table
> plt <- ggplot(mpg_summary,aes(x=manufacturer,y=Vehicle_Count)) #import dataset into ggplot2
> plt + geom_col() #plot a bar plot
> plt + geom_col() + xlab("Manufacturing Company") + ylab("Number of Vehicles in Dataset") #plot bar plot with labels
> theme(axis.text.x=element_text(angle=45,hjust=1)) #rotate the x-axis label 45 degrees
List of 1
 $ axis.text.x:List of 11
  ..$ family       : NULL
  ..$ face         : NULL
  ..$ colour       : NULL
  ..$ size         : NULL
  ..$ hjust        : num 1
  ..$ vjust        : NULL
  ..$ angle        : num 45
  ..$ lineheight   : NULL
  ..$ margin       : NULL
  ..$ debug        : NULL
  ..$ inherit.blank: logi FALSE
  ..- attr(*, "class")= chr [1:2] "element_text" "element"
 - attr(*, "class")= chr [1:2] "theme" "gg"
 - attr(*, "complete")= logi FALSE
 - attr(*, "validate")= logi TRUE

 > plt + geom_col() + xlab("Manufacturing Company") + ylab("Number of Vehicles in Dataset") + #plot a boxplot with labels>theme(axis.text.x=element_text(angle=45,hjust=1)) #rotate the x-axis label 45 degrees
+ 
+ 
> theme(axis.text.x=element_text(angle=45,hjust=1)) #rotate the x-axis label 45 degrees
List of 1
 $ axis.text.x:List of 11
  ..$ family       : NULL
  ..$ face         : NULL
  ..$ colour       : NULL
  ..$ size         : NULL
  ..$ hjust        : num 1
  ..$ vjust        : NULL
  ..$ angle        : num 45
  ..$ lineheight   : NULL
  ..$ margin       : NULL
  ..$ debug        : NULL
  ..$ inherit.blank: logi FALSE
  ..- attr(*, "class")= chr [1:2] "element_text" "element"
 - attr(*, "class")= chr [1:2] "theme" "gg"
 - attr(*, "complete")= logi FALSE
 - attr(*, "validate")= logi TRUE

 > plt + geom_col() + xlab("Manufacturing Company") + ylab("Number of Vehicles in Dataset") + #plot a boxplot with labels
+ theme(axis.text.x=element_text(angle=45,hjust=1)) #rotate the x-axis label 45 degrees
> mpg_summary <- subset(mpg,manufacturer=="toyota") %>% group_by(cyl) %>% summarize(Mean_Hwy=mean(hwy), .groups = 'keep') #create summary table
> plt <- ggplot(mpg_summary,aes(x=cyl,y=Mean_Hwy)) #import dataset into ggplot2
> View(plt)
> View(mpg_summary)
> plt + geom_line()
> plt + geom_line() + scale_x_discrete(limits=c(4,6,8)) + scale_y_continuous(breaks = c(16:30)) #add line plot with labels
Warning message:
Continuous limits supplied to discrete scale.
ℹ Did you mean `limits = factor(...)` or `scale_*_continuous()`? 
> plt <- ggplot(mpg,aes(x=displ,y=cty)) #import dataset into ggplot2
> plt + geom_point() + xlab("Engine Size (L)") + ylab("City Fuel-Efficiency (MPG)") #add scatter plot with labels
> plt <- ggplot(mpg,aes(x=displ,y=cty,color=class)) #import dataset into ggplot2
> plt + geom_point() + labs(x="Engine Size (L)", y="City Fuel-Efficiency (MPG)", color="Vehicle Class") #add scatter plot with labels
> plt <- ggplot(mpg,aes(x=displ,y=cty,color=class,shape=drv)) #import dataset into ggplot2
> plt + geom_point() + labs(x="Engine Size (L)", y="City Fuel-Efficiency (MPG)", color="Vehicle Class",shape="Type of Drive") #add scatter plot with multiple aesthetics
> plt <- ggplot(mpg,aes(y=hwy)) #import dataset into ggplot2
> plt + geom_boxplot() #add boxplot
> plt <- ggplot(mpg,aes(x=manufacturer,y=hwy)) #import dataset into ggplot2
> plt + geom_boxplot() + theme(axis.text.x=element_text(angle=45,hjust=1)) #add boxplot and rotate x-axis labels 45 degrees
> plt <- ggplot(mpg,aes(x=manufacturer,y=cly)) #import dataset into ggplot2
> plt + geom_boxplot() + theme(axis.text.x=element_text(angle=45,hjust=1)) #add boxplot and rotate x-axis labels 45 degrees
Error in `geom_boxplot()`:
! Problem while computing aesthetics.
ℹ Error occurred in the 1st layer.
Caused by error in `FUN()`:
! object 'cly' not found
Run `rlang::last_error()` to see where the error occurred.
> plt <- ggplot(mpg,aes(x=manufacturer,y=cty)) #import dataset into ggplot2
> plt + geom_boxplot() + theme(axis.text.x=element_text(angle=45,hjust=1)) #add boxplot and rotate x-axis labels 45 degrees
> mpg_summary <- mpg %>% group_by(class,year) %>% summarize(Mean_Hwy=mean(hwy), .groups = 'keep') #create summary table
> 
> plt <- ggplot(mpg_summary, aes(x=class,y=factor(year),fill=Mean_Hwy))
> plt + geom_tile() + labs(x="Vehicle Class",y="Vehicle Year",fill="Mean Highway (MPG)") #create heatmap with labels
> mpg_summary <- mpg %>% group_by(model,year) %>% summarize(Mean_Hwy=mean(hwy), .groups = 'keep') #create summary table
> plt <- ggplot(mpg_summary, aes(x=model,y=factor(year),fill=Mean_Hwy)) #import dataset into ggplot2
> plt + geom_tile() + labs(x="Model",y="Vehicle Year",fill="Mean Highway (MPG)") + #add heatmap with labels > theme(axis.text.x = element_text(angle=90,hjust=1,vjust=.5)) #rotate x-axis labels 90 degrees
+ 
> plt + geom_tile() + labs(x="Model",y="Vehicle Year",fill="Mean Highway (MPG)") + #add heatmap with labels
+ theme(axis.text.x = element_text(angle=90,hjust=1,vjust=.5)) #rotate x-axis labels 90 degrees
> plt <- ggplot(mpg,aes(x=manufacturer,y=hwy)) #import dataset into ggplot2
> plt + geom_boxplot() + #add boxplot
+ theme(axis.text.x=element_text(angle=45,hjust=1)) + #rotate x-axis labels 45 degrees
+ geom_point() #overlay scatter plot on top
> mpg_summary <- mpg %>% group_by(class) %>% summarize(Mean_Engine=mean(displ), .groups = 'keep') #create summary table
> plt <- ggplot(mpg_summary,aes(x=class,y=Mean_Engine)) #import dataset into ggplot2
> plt + geom_point(size=4) + labs(x="Vehicle Class",y="Mean Engine Size") #add scatter plot
> mpg_summary <- mpg %>% group_by(class) %>% summarize(Mean_Engine=mean(displ),SD_Engine=sd(displ), .groups = 'keep')
> plt <- ggplot(mpg_summary,aes(x=class,y=Mean_Engine)) #import dataset into ggplot2
> plt + geom_point(size=4) + labs(x="Vehicle Class",y="Mean Engine Size") + #add scatter plot with labels
+ geom_errorbar(aes(ymin=Mean_Engine-SD_Engine,ymax=Mean_Engine+SD_Engine)) #overlay with error bars
> mpg_long <- mpg %>% gather(key="MPG_Type",value="Rating",c(cty,hwy)) #convert to long format
> head(mpg_long)
# A tibble: 6 × 11
  manufacturer model displ  year   cyl trans      drv   fl    class   MPG_Type Rating
  <chr>        <chr> <dbl> <int> <int> <chr>      <chr> <chr> <chr>   <chr>     <int>
1 audi         a4      1.8  1999     4 auto(l5)   f     p     compact cty          18
2 audi         a4      1.8  1999     4 manual(m5) f     p     compact cty          21
3 audi         a4      2    2008     4 manual(m6) f     p     compact cty          20
4 audi         a4      2    2008     4 auto(av)   f     p     compact cty          21
5 audi         a4      2.8  1999     6 auto(l5)   f     p     compact cty          16
6 audi         a4      2.8  1999     6 manual(m5) f     p     compact cty          18



> plt <- ggplot(mpg_long,aes(x=manufacturer,y=Rating,color=MPG_Type)) #import dataset into ggplot2
> plt + geom_boxplot() + theme(axis.text.x=element_text(angle=45,hjust=1)) #add boxplot with labels rotated 45 degrees
> ?facet_wrap()
> plt <- ggplot(mpg_long,aes(x=manufacturer,y=Rating,color=MPG_Type)) #import dataset into ggplot2
> plt + geom_boxplot() + facet_wrap(vars(MPG_Type)) + #create multiple boxplots, one for each MPG type
+ theme(axis.text.x=element_text(angle=45,hjust=1),legend.position = "none") + xlab("Manufacturer") #rotate x-axis labels
> ggplot(mtcars,aes(x=wt)) + geom_density() #visualize distribution using density plot
> ?shapiro.test()
> shapiro.test(mtcars$wt)

	Shapiro-Wilk normality test

data:  mtcars$wt
W = 0.94326, p-value = 0.09265

> ?sample_n()
> population_table <- read.csv('used_car_data.csv',check.names = F,stringsAsFactors = F) #import used car dataset
> plt <- ggplot(population_table,aes(x=log10(Miles_Driven))) #import dataset into ggplot2
> plt + geom_density() #visualize distribution using density plot
> sample_table <- population_table %>% sample_n(50) #randomly sample 50 data points
> plt <- ggplot(sample_table,aes(x=log10(Miles_Driven))) #import dataset into ggplot2
> plt + geom_density() #visualize distribution using density plot
> sample_table <- population_table %>% sample_n(50) #randomly sample 50 data points
> plt <- ggplot(sample_table,aes(x=log10(Miles_Driven))) #import dataset into ggplot2
> plt + geom_density() #visualize distribution using density plot
> population_table <- read.csv('used_car_data.csv',check.names = F,stringsAsFactors = F) #import used car dataset
> plt <- ggplot(population_table,aes(x=log10(Miles_Driven))) #import dataset into ggplot2
> plt + geom_density() #visualize distribution using density plot
> sample_table <- population_table %>% sample_n(50) #randomly sample 50 data points
> plt <- ggplot(sample_table,aes(x=log10(Miles_Driven))) #import dataset into ggplot2
> plt + geom_density() #visualize distribution using density plot
> ?t.test()
> t.test(log10(sample_table$Miles_Driven),mu=mean(log10(population_table$Miles_Driven))) #compare sample versus population means

	One Sample t-test

data:  log10(sample_table$Miles_Driven)
t = -0.67137, df = 49, p-value = 0.5051
alternative hypothesis: true mean is not equal to 4.39449
95 percent confidence interval:
 4.222394 4.480392
sample estimates:
mean of x 
 4.351393 

 > sample_table <- population_table %>% sample_n(50) #generate 50 randomly sampled data points
> sample_table2 <- population_table %>% sample_n(50) #generate another 50 randomly sampled data points
> t.test(log10(sample_table$Miles_Driven),log10(sample_table2$Miles_Driven)) #compare means of two samples

	Welch Two Sample t-test

data:  log10(sample_table$Miles_Driven) and log10(sample_table2$Miles_Driven)
t = -0.95516, df = 96.946, p-value = 0.3419
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -0.27428274  0.09605625
sample estimates:
mean of x mean of y 
 4.347155  4.436269 

> mpg_data <- read.csv('mpg_modified.csv') #import dataset
> mpg_1999 <- mpg_data %>% filter(year==1999) #select only data points where the year is 1999
> mpg_2008 <- mpg_data %>% filter(year==2008) #select only data points where the year is 2008
> t.test(mpg_1999$hwy,mpg_2008$hwy,paired = T) #compare the mean difference between two samples

	Paired t-test

data:  mpg_1999$hwy and mpg_2008$hwy
t = -1.1165, df = 37, p-value = 0.2714
alternative hypothesis: true mean difference is not equal to 0
95 percent confidence interval:
 -2.1480860  0.6217702
sample estimates:
mean difference 
     -0.7631579 


> ?aov()
> mtcars_filt <- mtcars[,c("hp","cyl")] #filter columns from mtcars dataset
> mtcars_filt$cyl <- factor(mtcars_filt$cyl) #convert numeric column to factor
> aov(hp ~ cyl,data=mtcars_filt) #compare means across multiple levels
Call:
   aov(formula = hp ~ cyl, data = mtcars_filt)

Terms:
                      cyl Residuals
Sum of Squares  104030.54  41696.33
Deg. of Freedom         2        29

Residual standard error: 37.91839
Estimated effects may be unbalanced
> summary(aov(hp ~ cyl,data=mtcars_filt))
            Df Sum Sq Mean Sq F value   Pr(>F)    
cyl          2 104031   52015   36.18 1.32e-08 ***
Residuals   29  41696    1438                     
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
> ?cor()
> head(mtcars)
                   mpg cyl disp  hp drat    wt  qsec vs am gear carb
Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1

> plt <- ggplot(mtcars,aes(x=hp,y=qsec)) #import dataset into ggplot2
> plt + geom_point() #create scatter plot
> cor(mtcars$hp,mtcars$qsec) #calculate correlation coefficient
[1] -0.7082234
> used_cars <- read.csv('used_car_data.csv',stringsAsFactors = F) #read in dataset
> head(used_cars)
       Car_Name Year Selling_Price Present_Price Miles_Driven Fuel_Type Seller_Type
1          ritz 2014          3350          5590        27000    Petrol      Dealer
2           sx4 2013          4750          9540        43000    Diesel      Dealer
3          ciaz 2017          7250          9850         6900    Petrol      Dealer
4       wagon r 2011          2850          4150         5200    Petrol      Dealer
5         swift 2014          4600          6870        42450    Diesel      Dealer
6 vitara brezza 2018          9250          9830         2071    Diesel      Dealer
  Transmission Owner
1       Manual     0
2       Manual     0
3       Manual     0
4       Manual     0
5       Manual     0
6       Manual     0
> plt <- ggplot(used_cars,aes(x=Miles_Driven,y=Selling_Price)) #import dataset into ggplot2
> plt + geom_point() #create a scatter plot
> used_matrix <- as.matrix(used_cars[,c("Selling_Price","Present_Price","Miles_Driven")]) #convert data frame into numeric matrix
> cor(used_matrix)
              Selling_Price Present_Price Miles_Driven
Selling_Price    1.00000000     0.8789825   0.02918709
Present_Price    0.87898255     1.0000000   0.20364703
Miles_Driven     0.02918709     0.2036470   1.00000000

> ?lm()
> lm(qsec ~ hp,mtcars) #create linear model

Call:
lm(formula = qsec ~ hp, data = mtcars)

Coefficients:
(Intercept)           hp  
   20.55635     -0.01846  

> summary(lm(qsec~hp,mtcars)) #summarize linear model

Call:
lm(formula = qsec ~ hp, data = mtcars)

Residuals:
    Min      1Q  Median      3Q     Max 
-2.1766 -0.6975  0.0348  0.6520  4.0972 

Coefficients:
             Estimate Std. Error t value Pr(>|t|)    
(Intercept) 20.556354   0.542424  37.897  < 2e-16 ***
hp          -0.018458   0.003359  -5.495 5.77e-06 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 1.282 on 30 degrees of freedom
Multiple R-squared:  0.5016,	Adjusted R-squared:  0.485 
F-statistic: 30.19 on 1 and 30 DF,  p-value: 5.766e-06

> model <- lm(qsec ~ hp,mtcars) #create linear model
> yvals <- model$coefficients['hp']*mtcars$hp +
+ model$coefficients['(Intercept)'] #determine y-axis values from linear model
> plt <- ggplot(mtcars,aes(x=hp,y=qsec)) #import dataset into ggplot2
> plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model
> lm(qsec ~ mpg + disp + drat + wt + hp,data=mtcars) #generate multiple linear regression model

Call:
lm(formula = qsec ~ mpg + disp + drat + wt + hp, data = mtcars)

Coefficients:
(Intercept)          mpg         disp         drat           wt           hp  
  16.541651     0.108579    -0.008076    -0.578953     1.792793    -0.018383  

> summary(lm(qsec ~ mpg + disp + drat + wt + hp,data=mtcars)) #generate summary statistics

Call:
lm(formula = qsec ~ mpg + disp + drat + wt + hp, data = mtcars)

Residuals:
    Min      1Q  Median      3Q     Max 
-1.6628 -0.6138  0.0706  0.4087  3.3885 

Coefficients:
             Estimate Std. Error t value Pr(>|t|)    
(Intercept) 16.541651   3.413109   4.847 5.04e-05 ***
mpg          0.108579   0.077911   1.394  0.17523    
disp        -0.008076   0.004384  -1.842  0.07689 .  
drat        -0.578953   0.551771  -1.049  0.30371    
wt           1.792793   0.513897   3.489  0.00175 ** 
hp          -0.018383   0.005421  -3.391  0.00223 ** 
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 1.053 on 26 degrees of freedom
Multiple R-squared:  0.7085,	Adjusted R-squared:  0.6524 
F-statistic: 12.64 on 5 and 26 DF,  p-value: 2.767e-06

> ?chisq.test()
> table(mpg$class,mpg$year) #generate contingency table
            
             1999 2008
  2seater       2    3
  compact      25   22
  midsize      20   21
  minivan       6    5
  pickup       16   17
  subcompact   19   16
  suv          29   33
> tbl <- table(mpg$class,mpg$year) #generate contingency table
> chisq.test(tbl) #compare categorical distributions

	Pearson's Chi-squared test

data:  tbl
X-squared = 1.0523, df = 6, p-value = 0.9836

Warning message:
In chisq.test(tbl) : Chi-squared approximation may be incorrect
> setwd("/Users/mia/code/class/16.Statistics and R")


