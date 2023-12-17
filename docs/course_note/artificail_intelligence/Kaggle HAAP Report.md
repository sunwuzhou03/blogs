# Predict and ARM onHAAP Dataset 

# I. Dataset Introducing
This data comes from kaggle, contains 14 dimensions, 303 samples, the specific variables are described in the following table

|variable|description|value area|
|-|-|-|
|output|Presence of heart disease (categorical variable)|target : 0= less chance of heart attack 1= more chance of heart attack|
|age|age (continuous variable)|[29, 77]|
|sex|sex (continuous variable)|0=female, 1=male|
|cp|Experience of chest pain (categorical variable)|1=typical angina, 2=atypical angina, 3=non-angina, 4=asymptomatic|
|trtbps|Resting blood pressure (continuous variable Hg)|[94， 200]|
|chol|Human cholesterol (continuous variable mg/dl)|[126, 564]|
|fbs|Fasting blood glucose (categorical variable >120 mg/dl)|0=false, 1=true|
|restecg|Resting ECG measurements (categorical variables)|0=normal, 1=with ST-T wave abnormalities, 2=probable or definite left ventricular hypertrophy by Estes criteria|
|thalachh|Maximum heart rate (continuous variable)|[71, 202]|
|exng|Exercise-induced angina (categorical variable)|0=no, 1=yes|
|oldpeak|ST-segment depression induced by exercise relative to rest (continuous variable)|[0, 6.2]|
|slp|Slope of peak motion ST segment (categorical variable)|1=rising, 2=flat, 3=falling|
|caa|Number of major vessels (continuous variable)|[0, 3]|
|thall|Blood disorders of thalassemia (categorical variable)|1=normal, 2=fixed defects, 3=reversible defects|

# II Fomulation and Analysis

## Data exploration
### data presentation
![](../../attachments/Pasted%20image%2020231218000659.png)

We can discover that there is no miss value in the dataset and dataset shape is (303,14). There are 13 features and the 'output' is label.

## data heatmap for null value

According to the above figure, we also can discover there is no null value in this dataset. So there is no need to do the miss data processing.

# distribution of all features
![](../../attachments/Pasted%20image%2020231218001250.png)

# references
- [Blood pressure - Wikipedia](https://en.wikipedia.org/wiki/Blood_pressure)
- [Cholesterol - Wikipedia](https://en.wikipedia.org/wiki/Cholesterol)
- [Normal Heart Rate By Age: Range, Charts And More – Forbes Health⁤](https://www.forbes.com/health/healthy-aging/normal-heart-rate-by-age/)
- [Diagnostic and prognostic value of ST segment depression limited to the recovery phase of exercise stress test - PMC (nih.gov)](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1768611/)
- [Python可视化 | Seaborn5分钟入门(七)——pairplot - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/98729226)
- 