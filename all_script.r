
R version 4.4.2 (2024-10-31 ucrt) -- "Pile of Leaves"
Copyright (C) 2024 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> data <- read.csv("C:\Users\bv\Desktop\alzheimers_disease_data.csv")
Error: '\U' used without hex digits in character string (<input>:1:22)
> data <- read.csv("C:/Users/bv/Desktop/alzheimers_disease_data.csv")
> head(data)
  PatientID Age Gender Ethnicity EducationLevel      BMI Smoking
1      4751  73      0         0              2 22.92775       0
2      4752  89      0         0              0 26.82768       0
3      4753  73      0         3              1 17.79588       0
4      4754  74      1         0              1 33.80082       1
5      4755  89      0         0              0 20.71697       0
6      4756  86      1         1              1 30.62689       0
  AlcoholConsumption PhysicalActivity DietQuality SleepQuality
1          13.297218        6.3271125   1.3472143     9.025679
2           4.542524        7.6198845   0.5187671     7.151293
3          19.555085        7.8449878   1.8263347     9.673574
4          12.209266        8.4280014   7.4356041     8.392554
5          18.454356        6.3104607   0.7954975     5.597238
6           4.140144        0.2110616   1.5849220     7.261953
  FamilyHistoryAlzheimers CardiovascularDisease Diabetes Depression HeadInjury
1                       0                     0        1          1          0
2                       0                     0        0          0          0
3                       1                     0        0          0          0
4                       0                     0        0          0          0
5                       0                     0        0          0          0
6                       0                     0        1          0          0
  Hypertension SystolicBP DiastolicBP CholesterolTotal CholesterolLDL
1            0        142          72         242.3668       56.15090
2            0        115          64         231.1626      193.40800
3            0         99         116         284.1819      153.32276
4            0        118         115         159.5822       65.36664
5            0         94         117         237.6022       92.86970
6            0        168          62         280.7125      198.33463
  CholesterolHDL CholesterolTriglycerides      MMSE FunctionalAssessment
1       33.68256                162.18914 21.463532             6.518877
2       79.02848                294.63091 20.613267             7.118696
3       69.77229                 83.63832  7.356249             5.895077
4       68.45749                277.57736 13.991127             8.965106
5       56.87430                291.19878 13.517609             6.045039
6       79.08050                263.94365 27.517529             5.510144
  MemoryComplaints BehavioralProblems        ADL Confusion Disorientation
1                0                  0 1.72588346         0              0
2                0                  0 2.59242413         0              0
3                0                  0 7.11954774         0              1
4                0                  1 6.48122586         0              0
5                0                  0 0.01469122         0              0
6                0                  0 9.01568628         1              0
  PersonalityChanges DifficultyCompletingTasks Forgetfulness Diagnosis
1                  0                         1             0         0
2                  0                         0             1         0
3                  0                         1             0         0
4                  0                         0             0         0
5                  1                         1             0         0
6                  0                         0             0         0
  DoctorInCharge
1      XXXConfid
2      XXXConfid
3      XXXConfid
4      XXXConfid
5      XXXConfid
6      XXXConfid
> is_binary <- sapply(data, function(col) length(unique(col)) == 2)
> binary_data <- data[, is_binary]
> data_medicalHistory <- subset(binary_data, select = c(FamilyHistoryAlzheimers, CardiovascularDisease, Diabetes, Depression, HeadInjury, Hypertension, Diagnosis))
> names(data_medicalHistory)
[1] "FamilyHistoryAlzheimers" "CardiovascularDisease"  
[3] "Diabetes"                "Depression"             
[5] "HeadInjury"              "Hypertension"           
[7] "Diagnosis"              
> install.packages("bnlearn")
Warning in install.packages("bnlearn") :
  'lib = "C:/Program Files/R/R-4.4.2/library"' is not writable
--- Please select a CRAN mirror for use in this session ---
Error in contrib.url(repos, "source") : 
  trying to use CRAN without setting a mirror
> install.packages("bnlearn")
Installing package into ‘C:/Users/bv/AppData/Local/R/win-library/4.4’
(as ‘lib’ is unspecified)
--- Please select a CRAN mirror for use in this session ---
trying URL 'https://mirror.accum.se/mirror/CRAN/bin/windows/contrib/4.4/bnlearn_5.0.1.zip'
Content type 'application/zip' length 2613634 bytes (2.5 MB)
downloaded 2.5 MB

package ‘bnlearn’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
        C:\Users\bv\AppData\Local\Temp\RtmpIpR3Ul\downloaded_packages
