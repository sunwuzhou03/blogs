# Awesome-LLM-Strawberry

project url: [hijkzzz/Awesome-LLM-Strawberry: A collection of LLM papers, blogs, and projects, with a focus on OpenAI o1 and reasoning techniques. (github.com)](https://github.com/hijkzzz/Awesome-LLM-Strawberry)

## Planning In Natural Language Improves LLM Search For Code Generation
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

## Training Language Models to Self-Correct via Reinforcement Learning
paper url: [2409.12917 (arxiv.org)](https://arxiv.org/pdf/2409.12917)

paper note:
The author assume the reward function is availble to access and for evaluating the llm ouputs. This paper introduce a way self-train llm model by reinforcement learning. it seperate the train into two step. first step, use two attempt but only optimize the first attempt reward by reinforcement learning **instead of use SFT** for initialize llm model parameters. The second step, use multi-turn rl to optimize reward at both attempts. We can learn this way by the follow figure.

![](../attachments/Pasted%20image%2020240928194535.png)

![](../attachments/Pasted%20image%2020240928160649.png)

## TO COT OR NOT TO COT? CHAIN-OF-THOUGHT HELPS MAINLY ON MATH AND SYMBOLIC REASONING

paper url: [2409.12183 (arxiv.org)](https://arxiv.org/pdf/2409.12183)

paper note: 
this paper investigate more than 100 papers, different base model to figure out what kind of question need extra thinking. The result show that the problems involving math or logic are benefit from CoT(chain of thoughts). And for other question, it's more better to save cost without CoT.

## An Empirical Analysis of Compute-Optimal Inference for Problem-Solving with Language Models

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


## Large Language Models as Commonsense Knowledge for Large-Scale Task Planning
paper url: [2305.14078 (arxiv.org)](https://arxiv.org/pdf/2305.14078)
paper note:
该文章将llm与mcts 结合，结合方向可以分为三点：
- llm作为world model预测下一个可能的观测
- llm作为启发式函数，给出可能的动作，减少mcts搜索的动作的空间
- llm作为翻译器，将task的自然语言描述翻译成模板化的描述

## Smaller, Weaker, Yet Better: Training LLM Reasoners via Compute-Optimal Sampling
paper url: [2408.16737 (arxiv.org)](https://www.arxiv.org/pdf/2408.16737)
paper note: 
文章使用计算最优的方法从weak and cheaper采样的数据对stronger and expensive的model 进行fine-tune。这个数据依然能够提升 SE 模型的推理能力。
**Default vs Compute-Optimal Sampling from Cheap LMs**
![|325](../attachments/Pasted%20image%2020241002155905.png)


## Scaling LLM Test-Time Compute Optimally can be More Effective than Scaling Model Parameters
paper url: [2408.03314 (arxiv.org)](https://arxiv.org/pdf/2408.03314)
paper note:
本文同样分析compute optimal 的方法的有效性。test-time compute optiamlly 最普遍以及简单的例子就是对于一个问题可以并行采样多个答案，在其中利用PRM或者verifiers进行评估选出最有效的答案，同时也可以顺序采样，不断对上一次答案进行评估修改，可以参考下图
![](../attachments/Pasted%20image%2020241003114224.png)
文章同时对比了不同的搜索策略，并提出一种新的搜索策略：lookhead search
![](../attachments/Pasted%20image%2020241003114338.png)


## Generative Verifiers: Reward Modeling as Next-Token Prediction
paper url: [2408.15240 (arxiv.org)](https://arxiv.org/pdf/2408.15240)
pepr note:
文章提出传统的验证器只是作为一个答案的分类器给予评分，并没有很好利用预训练模型的文本生成能力。文章为了克服这个劣势，提出了一种新的过程验证模型-生成验证模型，其表现在algorithmic and grade-school math reasoning tasks上超过了分类验证模型。
![](../attachments/Pasted%20image%2020241003115410.png)

大致原理如下图所示：
![](../attachments/Pasted%20image%2020241003121251.png)

备注：
自一致方法（self-consistency）是**首先利用COT生成多个推理路径和答案，最终选择答案出现最多的作为最终答案输出，效果出奇的好。** [ICLR 2023 | Self-Consistency: Google超简单方法改善大模型推理能力 - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/641370746)
![](../attachments/Pasted%20image%2020241003115510.png)
LLM as a judge: https://zhuanlan.zhihu.com/p/637303516
我们知道人类反馈强化RLHF技术对LLM训练非常有效，但是很少有公司或者实验室非聘请人类专家来强化，本篇论文证明了GPT4能达到研究生作为人类专家的水平，可以作为自训练LLM的“人类专家”。


## MUTUAL REASONING MAKES SMALLER LLMS STRONGER PROBLEM-SOLVERS
paper url: [2408.06195 (arxiv.org)](https://arxiv.org/pdf/2408.06195)
paper note:
文章提出了一种交互推理的方法，该方法通过一个小模型进行生成，另外一个小模型进行验证，通过相互一致性来提高答案的正确性。从而实现了在多个数据集上推理能力的提升。
![](../attachments/Pasted%20image%2020241003163805.png)

LLM 做推理采用mcts方法的一个示例，动作空间参考下图：
![](../attachments/Pasted%20image%2020241003191943.png)

reward function:
![](../attachments/Pasted%20image%2020241003205640.png)

## Large Language Monkeys: Scaling Inference Compute with Repeated Sampling
paper url: [2407.21787 (arxiv.org)](https://arxiv.org/pdf/2407.21787)
paper note: 
重复采样在代码和形式化证明的任务上，llm回复样本量的增加（对于一个问题llm的多种采样回复）能够直接改善llm的表现。
重复采样原理大致如下：
![](../attachments/Pasted%20image%2020241005221954.png)

coverage: 覆盖率
precison: 准确率

文章的总结：
![](../attachments/Pasted%20image%2020241005222921.png)

- 文章实现结果表明让弱一些模型产生更多的样本其表现能超越单次尝试更强的模型。
- 作者根据覆盖率与样本数量之间的关系，提出推理时计算也存在缩放定律。
- 在不能自动验证的领域，平常的方法比如多数投票、奖励评分会在超过一百个样本后趋于稳定。


论文的实验结果：
![](../attachments/Pasted%20image%2020241005224340.png)

## Improve Mathematical Reasoning in Language Models by Automated Process Supervision
paper url: [2406.06592 (arxiv.org)](https://arxiv.org/pdf/2406.06592)
paper note:
以往的过程奖励模型训练的数据搜集需要人工监督，或者耗费大量时间，不宜推广。文章提出一种新的分而治之的蒙特卡洛搜索树算法用来更有效搜集过程监督数据（训练过程奖励模型），该算法通过二分法**快速**有效识别出思维链（CoT）中的第一个错误并且可以平衡正负样本，因此可以保证数据的质量和数量。

**这是一篇很好的展示mcts在llm中使用的方法**
