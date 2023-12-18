# Predict and ARM onHAAP Dataset 

# I. Dataset Introducing
This data comes from kaggle, contains 14 dimensions, 303 samples, the specific variables are described in the following table.

|variable|description|value area|
|-|-|-|
|output|Presence of heart disease (categorical variable)|target : 0= less chance of heart attack 1= more chance of heart attack|
|age|age (continuous variable)|[29, 77]|
|sex|sex (continuous variable)|0=female, 1=male|
|cp|Experience of chest pain (categorical variable)|0=typical angina, 1=atypical angina, 2=non-angina, 3=asymptomatic|
|trtbps|Resting blood pressure (continuous variable Hg)|[94， 200]|
|chol|Human cholesterol (continuous variable mg/dl)|[126, 564]|
|fbs|Fasting blood glucose (categorical variable >120 mg/dl)|0=false, 1=true|
|restecg|Resting ECG measurements (categorical variables)|0=normal, 1=with ST-T wave abnormalities, 2=probable or definite left ventricular hypertrophy by Estes criteria|
|thalachh|Maximum heart rate (continuous variable)|[71, 202]|
|exng|Exercise-induced angina (categorical variable)|0=no, 1=yes|
|oldpeak|ST-segment depression induced by exercise relative to rest (continuous variable)|[0, 6.2]|
|slp|Slope of peak motion ST segment (categorical variable)|0=rising, 1=flat, 2=falling|
|caa|Number of major vessels (continuous variable)|[0, 3]|
|thall|Blood disorders of thalassemia (categorical variable)|0=null,1=normal, 2=fixed defects, 3=reversible defects|

# II Fomulation and Analysis

## Data exploration
### Data presentation
![|425](../../attachments/Pasted%20image%2020231218000659.png)
![|425](../../attachments/Pasted%20image%2020231218004152.png)

Use the python code to do the data exploration, we can know the data unique value. According the above figure, we can valid the data descirption in the I.

### Distribution of all features
![|425](../../attachments/Pasted%20image%2020231218001250.png)

We can dCorrelation heatmap figure
	- ![|425](../../attachments/Pasted%20image%2020231218012000.png)
In the pairplot figure, we can find the distributions of  features **age, cp, tahlachh, oldpeak, caa** with respect to the two values of **output** are more **differentiated**. These features are more **discriminatory** for outpus.

In the correlation heatmap figure, we can know the feature **cp, thalachh, exng, oldpeak, thall, caa, thall** has **highest correlation** with feature **output**.

### detaily exploation on age
- Age distribution
	- ![|425](../../attachments/Pasted%20image%2020231218015134.png)
- Discretized age distribution
	- ![|425](../../attachments/Pasted%20image%2020231218020129.png)
- Histogram of heart disease prevalence at different ages
	- ![|425](../../attachments/Pasted%20image%2020231218020241.png)

The above figure show us the yound people and middle people have more rate to have a heart attact than the old people. I think this result is contrary to the attempted. 

### detaily exploration on sex
- sex histogram and detail count
	- ![|425](../../attachments/Pasted%20image%2020231218022745.png)
	- female: 96, male 207
- Heart Disease Frequency for Sex
	- ![|425](../../attachments/Pasted%20image%2020231218022858.png)
- Heart Disease Prediction - Gender and Prevalence Analysis
	- ![|425](../../attachments/Pasted%20image%2020231218022924.png)
- Distribution of gender and illness
	- ![|425](../../attachments/Pasted%20image%2020231218023007.png)

According the above figure, we can find the there is no gender balance in the given data set and also can discover the male ratio is bigger than female under the condition of less chance of heart disease but roughly eauql under the condition of high chance of heart disease. 



# references
- [Heart Attack Analysis & Prediction Dataset (kaggle.com)](https://www.kaggle.com/datasets/rashikrahmanpritom/heart-attack-analysis-prediction-dataset/discussion/329925)
- [Blood pressure - Wikipedia](https://en.wikipedia.org/wiki/Blood_pressure)
- [Cholesterol - Wikipedia](https://en.wikipedia.org/wiki/Cholesterol)
- [Normal Heart Rate By Age: Range, Charts And More – Forbes Health⁤](https://www.forbes.com/health/healthy-aging/normal-heart-rate-by-age/)
- [Diagnostic and prognostic value of ST segment depression limited to the recovery phase of exercise stress test - PMC (nih.gov)](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1768611/)
- [Python可视化 | Seaborn5分钟入门(七)——pairplot - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/98729226)
- [基于Kaggle心脏病数据集的数据分析和分类预测-StatisticalLearning统计学习实验报告_kaggle医学数据分析-CSDN博客⁤](https://blog.csdn.net/qq_40605313/article/details/120061220)
- 