> library(bnlearn)
> fit <- pc.stable(data_medicalHistory)
Error in data.type(x) : 
  variable FamilyHistoryAlzheimers is not supported in bnlearn (type: integer).
> data_medicalHistory$FamilyHistoryAlzheimers <- factor(data_medicalHistory$FamilyHistoryAlzheimers)
> data_medicalHistory$CardiovascularDisease <- factor(data_medicalHistory$CardiovascularDisease)
> data_medicalHistory$Diabetes <- factor(data_medicalHistory$Diabetes)
> data_medicalHistory$Depression <- factor(data_medicalHistory$Depression)
> data_medicalHistory$HeadInjury <- factor(data_medicalHistory$HeadInjury)
> data_medicalHistory$Hypertension <- factor(data_medicalHistory$Hypertension)
> data_medicalHistory$Diagnosis <- factor(data_medicalHistory$Diagnosis)
> fit <- pc.stable(data_medicalHistory)
> plot(fit)
> ibrary( dagitty )
Error in ibrary(dagitty) : could not find function "ibrary"
> library( dagitty )
Error in library(dagitty) : there is no package called ‘dagitty’
> install.packages(daggity)
Error: object 'daggity' not found
> install.packages(dagitty)
Error: object 'dagitty' not found
> chisq.test( data_medicalHistory$FamilyHistoryAlzheimers, data_medicalHistory$CardiovascularDisease )

        Pearson's Chi-squared test with Yates' continuity correction

data:  data_medicalHistory$FamilyHistoryAlzheimers and data_medicalHistory$CardiovascularDisease
X-squared = 0.79702, df = 1, p-value = 0.372

> chisq.test( data_medicalHistory$FamilyHistoryAlzheimers, data_medicalHistory$Depression )

        Pearson's Chi-squared test with Yates' continuity correction

data:  data_medicalHistory$FamilyHistoryAlzheimers and data_medicalHistory$Depression
X-squared = 1.2499e-30, df = 1, p-value = 1

> chisq.test( data_medicalHistory$FamilyHistoryAlzheimers, data_medicalHistory$HeadInjury )

        Pearson's Chi-squared test with Yates' continuity correction

data:  data_medicalHistory$FamilyHistoryAlzheimers and data_medicalHistory$HeadInjury
X-squared = 0.64584, df = 1, p-value = 0.4216

> chisq.test( data_medicalHistory$Depression, data_medicalHistory$HeadInjury )

        Pearson's Chi-squared test with Yates' continuity correction

data:  data_medicalHistory$Depression and data_medicalHistory$HeadInjury
X-squared = 0.068778, df = 1, p-value = 0.7931

