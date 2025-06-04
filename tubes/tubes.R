# 1. Install dan Load Paket yang Dibutuhkan
install.packages("readxl")
install.packages("GGally")
library(readxl)
library(ggplot2)
library(GGally)

# 2. Baca File Excel
file_path <- "C:/ZAKY/s1-telu/sem1/statistics/tubes/CAD alizadeh.xls"
data <- read_excel(file_path, sheet = "CAD")

# 3. Pilih Kolom untuk Analisis
# Misalnya: Age, Weight, BMI, BP, HB, WBC
selected_data <- data[, c("Age", "Weight", "BMI", "BP", "HB", "WBC")]

# 4. Hitung Matriks Korelasi
cor_matrix <- cor(selected_data, use = "complete.obs")
print(cor_matrix)

# 5. Visualisasi Korelasi dengan Heatmap
heatmap(cor_matrix, main = "Heatmap Matriks Korelasi", col = heat.colors(10), scale = "none")

# 6. Buat Scatter Plot dengan ggpairs
ggpairs(selected_data, 
        upper = list(continuous = wrap("cor", size = 4)))
