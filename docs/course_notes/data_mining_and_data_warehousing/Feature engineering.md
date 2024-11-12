
# What is the feature engineering about?
- machine learning and data mining algorithms use some input data to create output
- goal of fe
	- preparing the proper input dataset, compatible with the machine learning algorithm requirements
	- improving the performance of machine learning models
- according to a survey in Forbes, data secientists spend 80% of their time on data preparation

# Feature Engineerig-Science or Art?
- Feature Engineering is the process of selecting and extracting useful, predictive signals from data

# Why do we need to engineer features?
- some machine learning libraries do not support missing values or strings as input, for example scikit-learn
- some machine learning models are sensitie to magnitude of features
- some algorithm are sensitive to outliers
- some variavles provide no information in their raw format, for example dates
- often variable pre-processing allow us to capture more information, which can boost algorithm performance
- frequently variable combinations are more predictive than variables in isolation, for example the sum or the mean of a group of variables
- some variables contain information about transactions, provide time-stamped data, and we may want to aggregate them into static view
- **feature engineering is more difficult because it's domain-specific**
- 

# Yet some final comments about FE
- more data beats a cleverer algorithm

# Why exactly do I need to learn?
- missing data imputation
- categorical variable encoding
- Numerical variable transformation
- Discretization
- Engineering of datetime variables
- Engineering of coordinates - GIS data
- Feature extraction from text
- Feature extraction from images
- Feature extraction from times series
- New feature creation by combing existing variables

# Feature Encoding Methods
- labeled encoding
- one-hot encoding
- frequency encoding
# Missing data imputation
reason
- euipment malfunction
- inconsisdent with other recorded data and thus deleted
- data not entered due to misunderstanding
- certain data may not to be considered important at the time of entry
- not register history or changes of the date

# How to handle missing data?
- ignore the tuple
- fill in the missing value manually
- use a global constant to fill in the missing value
- use the attribute mean to fill in the missing value
- use the attribute mean for all samples belonging to same class to fill in the missing value: smarter
- **use the most probable value to fill in the missing value; inferenced-baed such as bayesian formula or decision tree and associative-based**

# Numeric Data Transformation
- smoothing
- aggregation, data cube construction
- generalization: concept hierarchy climbing
- normalization: scaled to fall within a small, spcified range
	- min-max normalization
	- z-score normalization
	- normalization by decimal scaling
	- ![](../../attachments/Pasted%20image%2020231216020503.png)
- attribute/feature construction
	- new attribute constructed from given ones