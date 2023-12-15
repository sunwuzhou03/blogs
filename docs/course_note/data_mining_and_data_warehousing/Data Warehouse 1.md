# Data Warehouse 1
# Basic concepts

# Why do we need data warehouses?
- consolidation of information resources
- improved query performance
- Separate seaarch and decision support functions from operational systems
- Foundation for
	- data mining
	- data visualization
	- advanced reporting and
	- OLAP (on-line Analytical Processing) tools
# Root of problem: Heterogeneous Information Sources
- Different interfaces
- Different data representations
- Duplicate and inconsisitent information

# Additional Problem: Data management in large enterprises
- vertical fragmentation of informational systems
- result of appplication (user)-driven development of operational systems

# What is a Data Warehouse?
- Defined in many different ways, but not rigorously
	- a decision support database that is maintained separately from the organization's operational database
	- support information processing by providing a solid platform of consolidated, historical dta for analysis
- "A data warehouse is a **subject-oriented, integrated, time-variant and nonvolatile** collection of data in support of management's decision-making process"
- Data warehousing
	- The process of constructing and using data warehouses
# What is a Data Warehouse Used for?
- in many organizations, we want a <mark>central "store"</mark> of all of our entities, concepts, metadata, and historical information
	- for doing data validation, complex mining, analysis, prediction, etc.
