# Awesome-LLM-Strawberry

project url: [hijkzzz/Awesome-LLM-Strawberry: A collection of LLM papers, blogs, and projects, with a focus on OpenAI o1 and reasoning techniques. (github.com)](https://github.com/hijkzzz/Awesome-LLM-Strawberry)

# Planning In Natural Language Improves LLM Search For Code Generation
paper url: [2409.03733 (arxiv.org)](https://arxiv.org/pdf/2409.03733)

paper note: 
This paper introduce the importance of plan search in llm. PLANSEARCH **generates a diverse set of observations** about the problem and then uses these observations to construct plans for solving the problem.

According to this paper,learning spent compute time on training time and search spent compute time on test time.

for example, the approach of paper is search some feature and type of code question as the first observation, and second observation is the avaiable algorithm. The author use this way to make the output diversity.

```
To generate novel plans, PLANSEARCH generates a number of observations about the problem, before combining these observations into a candidate plan for solving the problem. This is done for every possible subset of the generated observations to maximally encourage exploration in idea space, before the codes are eventually all translated into a final code solution
```

Repeat sampling with high temperature is also a way to generate more different solutions, which also can be thoughted a search way. However, this search way is only on output search space. The plansearch's search space is on latent idea space, searching a different natural language plans.

this paper idea don't need any training, only need the prompt engineer.

# Training Language Models to Self-Correct via Reinforcement Learning
paper url: [2409.12917 (arxiv.org)](https://arxiv.org/pdf/2409.12917)

paper note:
The author assume the reward function is availble to access and for evaluating the llm ouputs. This paper introduce a way self-train llm model by reinforcement learning. it seperate the train into two step. first step, use two attempt but only optimize the first attempt reward by reinforcement learning **instead of use SFT** for initialize llm model parameters. The second step, use multi-turn rl to optimize reward at both attempts. We can learn this way by the follow figure.

![](../attachments/Pasted%20image%2020240928194535.png)

![](../attachments/Pasted%20image%2020240928160649.png)

# TO COT OR NOT TO COT? CHAIN-OF-THOUGHT HELPS MAINLY ON MATH AND SYMBOLIC REASONING

paper url: [2409.12183 (arxiv.org)](https://arxiv.org/pdf/2409.12183)

paper note: 
this paper investigate more than 100 papers, different base model to figure out what kind of question need extra thinking. The result show that the problems involving math or logic are benefit from CoT(chain of thoughts). And for other question, it's more better to save cost without CoT.

# An Empirical Analysis of Compute-Optimal Inference for Problem-Solving with Language Models

paper url: [2408.00724 (arxiv.org)](https://arxiv.org/pdf/2408.00724)

paper note:
This paper also introduce **a novel tree search algorithm**, REward BAlanced SEarch (REBASE), 
```
which pairs well with weighted voting and improves the Pareto-optimal trade-off between accuracy and inference compute. The key idea of REBASE is to use a node-quality based reward to control the exploitation and pruning properties of tree search, while ensuring enough candidate solutions for voting or selection. And this way with smaller llm typically achieves a Pareto-optimal trade-off

```

```
We explore the following question: Given a fixed FLOPs budget, how should one select an optimal model size for the policy model, and an effective inference strategy to maximize performance (i.e., accuracy)?
```

compute-optimal scaling laws
![](../attachments/Pasted%20image%2020240928164655.png)


This papper compare different search strategy and then come up with a novel tree search approach. And this paper also analysis the dfferent size model with different search strategy to figure out the compute-optimal scaling laws in training and inference.

Try to understand the search strategies:
