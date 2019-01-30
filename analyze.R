rm(list=ls())

library("ggplot2")

library(lme4)
library(lm)

library(readxl)

perf_long_study_full_data <- read_excel("C:/Users/sselv/Desktop/Alzheimer/LMER Alzheimer New/Longitudinal_Normalized_Perf.xlsx")

#--------------------------------

#Model1 - Cluster1_31

lmer_model1_df <- perf_long_study_full_data[, c("SubjectID","Gender","Model1Parm","TimeDiffInYears","GrpInteraction","Cluster1_31")]
lmer_model1_df <- lmer_model1_df[which(lmer_model1_df$Model1Parm!='NA'),]

model1.R.Subj = lmer(Cluster1_31 ~ Gender + Model1Parm + GrpInteraction + TimeDiffInYears + (1|SubjectID), data=lmer_model1_df)
model1.R.Subj_Time = lmer(Cluster1_31 ~ Gender + Model1Parm +  GrpInteraction + (1|SubjectID) + (TimeDiffInYears|SubjectID), data=lmer_model1_df)
model1.R.Time = lmer(Cluster1_31 ~ SubjectID + Gender + Model1Parm + GrpInteraction + (TimeDiffInYears|SubjectID), data=lmer_model1_df)
model1.Fixed = lm(Cluster1_31 ~ SubjectID + Gender + Model1Parm + GrpInteraction + TimeDiffInYears, data=lmer_model1_df)

#Model2 - Cluster1_36

lmer_model2_df <- perf_long_study_full_data[, c("SubjectID","Gender","Model1Parm","TimeDiffInYears","GrpInteraction","Cluster1_36")]
lmer_model2_df <- lmer_model2_df[which(lmer_model2_df$Model1Parm!='NA'),]

model2.R.Subj = lmer(Cluster1_36 ~ Gender + Model1Parm + GrpInteraction + TimeDiffInYears + (1|SubjectID), data=lmer_model2_df)
model2.R.Subj_Time = lmer(Cluster1_36 ~ Gender + Model1Parm +  GrpInteraction + (1|SubjectID) + (TimeDiffInYears|SubjectID), data=lmer_model2_df)
model2.R.Time = lmer(Cluster1_36 ~ SubjectID + Gender + Model1Parm + GrpInteraction + (TimeDiffInYears|SubjectID), data=lmer_model2_df)
model2.Fixed = lm(Cluster1_36 ~ SubjectID + Gender + Model1Parm + GrpInteraction + TimeDiffInYears, data=lmer_model2_df) 

#Model3 - Cluster1_38

lmer_model3_df <- perf_long_study_full_data[, c("SubjectID","Gender","Model1Parm","TimeDiffInYears","GrpInteraction","Cluster1_38")]
lmer_model3_df <- lmer_model3_df[which(lmer_model3_df$Model1Parm!='NA'),]

model3.R.Subj = lmer(Cluster1_38 ~ Gender + Model1Parm + GrpInteraction + TimeDiffInYears + (1|SubjectID), data=lmer_model3_df)
model3.R.Subj_Time = lmer(Cluster1_38 ~ Gender + Model1Parm +  GrpInteraction + (1|SubjectID) + (TimeDiffInYears|SubjectID), data=lmer_model3_df)
model3.R.Time = lmer(Cluster1_38 ~ SubjectID + Gender + Model1Parm + GrpInteraction + (TimeDiffInYears|SubjectID), data=lmer_model3_df)
model3.Fixed = lm(Cluster1_38 ~ SubjectID + Gender + Model1Parm + GrpInteraction + TimeDiffInYears, data=lmer_model3_df) 

#Model4 - Cluster1_87

lmer_model4_df <- perf_long_study_full_data[, c("SubjectID","Gender","Model1Parm","TimeDiffInYears","GrpInteraction","Cluster1_87")]
lmer_model4_df <- lmer_model4_df[which(lmer_model4_df$Model1Parm!='NA'),]

model4.R.Subj = lmer(Cluster1_87 ~ Gender + Model1Parm + GrpInteraction + TimeDiffInYears + (1|SubjectID), data=lmer_model4_df)
model4.R.Subj_Time = lmer(Cluster1_87 ~ Gender + Model1Parm +  GrpInteraction + (1|SubjectID) + (TimeDiffInYears|SubjectID), data=lmer_model4_df)
model4.R.Time = lmer(Cluster1_87 ~ SubjectID + Gender + Model1Parm + GrpInteraction + (TimeDiffInYears|SubjectID), data=lmer_model4_df)
model4.Fixed = lm(Cluster1_87 ~ SubjectID + Gender + Model1Parm + GrpInteraction + TimeDiffInYears, data=lmer_model4_df) 