- one of the <mark>"modern" use</mark> of the data warehouse is not only to support analytics but to serve as reference to all of entities in organization
	- A cleaned, validated repository of what we know ... which can be linked to by data sources...which may help data cleaning... and which may be basis of **data governance** (processes by which data is created and modified in a systematic way, e.g., to comply with gov't regulations)
- <mark>Knowledge discovery</mark>
	- making consolidated reports
	- finding relationships and correlations
	- data mining
	- examples
		- banks identifying credit risk
		- insurance companies searching for fraud
- <mark>OLAP</mark> (online analytical processing)
	- it contrasts with OLTP used to deal with the everyday running of one aspect of an enterprise
	- OLTP systems are usually designed independently of each other and it is difficult for them to share information
# Characteristics of Data Warehouse: 
- Subject-Oriented
	- organized around major subjects, such as <mark>customer, product, sale </mark>
	- focusing on the modeling and analysis of data for decision makers, not on daily operations or transcation processing
	- provide a simple and concise view around particular subject issues by <mark>excluding data that are not useful in the decision support process</mark>
- Integrated
	- constructed by integrating multiple, heterogeneous data sources
		- relational databases, flat files, on-line transcation records
	- Data cleaning and data integration techniques are applied
		- ensure consistency in naming conventions, encoding structures, attribute measure, etc. among different data sources
			- example: currency, tax, breakfast covered tec.
		- when data is moved to the warehouse, it is converted
- Time Variant
	- the time horizon for the data warehouse in significantly longer than that of operational systems
		- operational database: current value data
		- data warehouse data : provide information from a historical perspective
	- every key structure in data warehouse
		- contains an element of time, explicitly of implicitly
		- but the key of operational data may or may not contain "time element"
- Nonvolatile
	- a physically seperate store of data tranformed from the operational environment 
	- operational <mark>update of data does not occur</mark> in the data ware environment
		- does not requirement transcation processing, recovery, and concurrency control mechanisms
		- requires only two operations in data accessing
			- <mark>initial loading of data and access of data</mark>

# History of Data warehouse
![](../../attachments/Pasted%20image%2020231214224558.png)

# Data warehouse vs. Operational DBMS
- OLTP (on-line transaction processing)
	- major task of tranditional relational DBMS
	- Day-to-day operations: purchasing, inventory, banking, manufacturing, payroll, registration, accounting, etc. 
- OLAP (on-line analytical processing)
	- major task of data ware house system
	- data analysis and decision making
- Distinct features (OLTP vs OLAP)
	- used and system orientation: customer vs. market
	- data contents: current, detailed vs historical, consolidated
	- database design: er + application vs. star +subject
	- view: current, local vs evolutionary, integrated
	- access patterns: update vs. read-only but complex queries
- comprasion figure
	- ![](../../attachments/Pasted%20image%2020231214225141.png)

# Why a separate Data Warehouse?
- High performance for both systems
	- DBMS - turned for OLTP: access methods, indexing, concurrence control, recovery
	- Warehouse - turned for OLAP: complex OLAP queries, multidimensional view, consolidation
- Different functions and different data:
	- <mark>missing data</mark>: decision support requires historical data which operational DBs do not typically maintain
	- <mark>data consolidation</mark>: decision support requires consolidation (aggregation, summarization) of data from heterogeneous sources
	- <mark>data quality</mark>: different sources typpically use inconsistent data representations, codes and formats which have to be reconciled
- Note: there are more and more systems which perform OLAP analysis directly on relational databases

# Data Warehouse's Multi-Tiered Architecture
![](../../attachments/Pasted%20image%2020231215004015.png)

# DW modeling - Data Cube and OLAP

- A **data warehouse** is based on a <mark>multidimensional data model</mark> which views data in the form of a data cube
- A data cube , such as sales, allows data to be modeled and viewed in multiple dimensions
	- **dimension tables**, such as item (item_name, brand, type), or time (day,week, month, quarter, year)
	- **Fact table** contains **measures** (such as dollars_sold) and keys to each of the related dimension tables
- in data warehousing literature, an n-D base cube is called a <mark>base cuboid</mark>. the top most 0-D cuboid, which holds the highest-level of summarization, is called the <mark>apex cuboid</mark>. the lattice of cuboids forms <mark>data cube</mark>

# Cube A lattice of Cuboids
![](../../attachments/Pasted%20image%2020231215010329.png)

# Multidimensional Data Modeling
![](../../attachments/Pasted%20image%2020231215010402.png)

# A Hypothetical Data Cube
![](../../attachments/Pasted%20image%2020231215010450.png)

# Cuboids Corresponding to the Cube
![](../../attachments/Pasted%20image%2020231215010533.png)

# More Data Cube example: 3-D data Cube
![](../../attachments/Pasted%20image%2020231215010653.png)
....

# Conceptual Modeling of Data Warehouses
- Modeling data warehouses: <mark>dimensions</mark> and <mark>measures</mark>
- DW shcema
	- <mark>star shcema</mark>: A fact table in the middle connected to a set of dimension tables
		- ![](../../attachments/Pasted%20image%2020231215012126.png)
	- <mark>Snowflake shcema</mark>: A reinement of star schema where some dimensional hierarchy is normalized into a set of smaller dimension tables, forming a shape similiar to snowflake
		- ![](../../attachments/Pasted%20image%2020231215012156.png)
	- <mark>Facy constellations</mark>: Multiple fact tables share dimension tables, view as a collection of stars, therefore called galaxy shcema or fact constellation
		- ![](../../attachments/Pasted%20image%2020231215012217.png)
# Multiple Facts Tables $\Rightarrow$ Galaxy schema
- For performance or other reasons, we can define multiple fact tables in a given star shcema
	- e.g. varous users require different levels of aggregation
- performance can be improved by defining a different fact table for each lebel of aggrregation (see the example in next slide)
- Designers of DW need decide whether incresed storage requirements are justify by the propective performance inprovement

# Snowflake Schema
- sometimes a dimension in a star shema forms a natural hierarchy
	- e.g. dimension named market has geographic hierarchy
		- several markets within a state
		- several markets with a region
		- several markets within a country
	- when a dimension participates in a hierarchy, the designer has two basic choices
		- include all the information for hierarchy in a single table
			- big flat table
		- normalize the tables
			- resulting in an expanded schema $\Rightarrow$ the <mark>snowflake shema</mark>
	- A snowflake schema is an expanded version of a star shcema in which all  of the tables are fully normalized

# A concept hierarchy: Dimension (location)
![](../../attachments/Pasted%20image%2020231215013736.png)

# Data cube Measures: Three Categories
- <mark>distributive</mark>： if the result derived by applying the function to n aggregate values is the smae as that derived by applting the function on all data without partitioning
	- E.g., count(), sum(), min(), max() <mark>(total) units_sold</mark>
- <mark>Algebraic</mark>: if it can be computed by an algebraic function with M arguments (where M is a nounded integer), each of which is obtained by applying a distributive aggregate function
	- E.g. avg(), min_N(), standard_deviation() <mark>(average)units_sold</mark>
- <mark>Holistic</mark>: if there is no constant bound on the storage size needed to describe a sub-aggregate
	- e.g. median(), mode(), rank() <mark>units_sold</mark>

# Typical OLAP Operations
![](../../attachments/Pasted%20image%2020231215015157.png)

# Roll-up Operation
![](../../attachments/Pasted%20image%2020231215015222.png)

# Drill Down Operation
![](../../attachments/Pasted%20image%2020231215015315.png)

# Slicing and Dicing a Cube
![](../../attachments/Pasted%20image%2020231215015339.png)

# Browing a Data Cube
![](../../attachments/Pasted%20image%2020231215015518.png)

# Part I's Summary
![](../../attachments/Pasted%20image%2020231215015539.png)

