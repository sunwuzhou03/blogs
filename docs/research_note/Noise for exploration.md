[[1706.01905] Parameter Space Noise for Exploration (arxiv.org)](https://arxiv.org/abs/1706.01905)
- dqn, ddpg, trpo
- Use parameter space noise rather than action space noise.
- action space noise:
	- $\epsilon$-greedy exploration, Boltzmann policy
	- ddpg ou noise
		- ![](../attachments/Pasted%20image%2020231231151655.png)
- parameters noise:
	- ![](../attachments/Pasted%20image%2020231231152300.png)
	- state dependent exploration: for the same state in one episode, the policy will give a same action
	- Perturbing deep neural networks: use layer normalization between perturbed layers. The same perturbation scale can be used across all layers, even though different layers may exhibit different sensitivities to noise
	- Adaptive noise scaling Parameter space noise requires us to pick a suitable scale σ
		- ![](../attachments/Pasted%20image%2020240120115916.png)
- The parameters can be added and trained in the follow rules:
![](../attachments/Pasted%20image%2020240120131342.png)


[[1706.10295] Noisy Networks for Exploration (arxiv.org)](https://arxiv.org/abs/1706.10295)
- dqn, dueling dqn, a3c
- use noise net to add parameters noise
- This one adds parametric noise differently from the first one
	- Independent Gaussian noise
	- Factorised Gaussian noise
- code as follow, this NoisyNet can be added in any RL algorithm.
```py
# 噪声线性层
class NoisyLinear(nn.Module):
    def __init__(self, input_dim, output_dim, std_init=0.4):
        super(NoisyLinear, self).__init__()

        # 输入维度
        self.input_dim = input_dim
        # 输出维度
        self.output_dim = output_dim
        # 初始的标准差
        self.std_init = std_init

        # nn.Parameter()：向模型中注册一个参与梯度计算、参与更新的变量
        self.weight_mu = nn.Parameter(torch.FloatTensor(output_dim, input_dim))
        self.weight_sigma = nn.Parameter(torch.FloatTensor(output_dim, input_dim))
        self.bias_mu = nn.Parameter(torch.FloatTensor(output_dim))
        self.bias_sigma = nn.Parameter(torch.FloatTensor(output_dim))

        # register_buffer()：向模型中注册一个不参与梯度计算、不参与更新的变量
        self.register_buffer('weight_epsilon', torch.FloatTensor(output_dim, input_dim))
        self.register_buffer('bias_epsilon', torch.FloatTensor(output_dim))

        self.training = True
        self.reset_parameters()
        self.reset_noise()

    def forward(self, x):
        if self.training:
            weight = self.weight_mu + self.weight_sigma.mul(Variable(self.weight_epsilon))
            bias = self.bias_mu + self.bias_sigma.mul(Variable(self.bias_epsilon))
        else:
            weight = self.weight_mu
            bias = self.bias_mu
        return F.linear(x, weight, bias)

    def reset_parameters(self):
        mu_range = 1 / math.sqrt(self.weight_mu.size(1))
        # uniform_()：从均匀分布中抽样数值进行填充
        self.weight_mu.data.uniform_(-mu_range, mu_range)
        # fill_()：用某个数值进行填充
        self.weight_sigma.data.fill_(self.std_init / math.sqrt(self.weight_sigma.size(1)))

        self.bias_mu.data.uniform_(-mu_range, mu_range)
        self.bias_sigma.data.fill_(self.std_init / math.sqrt(self.bias_sigma.size(0)))

    def reset_noise(self):
        epsilon_in = self.scale_noise(self.input_dim)
        epsilon_out = self.scale_noise(self.output_dim)
        # copy_()：将传入tensor对象的参数复制给调用的tensor对象
        # A.ger(B)：将A的元素依次乘以B的元素，进行扩维
        self.weight_epsilon.copy_(epsilon_out.ger(epsilon_in))
        self.bias_epsilon.copy_(self.scale_noise(self.output_dim))

    def scale_noise(self, size):
        # randn()：产生指定大小的，正态分布的采样点
        x = torch.randn(size)
        # sign()：一个符号函数，>0返回1，=0返回0，<0返回-1
        # mul()：两个同等大小的矩阵进行点乘
        x = x.sign().mul(x.abs().sqrt())
        return x
```

OpenAI 和 Deepmind 均发表了关于参数噪声对DRL探索的影响，OpenAI的参数更新方式较为繁琐，而Deepmind的更为简单，他们都具有state-dependent的特点，但两种方式的谁更好，并没有做一个探讨。

MATH-SHEEPHERD https://arxiv.org/pdf/2312.08935.pdf

本文探讨了使用自动标注方法MATH-SHEEPHERD训练的PRM作为reward model 以及 verifier 对LLMs数学推理的能力的提升。

本文构建的ORM自动标注，具有一些false-positive（推导错误答案正确），这些为noise，但文中在ORM构建中提到，这些有一定的帮助
![](../attachments/Pasted%20image%2020240120133034.png)
同理作者构建PRM也同样具有这种噪声
![](../attachments/Pasted%20image%2020240120133610.png)
但文章末尾提到由于自动标注的后续推理是采用LLMs生成，这和人工标注有一定的区别，所以这种噪声的影响仍然不能完全确定。
![](../attachments/Pasted%20image%2020240120133410.png)
从以上可以看出，文章中的噪声并没有做充分的实验，验证其对PRM是有用的，同时文章的中的噪声可能属于是action noise，推理过程中出现错误。如果想探索parameter noise是否可以提升LLMs的数学推理能力的话，可以在generator或者verifier的网络参数中加入噪声层（verifier还能作为reward model），加入噪声的方式有两种，且更新方式Deepmind和OpenAI的方式不一样，可以做更多的对比，探索其有效性。

以下是阅读过程中写的博客：

[MATH-SHEPHERD: VERIFY AND REINFORCE LLMS STEP-BY-STEP WITHOUT HUMAN ANNOTATIONS - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/677885020)

[NOISY NETWORKS FOR EXPLORATION - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/678615773)
