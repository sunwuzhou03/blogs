# Data Warehouse
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
- in many organizations, we want a ==central "store"== of all of our entities, concepts, metadata, and historical information
	- for doing data validation, complex mining, analysis, prediction, etc.
- one of the =="modern" use== of the data warehouse is not only to support analytics but to serve as reference to all of entities in organization
	- A cleaned, validated repository of what we know ... which can be linked to by data sources...which may help data cleaning... and which may be basis of **data governance** (processes by which data is created and modified in a systematic way, e.g., to comply with gov't regulations)
- ==Knowledge discovery==
	- making consolidated reports
	- finding relationships and correlations
	- data mining
	- examples
		- banks identifying credit risk
		- insurance companies searching for fraud
- ==OLAP== (online analytical processing)
	- it contrasts with OLTP used to deal with the everyday running of one aspect of an enterprise
	- OLTP systems are usually designed independently of each other and it is difficult for them to share information
# Characteristics of Data Warehouse: 
- Subject-Oriented
	- organized around major subjects, such as ==customer, product, sale==
	- focusing on the modeling and analysis of data for decision makers, not on daily operations or transcation processing
	- provide a simple and concise view around particular subject issues by ==excluding data that are not useful in the decision support process==
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
	- operational ==update of data does not occur== in the data ware environment
		- does not requirement transcation processing, recovery, and concurrency control mechanisms
		- requires only two operations in data accessing
			- ==initial loading of data and access of data==

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
	- ==missing data==: decision support requires historical data which operational DBs do not typically maintain
	- ==data consolidation==: decision support requires consolidation (aggregation, summarization) of data from heterogeneous sources
	- ==data quality==: different sources typpically use inconsistent data representations, codes and formats which have to be reconciled
- Note: there are more and more systems which perform OLAP analysis directly on relational databases
- 