#Model5 - Cluster1_108

lmer_model5_df <- perf_long_study_full_data[, c("SubjectID","Gender","Model1Parm","TimeDiffInYears","GrpInteraction","Cluster1_108")]
lmer_model5_df <- lmer_model5_df[which(lmer_model5_df$Model1Parm!='NA'),]

model5.R.Subj = lmer(Cluster1_108 ~ Gender + Model1Parm + GrpInteraction + TimeDiffInYears + (1|SubjectID), data=lmer_model5_df)
model5.R.Subj_Time = lmer(Cluster1_108 ~ Gender + Model1Parm +  GrpInteraction + (1|SubjectID) + (TimeDiffInYears|SubjectID), data=lmer_model5_df)
model5.R.Time = lmer(Cluster1_108 ~ SubjectID + Gender + Model1Parm + GrpInteraction + (TimeDiffInYears|SubjectID), data=lmer_model5_df)
model5.Fixed = lm(Cluster1_108 ~ SubjectID + Gender + Model1Parm + GrpInteraction + TimeDiffInYears, data=lmer_model5_df) 

#Model6 - Cluster1_1317

lmer_model6_df <- perf_long_study_full_data[, c("SubjectID","Gender","Model1Parm","TimeDiffInYears","GrpInteraction","Cluster1_1317")]
lmer_model6_df <- lmer_model6_df[which(lmer_model6_df$Model1Parm!='NA'),]

model6.R.Subj = lmer(Cluster1_1317 ~ Gender + Model1Parm + GrpInteraction + TimeDiffInYears + (1|SubjectID), data=lmer_model6_df)
model6.R.Subj_Time = lmer(Cluster1_1317 ~ Gender + Model1Parm +  GrpInteraction + (1|SubjectID) + (TimeDiffInYears|SubjectID), data=lmer_model6_df)
model6.R.Time = lmer(Cluster1_1317 ~ SubjectID + Gender + Model1Parm + GrpInteraction + (TimeDiffInYears|SubjectID), data=lmer_model6_df)
model6.Fixed = lm(Cluster1_1317 ~ SubjectID + Gender + Model1Parm + GrpInteraction + TimeDiffInYears, data=lmer_model6_df) 

#Model7 - Cluster4_36

lmer_model7_df <- perf_long_study_full_data[, c("SubjectID","Gender","Model1Parm","TimeDiffInYears","GrpInteraction","Cluster4_36")]
lmer_model7_df <- lmer_model7_df[which(lmer_model7_df$Model1Parm!='NA'),]

model7.R.Subj = lmer(Cluster4_36 ~ Gender + Model1Parm + GrpInteraction + TimeDiffInYears + (1|SubjectID), data=lmer_model7_df)
model7.R.Subj_Time = lmer(Cluster4_36 ~ Gender + Model1Parm +  GrpInteraction + (1|SubjectID) + (TimeDiffInYears|SubjectID), data=lmer_model7_df)
model7.R.Time = lmer(Cluster4_36 ~ SubjectID + Gender + Model1Parm + GrpInteraction + (TimeDiffInYears|SubjectID), data=lmer_model7_df)
model7.Fixed = lm(Cluster4_36 ~ SubjectID + Gender + Model1Parm + GrpInteraction + TimeDiffInYears, data=lmer_model7_df) 

#Model8 - Cluster4_12

lmer_model8_df <- perf_long_study_full_data[, c("SubjectID","Gender","Model1Parm","TimeDiffInYears","GrpInteraction","Cluster4_12")]
lmer_model8_df <- lmer_model8_df[which(lmer_model8_df$Model1Parm!='NA'),]

model8.R.Subj = lmer(Cluster4_12 ~ Gender + Model1Parm + GrpInteraction + TimeDiffInYears + (1|SubjectID), data=lmer_model8_df)
model8.R.Subj_Time = lmer(Cluster4_12 ~ Gender + Model1Parm +  GrpInteraction + (1|SubjectID) + (TimeDiffInYears|SubjectID), data=lmer_model8_df)
model8.R.Time = lmer(Cluster4_12 ~ SubjectID + Gender + Model1Parm + GrpInteraction + (TimeDiffInYears|SubjectID), data=lmer_model8_df)
model8.Fixed = lm(Cluster4_12 ~ SubjectID + Gender + Model1Parm + GrpInteraction + TimeDiffInYears, data=lmer_model8_df) 

