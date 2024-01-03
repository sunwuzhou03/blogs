# Internship log
# Day 1
- try to use drl solve a path plan problem or a real-time decision making problem
- plan:
	- connect the python and c++enviroment (do we need to consider the import way in the python environment)
	- run the rl in the simulator
- problem:
	- how to combine the simulator with the drl algorithm
	- which way do we need to use as the final way?(<mark>notice: </mark> this simulation have many scene, so we need to consider the final packaging issue, package a part or all)
		- tcp
		- python libray
	- the current rl implement have many problems...it's only a demonstrate cannot be used
	- need to implement  the mappo
		- network
		- agent (the agent in the current scene are different type)
		- reward function
			- similarity matrix calculation (current state to the target state)
			- time cost
			- distance consumption
	- need to consider the future user train mode
		- many different train approaches parallely
		- many different tarin hyper-parameters
- my task:
	- there is currently only one type of network for the formation, and the network is relatively simple
	- not process the real-time agent state data list update
	- need to implement the agent control output
	- implement the complete reward function
		- similarity matrix calculation (current state to the target state)
		- time cost
		- distance consumption
	- visualization of training process
	- offline deployment
	- After training, how to use the model and demonstrate the result
- finish:
	- mpe environment install
inference:
[【AI System】第6章：分布式训练算法与系统 - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/662787644)

# Day 2
- ppo algorithm
	- actor
	- memory buffer
	- actor
	- critic
	- agent
- notice: the current environment don't need to action mask
- try to do the action discreate: <mark>finish</mark>
- implement mappo algorithm
	- different kind of agent
	- try to implement a simple version, then complete the complex version
- pratice the agnet use the immediate state, the final decision can be concluded according all each step and state
- this enviroment can be see as a real-time decision environment
	- state: speed, location
	- action: 3 direction change action and 3 accelerate action
	- 