R version 4.2.1 (2022-06-23 ucrt) -- "Funny-Looking Kid"
Copyright (C) 2022 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

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

[Workspace loaded from ~/.RData]

> data <- read.csv("C:/Users/nikol/Downloads/archive (2)/alzheimers_disease_data")
Error in file(file, "rt") : cannot open the connection
In addition: Warning message:
In file(file, "rt") :
  cannot open file 'C:/Users/nikol/Downloads/archive (2)/alzheimers_disease_data': No such file or directory
> data <- read.csv("C:/Users/nikol/Downloads/archive/alzheimers_disease_data")
Error in file(file, "rt") : cannot open the connection
In addition: Warning message:
In file(file, "rt") :
  cannot open file 'C:/Users/nikol/Downloads/archive/alzheimers_disease_data': No such file or directory
> data <- read.csv("C:\Users\nikol\Downloads\archive\alzheimers_disease_data")
Error: '\U' used without hex digits in character string starting ""C:\U"
> data <- read.csv("C:\Users\nikol\Downloads\archive\alzheimers_.csvdisease_data")
Error: '\U' used without hex digits in character string starting ""C:\U"
> data <- read.csv("C:/Users/nikol/Documents/alzheimers_disease_data.csv")
Error in file(file, "rt") : cannot open the connection
In addition: Warning message:
In file(file, "rt") :
  cannot open file 'C:/Users/nikol/Documents/alzheimers_disease_data.csv': No such file or directory
> C:\Users\nikol\OneDrive\Documents\alzheimers_disease_data.csv
Error: unexpected symbol in "C:\Users"
> 
> print(3)
[1] 3
> data <- C:/Users/nikol/OneDrive/Documents/alzheimers_disease_data.csv
Error: unexpected '/' in "data <- C:/"
> data <- read.csv("C:/Users/nikol/OneDrive/Documents/alzheimers_disease_data.csv")
> head(data)
  PatientID Age Gender Ethnicity
1      4751  73      0         0
2      4752  89      0         0
3      4753  73      0         3
4      4754  74      1         0
5      4755  89      0         0
6      4756  86      1         1
  EducationLevel      BMI Smoking
1              2 22.92775       0
2              0 26.82768       0
3              1 17.79588       0
4              1 33.80082       1
5              0 20.71697       0
6              1 30.62689       0
  AlcoholConsumption PhysicalActivity
1          13.297218        6.3271125
2           4.542524        7.6198845
3          19.555085        7.8449878
4          12.209266        8.4280014
5          18.454356        6.3104607
6           4.140144        0.2110616
  DietQuality SleepQuality
1   1.3472143     9.025679
2   0.5187671     7.151293
3   1.8263347     9.673574
4   7.4356041     8.392554
5   0.7954975     5.597238
6   1.5849220     7.261953
  FamilyHistoryAlzheimers
1                       0
2                       0
3                       1
4                       0
5                       0
6                       0
  CardiovascularDisease Diabetes Depression
1                     0        1          1
2                     0        0          0
3                     0        0          0
4                     0        0          0
5                     0        0          0
6                     0        1          0
  HeadInjury Hypertension SystolicBP
1          0            0        142
2          0            0        115
3          0            0         99
4          0            0        118
5          0            0         94
6          0            0        168
  DiastolicBP CholesterolTotal CholesterolLDL
1          72         242.3668       56.15090
2          64         231.1626      193.40800
3         116         284.1819      153.32276
4         115         159.5822       65.36664
5         117         237.6022       92.86970
6          62         280.7125      198.33463
  CholesterolHDL CholesterolTriglycerides
1       33.68256                162.18914
2       79.02848                294.63091
3       69.77229                 83.63832
4       68.45749                277.57736
5       56.87430                291.19878
6       79.08050                263.94365
       MMSE FunctionalAssessment
1 21.463532             6.518877
2 20.613267             7.118696
3  7.356249             5.895077
4 13.991127             8.965106
5 13.517609             6.045039
6 27.517529             5.510144
  MemoryComplaints BehavioralProblems
