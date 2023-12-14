# Human info proc
# Input: perception

# Throughput: processing

# output: response

# Focus of today: Throughput

# what is problem solving?
- probelm 
- goal state 
- sub goals
- probelm space
- probelm-solving process

# well-defined probelm
- full sepcification of provide data, actions, strategies, and goal sates, which can be represented in a probelm space

# bad-define problem
- partial or imprecise specification of the provided data, actions, strategeies, and goal states, which cannot be (entirely) represent in a problem space

# Goal decomposition
- break down a complex probelm into smaller ones by determining sub goals

# Problem solving strategies

- rule following
- difference reduction
	- each sub goal that is achieved brings the current probelm state closer to goal state
- means-end analysis
	- for each sub goal, a different procedure decreases the difference between current problem state and goal state even if this temporaily leads away from the goal state
- forward and backward reasoning
	- recursive inference principles. Used to solve well-defined problems, which explicitly have formal limitations (chess, math)
- logic reasoning
	- only allowed for known probelms (must have 1 to 1 relationship)
	- else, guestimate and test emprically
- analogical reasoning
	- looks for relations between features and categories that are similar to relations between other features and categories
- case-based reasoning 
	- is a type of analogical reasoning
- random trail and error
	- low level problem solving strategy but commonly found with non-experts users
- creative probelm solving
	- fusion of two worlds
	- going beyond the obvious 
	- creativity and deep learning
		- why error is only in rigid system and not in creativity?
			- categorization from bottom features up
			- features from the 'wrong' category may match (sometimes on abstract level)
			- hybirds exist, maybe more than nn classifers wish for
			- it just that we want our NNs to be precise where the can't be

# Make multiple representations, each addressing another aspect

# In sum, how you represent a problem to your client (or your client to you), begs its solution

# Different mind sets solve probelms differnetly

- the associative empircist
	- feeling happy in open system
	- unstructured decison usually relate to ill-defined problems and a more  vague probelm state
- the logic rationlist
	- feeling happy in closed systems
	- structured decisions usually relate to well-define probelms and  a more precise probelm state

# Output: response
- speed accuracy trade-off 
	- fitts' law
	- shannon's theory
- performance evaluation
	- index of difficulty
	- index of performance
- response time
	- reaction time + movement time
	- movement time is dependent on physical characteristics of subject: age, fitness level
	- reaction time is dependent on stimulus type
- accuracy of response
	- faster is sloppier
	- slower is precise
	- however, whether speed of reaction will result in reduced accuracy depend on the task and user, that's why you do training: fast + accurate
- speed vs accuracy
	- the wider an interface widget and the closer it is to the pointer, the easier to hit it

# summary

- human information processing is different from computation because perceptionn from computation because perception, memory, probelm solving, and (motor) responses are less 'stable' but also more adaptive 
- All the visual, textual, sound, and touch input become an integrated whole and recede in memory , sometimes in a single cell
- memory is not fixed but changes over time (neurons change their connect-ions). Memory is context-sensitive
- Problem-solving skills may differ. For deterministic problems, you need resoning (e.g. means-end analysis ). for underdetermined probelms, you need creative solutions
- when you design a device, you need to reckon with speed-accuracy trade-offs. That is , trained users can be highly efficient, combining high speed with great accuracy (cf. pro-team gamers)
- It also means that untrained users (novices, first-time users, older adults) may not be as advanced as you
- User testing of speed and accuracy tells you how your system or device does in terms of user performance. Don't forget to ask for appreciation as well
- Fitt's law as derived from shannon's Theory of Information systems is your means to determine user performance of motor output