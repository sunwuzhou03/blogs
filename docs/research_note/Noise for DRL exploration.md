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

[[1706.10295] Noisy Networks for Exploration (arxiv.org)](https://arxiv.org/abs/1706.10295)
- dqn, dueling dqn, a3c
- use noise net to add parameters noise
- This one adds parametric noise differently from the first one
	- Independent Gaussian noise
	- Factorised Gaussian noise