1                0                  0
2                0                  0
3                0                  0
4                0                  1
5                0                  0
6                0                  0
         ADL Confusion Disorientation
1 1.72588346         0              0
2 2.59242413         0              0
3 7.11954774         0              1
4 6.48122586         0              0
5 0.01469122         0              0
6 9.01568628         1              0
  PersonalityChanges DifficultyCompletingTasks
1                  0                         1
2                  0                         0
3                  0                         1
4                  0                         0
5                  1                         1
6                  0                         0
  Forgetfulness Diagnosis DoctorInCharge
1             0         0      XXXConfid
2             1         0      XXXConfid
3             0         0      XXXConfid
4             0         0      XXXConfid
5             0         0      XXXConfid
6             0         0      XXXConfid
> > is_binary <- sapply(data, function(col) length(unique(col)) == 2)
Error: unexpected '>' in ">"
> is_binary <- sapply(data, function(col) length(unique(col)) == 2)
> 
> binary_data <- data[, is_binary]
> data_medicalHistory <- subset(binary_data, select = c(FamilyHistoryAlzheimers, CardiovascularDisease, Diabetes, Depression, HeadInjury, Hypertension, Diagnosis, MemoryComplaints))
> names(data_medicalHistory)
[1] "FamilyHistoryAlzheimers"
[2] "CardiovascularDisease"  
[3] "Diabetes"               
[4] "Depression"             
[5] "HeadInjury"             
[6] "Hypertension"           
[7] "Diagnosis"              
[8] "MemoryComplaints"       
> install.packages("bnlearn")
Installing package into ‘C:/Users/nikol/AppData/Local/R/win-library/4.2’
(as ‘lib’ is unspecified)
Warning in install.packages :
  package ‘bnlearn’ is not available for this version of R

A version of this package for your version of R might be available elsewhere,
see the ideas at
https://cran.r-project.org/doc/manuals/r-patched/R-admin.html#Installing-packages
> chisq.test( data_medicalHistory$FamilyHistoryAlzheimers, data_medicalHistory$Diabetes )

	Pearson's Chi-squared test with Yates'
	continuity correction

data:  data_medicalHistory$FamilyHistoryAlzheimers and data_medicalHistory$Diabetes
X-squared = 1.0035, df = 1, p-value =
0.3165

> chisq.test( data_medicalHistory$HeadInjury, data_medicalHistory$Diabetes )

	Pearson's Chi-squared test with Yates'
	continuity correction

data:  data_medicalHistory$HeadInjury and data_medicalHistory$Diabetes
X-squared = 1.9316e-29, df = 1, p-value =
1

> chisq.test( data_medicalHistory$Diabetes, data_medicalHistory$HeadInjury )

	Pearson's Chi-squared test with Yates'
	continuity correction

data:  data_medicalHistory$Diabetes and data_medicalHistory$HeadInjury
X-squared = 1.9316e-29, df = 1, p-value =
1

> data = chisq.test( data_medicalHistory$FamilyHistoryAlzheimers, data_medicalHistory$CardiovascularDisease )
> data <- data_medicalHistory
> library(dplyr)

Attaching package: ‘dplyr’

The following objects are masked from ‘package:stats’:

    filter, lag

The following objects are masked from ‘package:base’:

    intersect, setdiff, setequal, union

Warning message:
package ‘dplyr’ was built under R version 4.2.3 
> 
> 
> joint_counts <- data %>%
+     group_by(x, y, z) %>%
+     summarise(count = n(), .groups = "drop")
Error in `group_by()`:
! Must group by variables found in
  `.data`.
Column `x` is not found.
Column `y` is not found.
Column `z` is not found.
Run `rlang::last_trace()` to see where the error occurred.
> joint_counts <- data %>%
+     group_by(HeadInjury, Diagnosis, MemoryComplaints) %>%
+     summarise(count = n(), .groups = "drop")
> 
> total_count <- sum(joint_counts$count)
> 
> joint_counts <- joint_counts %>%
+     mutate(joint_prob = count / total_count) # P(HeadInjury, Diagnosis, MemoryComplaints)
> 
> P_MemoryComplaints <- joint_counts %>%
+     group_by(MemoryComplaints) %>%
+     summarise(P_MemoryComplaints = sum(joint_prob), .groups = "drop")
> 
> P_HeadInjury_MemoryComplaints <- joint_counts %>%
+     group_by(HeadInjury, MemoryComplaints) %>%
+     summarise(P_HeadInjury_MemoryComplaints = sum(joint_prob), .groups = "drop")
> 
> P(HeadInjury, Diagnosis, MemoryComplaints) / P(HeadInjury, MemoryComplaints)
Error in P(HeadInjury, Diagnosis, MemoryComplaints) : 
  could not find function "P"