#Model9 - Cluster6_12

lmer_model9_df <- perf_long_study_full_data[, c("SubjectID","Gender","Model1Parm","TimeDiffInYears","GrpInteraction","Cluster6_12")]
lmer_model9_df <- lmer_model9_df[which(lmer_model9_df$Model1Parm!='NA'),]

model9.R.Subj = lmer(Cluster6_12 ~ Gender + Model1Parm + GrpInteraction + TimeDiffInYears + (1|SubjectID), data=lmer_model9_df)
model9.R.Subj_Time = lmer(Cluster6_12 ~ Gender + Model1Parm +  GrpInteraction + (1|SubjectID) + (TimeDiffInYears|SubjectID), data=lmer_model9_df)
model9.R.Time = lmer(Cluster6_12 ~ SubjectID + Gender + Model1Parm + GrpInteraction + (TimeDiffInYears|SubjectID), data=lmer_model9_df)
model9.Fixed = lm(Cluster6_12 ~ SubjectID + Gender + Model1Parm + GrpInteraction + TimeDiffInYears, data=lmer_model9_df) 

#Model10 - Cluster6_13

lmer_model10_df <- perf_long_study_full_data[, c("SubjectID","Gender","Model1Parm","TimeDiffInYears","GrpInteraction","Cluster6_13")]
lmer_model10_df <- lmer_model10_df[which(lmer_model10_df$Model1Parm!='NA'),]

model10.R.Subj = lmer(Cluster6_13 ~ Gender + Model1Parm + GrpInteraction + TimeDiffInYears + (1|SubjectID), data=lmer_model10_df)
model10.R.Subj_Time = lmer(Cluster6_13 ~ Gender + Model1Parm +  GrpInteraction + (1|SubjectID) + (TimeDiffInYears|SubjectID), data=lmer_model10_df)
model10.R.Time = lmer(Cluster6_13 ~ SubjectID + Gender + Model1Parm + GrpInteraction + (TimeDiffInYears|SubjectID), data=lmer_model10_df)
model10.Fixed = lm(Cluster6_13 ~ SubjectID + Gender + Model1Parm + GrpInteraction + TimeDiffInYears, data=lmer_model10_df) 

#Model11 - Cluster6_14

lmer_model11_df <- perf_long_study_full_data[, c("SubjectID","Gender","Model1Parm","TimeDiffInYears","GrpInteraction","Cluster6_14")]
lmer_model11_df <- lmer_model11_df[which(lmer_model11_df$Model1Parm!='NA'),]

model11.R.Subj = lmer(Cluster6_14 ~ Gender + Model1Parm + GrpInteraction + TimeDiffInYears + (1|SubjectID), data=lmer_model11_df)
model11.R.Subj_Time = lmer(Cluster6_14 ~ Gender + Model1Parm +  GrpInteraction + (1|SubjectID) + (TimeDiffInYears|SubjectID), data=lmer_model11_df)
model11.R.Time = lmer(Cluster6_14 ~ SubjectID + Gender + Model1Parm + GrpInteraction + (TimeDiffInYears|SubjectID), data=lmer_model11_df)
model11.Fixed = lm(Cluster6_14 ~ SubjectID + Gender + Model1Parm + GrpInteraction + TimeDiffInYears, data=lmer_model11_df) 

#Model12 - Cluster6_32

lmer_model12_df <- perf_long_study_full_data[, c("SubjectID","Gender","Model1Parm","TimeDiffInYears","GrpInteraction","Cluster6_32")]
lmer_model12_df <- lmer_model12_df[which(lmer_model12_df$Model1Parm!='NA'),]

model12.R.Subj = lmer(Cluster6_32 ~ Gender + Model1Parm + GrpInteraction + TimeDiffInYears + (1|SubjectID), data=lmer_model12_df)
model12.R.Subj_Time = lmer(Cluster6_32 ~ Gender + Model1Parm +  GrpInteraction + (1|SubjectID) + (TimeDiffInYears|SubjectID), data=lmer_model12_df)
model12.R.Time = lmer(Cluster6_32 ~ SubjectID + Gender + Model1Parm + GrpInteraction + (TimeDiffInYears|SubjectID), data=lmer_model12_df)
model12.Fixed = lm(Cluster6_32 ~ SubjectID + Gender + Model1Parm + GrpInteraction + TimeDiffInYears, data=lmer_model12_df) 