> mdl <- sem( ’Diagnosis =~ FamilyHistoryAlzheimers + Depression + HeadInjury’, data=data_medicalHistory )
Error: unexpected invalid token in "mdl <- sem( ’"
> mdl <- sem( Diagnosis =~ FamilyHistoryAlzheimers + Depression + HeadInjury’, data=data_medicalHistory )
Error: unexpected invalid token in "mdl <- sem( Diagnosis =~ FamilyHistoryAlzheimers + Depression + HeadInjury’"
> mdl <- sem( Diagnosis =~ FamilyHistoryAlzheimers + Depression + HeadInjury, data=data_medicalHistory )
Error in sem(Diagnosis = ~FamilyHistoryAlzheimers + Depression + HeadInjury,  : 
  could not find function "sem"
> library(lavaan)
Error in library(lavaan) : there is no package called ‘lavaan’
> install.packages("lavaan")
Installing package into ‘C:/Users/bv/AppData/Local/R/win-library/4.4’
(as ‘lib’ is unspecified)
also installing the dependencies ‘mnormt’, ‘pbivnorm’, ‘numDeriv’, ‘quadprog’

trying URL 'https://mirror.accum.se/mirror/CRAN/bin/windows/contrib/4.4/mnormt_2.1.1.zip'
Content type 'application/zip' length 182714 bytes (178 KB)
downloaded 178 KB

trying URL 'https://mirror.accum.se/mirror/CRAN/bin/windows/contrib/4.4/pbivnorm_0.6.0.zip'
Content type 'application/zip' length 26143 bytes (25 KB)
downloaded 25 KB

trying URL 'https://mirror.accum.se/mirror/CRAN/bin/windows/contrib/4.4/numDeriv_2016.8-1.1.zip'
Content type 'application/zip' length 117304 bytes (114 KB)
downloaded 114 KB

trying URL 'https://mirror.accum.se/mirror/CRAN/bin/windows/contrib/4.4/quadprog_1.5-8.zip'
Content type 'application/zip' length 37203 bytes (36 KB)
downloaded 36 KB

trying URL 'https://mirror.accum.se/mirror/CRAN/bin/windows/contrib/4.4/lavaan_0.6-19.zip'
Content type 'application/zip' length 3809408 bytes (3.6 MB)
downloaded 3.6 MB

package ‘mnormt’ successfully unpacked and MD5 sums checked
package ‘pbivnorm’ successfully unpacked and MD5 sums checked
package ‘numDeriv’ successfully unpacked and MD5 sums checked
package ‘quadprog’ successfully unpacked and MD5 sums checked
package ‘lavaan’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
        C:\Users\bv\AppData\Local\Temp\RtmpIpR3Ul\downloaded_packages
> mdl <- sem( Diagnosis =~ FamilyHistoryAlzheimers + Depression + HeadInjury, data=data_medicalHistory )
Error in sem(Diagnosis = ~FamilyHistoryAlzheimers + Depression + HeadInjury,  : 
  could not find function "sem"
> library(lavaan)
This is lavaan 0.6-19
lavaan is FREE software! Please report any bugs.
> mdl <- sem( Diagnosis =~ FamilyHistoryAlzheimers + Depression + HeadInjury, data=data_medicalHistory )
Error: lavaan->lav_lavaan_step01_ovnames_initflat():  
   model is NULL or not a valid type for it!
> suppressMessages( library(lavaan) )
> mdl <- sem( Diagnosis =~ FamilyHistoryAlzheimers + Depression + HeadInjury, data=data_medicalHistory )
Error: lavaan->lav_lavaan_step01_ovnames_initflat():  
   model is NULL or not a valid type for it!
> mdl <- sem( 'Diagnosis =~ FamilyHistoryAlzheimers + Depression + HeadInjury', data=data_medicalHistory )
Error: lavaan->lav_lavaan_step01_ovnames_checklv():  
   some latent variable names collide with observed variable names: Diagnosis
> mdl <- sem( 'Diagnosis =~ FamilyHistoryAlzheimers + Depression + HeadInjury', data=data_medicalHistory[, !names(data_medicalHistory) %in% "Diagnosis"] )
Error: lavaan->lav_data_full():  
   unordered factor(s) detected; make them numeric or ordered: 
   FamilyHistoryAlzheimers Depression HeadInjury
> data_medicalHistory <- subset(binary_data, select = c(FamilyHistoryAlzheimers, CardiovascularDisease, Diabetes, Depression, HeadInjury, Hypertension, Diagnosis))
> mdl <- sem( 'Diagnosis =~ FamilyHistoryAlzheimers + Depression + HeadInjury', data=data_medicalHistory[, !names(data_medicalHistory) %in% "Diagnosis"] )
> coef( mdl )
                           Diagnosis=~Depression 
                                           0.368 
                           Diagnosis=~HeadInjury 
                                          -6.427 
FamilyHistoryAlzheimers~~FamilyHistoryAlzheimers 
                                           0.188 
                          Depression~~Depression 
                                           0.160 
                          HeadInjury~~HeadInjury 
                                           0.069 
                            Diagnosis~~Diagnosis 
                                           0.000 
> mdl <- sem( 'Diagnosis =~ HeadInjury + FamilyHistoryAlzheimers + Depression', data=data_medicalHistory[, !names(data_medicalHistory) %in% "Diagnosis"] )
> coef( mdl )
              Diagnosis=~FamilyHistoryAlzheimers 
                                          -0.156 
                           Diagnosis=~Depression 
                                          -0.057 
                          HeadInjury~~HeadInjury 
                                           0.069 
FamilyHistoryAlzheimers~~FamilyHistoryAlzheimers 
                                           0.188 
                          Depression~~Depression 
                                           0.160 
                            Diagnosis~~Diagnosis 
                                           0.016 
> lm( Diagnosis ~ FamilyHistoryAlzheimers + Depression + HeadInjury, data_medicalHistory )

Call:
lm(formula = Diagnosis ~ FamilyHistoryAlzheimers + Depression + 
    HeadInjury, data = data_medicalHistory)

Coefficients:
            (Intercept)  FamilyHistoryAlzheimers               Depression  
               0.367724                -0.036681                -0.007207  
             HeadInjury  
              -0.036446  

> 
