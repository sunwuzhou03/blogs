
# Talking to machines

- the fundamental different between a computer and an ordinary machine is that a computer can be approached through language
- Interpretation vs Ahead of time compilation
- Analysis phase 
	- Lexical Analysis
	- syntax Analysis
	- Sementic Analysis
- Synthesis phase: generate target program from intermediate representation
	- intermediate code generator
	- code optimizer
	- code generator

all steps are as fellow
- source code
- line handler
- lexical analysis
- syntax analysis
- semantic analysis
- intermediate code generator
- code opotimizer
- code generator
# Analysis phase

- Line handler
- token: a categorized sequence of characters
- sequence of character that make up a token is called a lexeme

# Syntax Analysis

- synatactic analysis is also call parsing
- convert liner string of tokens in to hierarchical structured representation called a parse tree

# Semantic phase

# Synthesis phase

- intermidiate code generation

# Code optimization

- optimize the program space and run-time speed
- obviously, optimized code should still produce correct result

# Code generation

# Talking to machines and humans

- the prompt for a user interface
- dialog design
	- reasons for formal dialog specification
		- system presents an output observed by user who performs user articulates an input that make system perform
		- dialogs notations help us to
			- help us analyse system
			- seperate lexical from semantic aspects
		- dialog notations helps user understaend proposed designs before the system is built
		- to discuss your system with clients/ stakeholder
			- turn ideas into code
			- systematic testing
			- 1000% productivity gain
			- formalism saves time
	- be able to use state transition networks and regular expressions to specify a dialog
		- put stns together
		- be ware of combinatorial explosion
		- use hierarchical menus: "normal" exit for each submenu plus seperate escape arc active 'everywhere' in submenu
	- be able to conduct checks for completeness, reversibility, and dangerous state with dialog
		- inconsistency
		- reversibility
		- completeness
		- potential errors
	- know about other methods for dialog specifications
		- stn
		- state diagram
		- flowcharts
		- petri nets
		- jsd
		- textual - grammar
			- condition based on state or pending event
			- every relu always potentially active
			- good for concurrency
			- bad for sequence

# why communicate with machine in natural language

- natural and inclusive interface for human interaction
- flexibility of devices by adaptation through (abstract) language
- non-experts
- many social functions rely on natural language communication
- system can operate autonomously
- language is most efficient way of communication: abstract, minimalistic, and exploiting common ground
# NLP
- natural language processing
- ambiguity is pervasive and we do not perceive it
- syntactic analysis (parsing)
- part-of-speech tagging
- probabilistic pos tagging
	- the word with the highest probability is not always best choice. Therefore,  some randomness is added (or 'temperature') to be able to vary the wording
- trivial for indo-european languages
- more comlex for other languages
	- chinese needs word segmentation
	- turkish needs intra-word tokenization

# GPT

- what is a transformer?
	- a neural-network architecture, try to connect tokens to one another based on a similarity measure
- positional encoding
	- positional encoding define the location of a token in a sentence or other sequence and gives that position a unique value
- self-attention (provide some context)
	- single head attention
	- multi head attention
- gelu activation
- what is the vanishing gradient problem
	- when do backpropagation, the gradient of error (loss) for each weight. it does that one layer at a time, going backward from layer to output layer... but the gradient becomes smaller and even disappear
- what causes the 'vanishing gradient problem'
	- activation function. particular the older one, such as sigmoid and tahn
- how to solve the gradient vanishing 
	- gelu or relu
		- relu does not render small derivatives
		- gelu is more stochastic, is more probabilistic, and therefore can handle complexity better
	- residual network
	- kaming initialization
- softmax for multi-classification problems
- GPT is also pre-trained by humans
	- gpt employed reinforcement learning from human feedback
- hardware challenges for training llms
	- infratructure
	- engineering
	- algorthim
- moral concerns: chatgpt is immoral because humans are
- moral concerns: social bias
- inappropiate responses
- diffculties with nlp
	- error cascading
	- ambiguity
	- misses progamatics and situational awareness
- language is not enough, we need the multimodal input
- speech recognition:
	- convert spoken words to machine -readable input
	- identifies the speaker according to accoustic input
- speech recogonition before
	- digital singnal processing
	- probability and statistics, modeling
	- measure in word error rate 
	- problems: speaker dependence, acoustic sampling and environmental noise
- context awareness in nlp: spatial map to locate objects
- nlp: categorization through episodic experences
- nlp: hierarchical clustering
- nlp: multimodal learning
- sampling application: grounding action verbs

# Huamn interpreting machines

- computer needs literal instruction
- human gets the gist
- speech acts
	- representative
	- directive 
	- commissive
	- expressive
	- declarative
- conversation rules
	- quanlity
	- quantity
	- relation
	- manner
- scirpts
	- human behave and thus, use their language according to scripts; relative ly fixed sequences of actions and behaviors associated with performing a task or achieving a goal
	- in system design, psychological are the basis for scenario development


# Human interpreting machines: conclusions

- human centered text in interaction design is not dress up a conventional tool with some anthropomorphism
- it requires deep understanding of structure of conversation and other language behaviors, with a focus on (contextual) semantics and progmatics

# Summary

- Natural language is hard! Full NL  interfaces are peobably still several years off yet
- This is beceuse human language is less dependent on form ('grammar') and more on content ('semantics'), which is susceptible to situation, context, pragmatics
- When designing a speech or text interface, we should be aware that we do speech acts (e.g., commands are 'directive'), which ensue conversational rules (e.g., 'be relevant to user goals')
- Many huam-human interactions are formal (e.g. wedding formula) and make use of psy chological scripts (e.g., how to open / close a meeting) These are the low hanging fruit for NLP application
- Communicating with systems in real-world situations through natural language is much needed
- But it is also an AI-complete problem
- Generic technologies such as probabilistic reasoning , deep learning need to be integrated and adapted to deal with complex multimodal settings
- Flexibility, integrated learning, robustness for errors, uncertainties and noise, incomplete data streams
- Theory of mind, affective relations, common ground 
- Negotiation of goals and social roles
- Interdisciplinary R&D is key
