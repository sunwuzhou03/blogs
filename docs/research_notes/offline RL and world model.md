# offline and 与 world model
# offline RL
## 简介

Offline Reinforcement Learning（离线强化学习）是一种不需要与环境进行在线交互就能从数据中学习策略的强化学习技术。它通过利用已有的静态数据集来训练智能体，使其能够完成特定的任务。这种技术特别适用于那些在线交互成本高、风险大或不切实际的场景。

在离线强化学习中，数据采集通常是在算法训练之前完成的。这些数据可以来源于以下几个方面：

1. **专家数据（Expert Data）**：由**领域专家或者专家行为树**生成的数据，通常包含了最优或接近最优的行为策略。
2. **预训练模型产生的数据**：通过先前训练好的模型与环境交互产生的数据。
3. **随机数据（Random Data）**：通过随机策略与环境交互生成的数据，这种数据通常探索性较强，但可能包含许多非最优行为。
4. **日志数据（Logged Data）**：从实际应用中收集的历史交互数据，例如用户与推荐系统的历史交互记录。

数据采集的方式可以是多样的，关键在于收集到的数据需要包含状态、行为、奖励以及下一个状态等信息，构成强化学习中的转移元组（state, action, reward, next state）。这些数据将被用来训练或调整强化学习模型，使其能够在没有进一步与环境交互的情况下学习最优策略。

在实际操作中，数据采集可能会受到多种因素的影响，包括数据分布的偏差、数据的稀疏性、数据的非代表性等。因此，数据采集策略需要精心设计，以确保收集到的数据能够代表真实环境中的交互，并能够支持有效的学习过程。此外，数据采集还需要考虑到数据的质量和多样性，以减少学习过程中的过拟合和分布偏移问题。

## 资料

[GitHub - hanjuku-kaso/awesome-offline-rl: An index of algorithms for offline reinforcement learning (offline-rl)](https://github.com/hanjuku-kaso/awesome-offline-rl)

[离线强化学习知乎专栏](https://zhuanlan.zhihu.com/p/489470062)

[【万字专栏总结】离线强化学习(OfflineRL)总结(原理、数据集、算法、复杂性分析、超参数调优等）...-CSDN博客](https://blog.csdn.net/fengdu78/article/details/125568100)

# world model

## 简介

world model 范式训练两个模型，一个是智能体模型（输入为状态或者观测，输出为动作），另一个是环境模型（模拟环境中的状态转移，奖励评估，输入为智能体当前动作，输出为当前动作产生的奖励，下一步的状态），这个环境模型可以通过智能体与真实仿真器交互时学习，也可以通过无监督学习或者其他方法学习。

其中world model 是model based 强化学习中的一种特殊情况，world model 强调的是通过无监督学习或其他方法学习环境模型，并利用该模型实现从仿真到现实的任务迁移，model base智能体通过与环境交互的信息学习一个环境动力学模型。

world model 的训练数据采集可以参考offline 中训练数据的采集。

可以参考以下图片，以下图片来自 赵鉴 RL-China 分享。

![](../attachments/Pasted%20image%2020241030183456.png)

![](../attachments/Pasted%20image%2020241030183619.png)
## 参考资料

## 中文博客

[什么是world models/世界模型](https://zhuanlan.zhihu.com/p/661768957)

[关于环境模型(world model)的学习](https://zhuanlan.zhihu.com/p/533855468)

## 英文
world model 开山之作：
[ World Models](https://arxiv.org/abs/1803.10122)

其他world model 技术的经典论文：
[GitHub - gaodechen/awesome-world-models: A curated list of awesome World Models research and projects](https://github.com/gaodechen/awesome-world-models)

world model 技术的不同方向应用文章（自动驾驶、视频生成……）
[GitHub - GigaAI-research/General-World-Models-Survey](https://github.com/GigaAI-research/General-World-Models-Survey)

