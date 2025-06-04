data <- diabetes_prediction_dataset
data_30 <- data[1:30, ]
plot(data_30$age,data_30$bmi)
cor(data_30$age,data_30$bmi,method='pearson')
plot(data_30$age,data_30$blood_glucose_level)
cor(data_30$age,data_30$blood_glucose_level,method='pearson')
plot(data_30$bmi,data_30$HbA1c_level)
cor(data_30$bmi,data_30$HbA1c_level,method='pearson')