> conditional_probs <- joint_counts %>%
+     left_join(P_HeadInjury_MemoryComplaints, by = c("HeadInjury", "MemoryComplaints")) %>%
+     mutate(P_Diagnosis_given_HeadInjury_MemoryComplaints = joint_prob / P_HeadInjury_MemoryComplaints)
> 
> result <- conditional_probs %>%
+     left_join(P_MemoryComplaints, by = "MemoryComplaints") %>%
+     mutate(result = P_Diagnosis_given_HeadInjury_MemoryComplaints * P_MemoryComplaints)
> 
> print(result %>% select(HeadInjury, Diagnosis, MemoryComplaints, result))
# A tibble: 8 × 4
  HeadInjury Diagnosis MemoryComplaints result
       <int>     <int>            <int>  <dbl>
1          0         0                0 0.570 
2          0         0                1 0.0744
3          0         1                0 0.222 
4          0         1                1 0.134 
5          1         0                0 0.588 
6          1         0                1 0.0809
7          1         1                0 0.204 
8          1         1                1 0.127 
> 
> joint_counts <- data %>%
+     group_by(x, y, z) %>%
+     summarise(count = n(), .groups = "drop")
Error in `group_by()`:
! Must group by variables found in
  `.data`.
Column `x` is not found.
Column `y` is not found.
Column `z` is not found.
Run `rlang::last_trace()` to see where the error occurred.
> joint_counts <- data %>%
+     group_by(HeadInjury, Diagnosis, MemoryComplaints) %>%
+     summarise(count = n(), .groups = "drop")
> 
> 
> total_count <- sum(joint_counts$count)
> joint_counts <- joint_counts %>%
+     mutate(joint_prob = count / total_count) # P(HeadInjury, Diagnosis, MemoryComplaints)
> 
> group_by(MemoryComplaints) %>%
+     summarise(P_MemoryComplaints = sum(joint_prob), .groups = "drop")
Error in group_by(MemoryComplaints) : object 'MemoryComplaints' not found
> # Input table
> data <- data.frame(
+     x = c(0, 0, 0, 0, 1, 1, 1, 1),
+     y = c(0, 0, 1, 1, 0, 0, 1, 1),
+     z = c(0, 1, 0, 1, 0, 1, 0, 1),
+     P_xyz = c(0.570, 0.0744, 0.222, 0.134, 0.588, 0.0809, 0.204, 0.127)
+ )
> 
> library(dplyr)
> 
> # Compute P(z)
> P_z <- data %>%
+     group_by(z) %>%
+     summarise(P_z = sum(P_xyz), .groups = "drop")
> 
> # Compute P(x, z)
> P_xz <- data %>%
+     group_by(x, z) %>%
+     summarise(P_xz = sum(P_xyz), .groups = "drop")
> 
> # Compute P(y = 1 | x, z) for x = 1
> conditional_probs <- data %>%
+     filter(y == 1) %>%   # Focus on y = 1
+     left_join(P_xz, by = c("x", "z")) %>% # Add P(x, z)
+     mutate(P_y_given_xz = P_xyz / P_xz) %>% # Compute P(y | x, z)
+     filter(x == 1) # Focus on x = 1
> 
> # Merge with P(z)
> result <- conditional_probs %>%
+     left_join(P_z, by = "z") %>% # Add P(z)
+     mutate(term = P_y_given_xz * P_z) %>% # Compute each term
+     summarise(final_result = sum(term)) # Sum the terms
> 
> # Output the result
> print(result$final_result)
[1] 0.6623054
