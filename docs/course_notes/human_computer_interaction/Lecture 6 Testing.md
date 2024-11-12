# Usability tests. Why?

- whose problem are you solving?
- you ignored fitt' law and did not do user-perfoemance testing
- you did not relate performance to usability
- you did not measure user satisfaction as related to performance
- without hci, you may invest  a lot of development time in improving some system

# The four quadrants of testing

divide into four part
- abstract
	- theoretical strategies: formal theory, computer simulation
- concrete
	- filed strageties: field experiments, focus groups, interviws, judgements, studies
- ontrusive
	- respondent strategies: laboratory experiment, sample surveys
- unobtrusive
	- observation strategies: content analysis and ethnography

# Research Question

**all research starts with research question**
how to formulate an RQ
- state the general topic
- narrow down the topic through desktop research
- question the existing answaers
- find the research gap
- reformulate the RQ

# Hypotheses

a hypotheses is a **precise problem state**
we must be at least two sets of data(else nothing to compare)

$H_0$ there is no effect $\rightarrow$ the null hypotheses (no detectable difference)
$H_A$ there is an effect  $\rightarrow$ the alternative hypothesis (also called $H_1$)

# Independent variables or "fixed factors"

# Dependent variables or 'measures'

Measurements (often quantitative), properties

# Quanlitative Data

example: written web reviews, camera footage, sound bites, observation protocols

# Quantitative Data

example: time, error rate, patterns of system use, pattern of request for help
**confusion is the top 1 undersired effect of any application that you make**

# Quantifiable performance data in hci

- effectiveness: successful task completion rate
- effcienccy: the trade-off between speed and accuracy
	- time requirements for task completion
	- compare two system on speed or number of errors
- effort: difficulty, ease of use but also energy consumption

# Commonly-used measures in HCI

# Dependent variables: quanlitative, quantitative

Qualitative evaluation is more diverse or 'rich' but subjective while the quantitative evaluation is more precise and less subjective but less 'rich'

# Four quadrants data

structed, unstructed, quanlitative and quantitative

for design and engineer, the data is always unstructured and both quanlitative and quantitative
for secientic research,  the data is always structured and both quanlitative and quantitative

# Measures 

- Norminal: attributes are named, weakest form of measurement
- Ordinal: distances between steps bear no meaning
- Interval: distance are meaningful
- Ratio: absolute 0, strongest measurement
**Not all scales are compareale**

# Quantification of qualitative data
-  use of coding shemes and calculating inter-rater reliablilities
	- calculate inter-rater reilabilities
	- when reilably consistent
	- apply appropriate statistics
- machine analysis
- Quanlitative results as input to structured questionnaires

# Measures, issues

- unneccessary downgrading of measurement quality
- classifiers in neural networks may reduce measurement quality

# Usability testing: formative / summative

- formative means "during design": information helps shape the next iteration (usually based on a prototype)
	- understandability of application
	- completeness of application
	- quality of the application
	- ethical review
	- liability and law
- summative means 'after design': information is final evaluation after rollout
	- process evaluation
		- is the application well implemented
		- user statistics
		- accessibility
		- safety, security
	- impact evaluation (effect on users, other stakeholder)
four different ways to do usabilitty testing
- obeservation
	- heuristic testing $\rightarrow$ experts test rules of thumb
		- 
	- cognitive walkthrough $\rightarrow$ expert acts as typical user
		- examples of question:
			- will the user do what you would do?
			- will the user try and achieve the right outcome
			- does the user see that the right action is possible?
	- thought listing $\rightarrow$ concurrent, retrospective, constructive
		- what they are looking
		- what they are thinking about
		- what they are going to do
- focus groups
	- moderator-guided discussion
- interviews
	- unstructured
	- structured (semi)
- lab and field experiments
	- work if there is a specific that we want to assess (e.g., testing a hypothesis), answering specific quetions about targeted parts of a theory or system

# Laboratory experiments