#Model13 - Cluster6_44

lmer_model13_df <- perf_long_study_full_data[, c("SubjectID","Gender","Model1Parm","TimeDiffInYears","GrpInteraction","Cluster6_44")]
lmer_model13_df <- lmer_model13_df[which(lmer_model13_df$Model1Parm!='NA'),]

model13.R.Subj = lmer(Cluster6_44 ~ Gender + Model1Parm + GrpInteraction + TimeDiffInYears + (1|SubjectID), data=lmer_model13_df)
model13.R.Subj_Time = lmer(Cluster6_44 ~ Gender + Model1Parm +  GrpInteraction + (1|SubjectID) + (TimeDiffInYears|SubjectID), data=lmer_model13_df)
model13.R.Time = lmer(Cluster6_44 ~ SubjectID + Gender + Model1Parm + GrpInteraction + (TimeDiffInYears|SubjectID), data=lmer_model13_df)
model13.Fixed = lm(Cluster6_44 ~ SubjectID + Gender + Model1Parm + GrpInteraction + TimeDiffInYears, data=lmer_model13_df) 

#Model14 - Cluster6_86

lmer_model14_df <- perf_long_study_full_data[, c("SubjectID","Gender","Model1Parm","TimeDiffInYears","GrpInteraction","Cluster6_86")]
lmer_model14_df <- lmer_model14_df[which(lmer_model14_df$Model1Parm!='NA'),]

model14.R.Subj = lmer(Cluster6_86 ~ Gender + Model1Parm + GrpInteraction + TimeDiffInYears + (1|SubjectID), data=lmer_model14_df)
model14.R.Subj_Time = lmer(Cluster6_86 ~ Gender + Model1Parm +  GrpInteraction + (1|SubjectID) + (TimeDiffInYears|SubjectID), data=lmer_model14_df)
model14.R.Time = lmer(Cluster6_86 ~ SubjectID + Gender + Model1Parm + GrpInteraction + (TimeDiffInYears|SubjectID), data=lmer_model14_df)
model14.Fixed = lm(Cluster6_86 ~ SubjectID + Gender + Model1Parm + GrpInteraction + TimeDiffInYears, data=lmer_model14_df) 

#Model15 - Cluster6_1722

lmer_model15_df <- perf_long_study_full_data[, c("SubjectID","Gender","Model1Parm","TimeDiffInYears","GrpInteraction","Cluster6_1722")]
lmer_model15_df <- lmer_model15_df[which(lmer_model15_df$Model1Parm!='NA'),]

model15.R.Subj = lmer(Cluster6_1722 ~ Gender + Model1Parm + GrpInteraction + TimeDiffInYears + (1|SubjectID), data=lmer_model15_df)
model15.R.Subj_Time = lmer(Cluster6_1722 ~ Gender + Model1Parm +  GrpInteraction + (1|SubjectID) + (TimeDiffInYears|SubjectID), data=lmer_model15_df)
model15.R.Time = lmer(Cluster6_1722 ~ SubjectID + Gender + Model1Parm + GrpInteraction + (TimeDiffInYears|SubjectID), data=lmer_model15_df)
model15.Fixed = lm(Cluster6_1722 ~ SubjectID + Gender + Model1Parm + GrpInteraction + TimeDiffInYears, data=lmer_model15_df) 

#Model16 - Cluster6_4

lmer_model16_df <- perf_long_study_full_data[, c("SubjectID","Gender","Model1Parm","TimeDiffInYears","GrpInteraction","Cluster6_4")]
lmer_model16_df <- lmer_model16_df[which(lmer_model16_df$Model1Parm!='NA'),]

model16.R.Subj = lmer(Cluster6_4 ~ Gender + Model1Parm + GrpInteraction + TimeDiffInYears + (1|SubjectID), data=lmer_model16_df)
model16.R.Subj_Time = lmer(Cluster6_4 ~ Gender + Model1Parm +  GrpInteraction + (1|SubjectID) + (TimeDiffInYears|SubjectID), data=lmer_model16_df)
model16.R.Time = lmer(Cluster6_4 ~ SubjectID + Gender + Model1Parm + GrpInteraction + (TimeDiffInYears|SubjectID), data=lmer_model16_df)
model16.Fixed = lm(Cluster6_4 ~ SubjectID + Gender + Model1Parm + GrpInteraction + TimeDiffInYears, data=lmer_model16_df) 