- definition of an experiment
- in confirmatory data analysis, or statistical testing, we have
- the preocess of experiment
- to run an experiment, we need

# Experimental design

- between-subjects
	- less sensitive to order
	- variance is larger
- within-subjects
	- sensitive to order
	- variance is better comparable
- mixed designed

# things to watch out for in experiment design

- the experiment must systematically manipulate one or more independent variables in domain under investigation
- the manipulation mst be made under controoled conditions, such that all variables that could affect the outcome of the experiment are controlled
- what mightt end up affecting the outcome of experiment (aside from the independent variables)

# Confounding and order effects
- confounds
	- experience factor
	- experimenter/subject bias
	- uncontrolled factors
- order effects
	- within-subjects
		- task that done earlier are slower and more prone to error; tasks that are done later are more prone to fatigue and boredom
		- warming-up effect

# Preventing confounding and order effects 

- randomization
- counter-balance
	- four between-subjects groups with one within factor each other: order
# Statistical analysis

- Exploratory and confirmatory data analysis

# Central tendencies

# Visual inspection of central tendencies is not reilable

# Variance

# Mean

# Signal=Mean, noise=variance

# T-test (independent samples)
- $\dfrac{signal}{noise}$
- one-sample t-test
- paired sample t-test (from same distribution but at diffierent time)

# The role of the normal distribution in a t-test

we can reject the null hypotheses but we can't demonstrate the alternative hypotheses by using 'frequentist approach' because detect notable difference does not say that there is no difference.

# Significance: degrees of freedom and rejection area

- degree of freedom (df)
- p-value and $\alpha$ (rejection area)
- **conclusion**:
	- more df and t-value can be lower to establish a significant effect
	- fewer df and t-values has to be very high to establish a significant effect
- table of siginificance for a two-tailed t-test
	- the zero row is $\alpha$ value
	- the zero column is df value 
	- the element in table is t-value

# Some limitations of the t-test

# False alarm and missed signals (type 2 error)
- false alarm: the null hypotheis is true but we reject it by mistake
- missed signal: the null hypothesis is false but we accept it by mistake
- which error is we can accept depend on the kind of application we design.
	- ordinary application: missed signal
	- experts's application: false alarm

# Summary

- User testing is important to inform design decisons: Judgments by experts, lab and field experiments, and field studies with real users avoid market failure ( irrespective of proper coding or design method)
- satrt testing while prototyping ('formative'). Don't wait until system roll out ('summative')
- Qualitative tests generate non-nmerical data (e.g. videos, use stories), which give you specific insights into your particular case
- Quantitative tests are numerical (e.g. speed, accuracy, attitude) and may be generalized over multiple cases
- Experiments are great for quantitative results. Yet, choose theright measures, know its scale (ratio, nominal) avoid confounds or order effects by randomizing and counter-balancing
- Analysis may be exploratory. Don't jump to conclusions, you haven't tested anything yet. You may now have a hypothesis that need a controlled experiment to do confirmatory statistics on the new data
- T-tests are simple techniques to inspect two sample means. Yet, experiments often are more complicated. Study General Linear models: univariate, multivariate, and repeated measures. Get acquainted with Bayesian statistics if $H_0$ (no difference) is theoretically relevant (cf. human-level AI performance or robot portraits of users)
- Controlled experiment can provide clear convincing reults on specific issues
- creating testable hypotheses are critical to godd experimental design
- Experimental design requires a great deal of planning
- statistics inform us about
- Mathematical attributes about our data sets
- how data sets relate to each other
- the probability that our claims are correct
- However, we need to use human judgement to interpret and understand the results
- If we design for a widely used application , then perhaps a type 2 error (less efficiency, but more familiarity) is preferable to a type 1 error ( make users learn a new thing with no performance benefit)
- Yet, if we design a niche application for expert users , and the tasks invove extremly frequent menu selections, then perhaps a type 1 error (more efficiency, at the cost of haveing learn a new interface) ispreferable to type 2 error.
- 