# Machine Learning

# Learning Outcomes of Lecture 05
![](../../attachments/Pasted%20image%2020231219133134.png)

# Basic Element
![](../../attachments/Pasted%20image%2020231219133427.png)

# Artificial Neuron
![](../../attachments/Pasted%20image%2020231219133750.png)
- Why input is a vector?
	- **simple answer: Inputs in artificial neural networks are represented as vectors because it allows for efficient organization, manipulation, and processing of the data within the network. Vector representation simplifies the data structure and enables the neural network to perform computations such as matrix multiplication and activation function calculations. Additionally, vectorization techniques can be leveraged to efficiently process the input data and perform computations in parallel, making the network more efficient and scalable**.
	- In artificial neural networks (ANN), the input is typically represented as a vector because ANNs are designed to process and analyze structured data. By representing the input as a vector, we can easily organize and manipulate the data within the neural network.
	- Each element of the input vector corresponds to a specific input feature or attribute. For example, if we are working with a dataset of images, each element in the input vector could represent a pixel value or a feature extracted from that image.
	- Representing the input as a vector allows the neural network to efficiently perform mathematical operations, such as matrix multiplication and activation function computations, which are fundamental to the functioning of the neural network. Additionally, using a vector representation enables us to leverage linear algebra and vectorization techniques to efficiently process the input data and perform computations in parallel.
	- Overall, representing the input as a vector in artificial neural networks simplifies the data representation, enables efficient computations, and allows the neural network to learn and make predictions based on the patterns and relationships within the input data.
- Why artificial neural use sum funcion?
	- **simple answer: The sum function in an artificial neural network is used to aggregate the weighted inputs from the previous layer and compute an overall value for further processing.**
	- Artificial neural networks (ANNs) use the sum function as a way to aggregate the weighted inputs from the previous layer and produce an output value. This aggregation of weighted inputs is a fundamental step in the computation of the neural network.
	- The sum function in an ANN is typically used in the context of a neuron or node within the network. Each neuron receives input connections from the previous layer, and these inputs are multiplied by corresponding weights. The weighted inputs are then summed together to produce a single value.
	- The sum function allows the neural network to capture and combine the information from multiple inputs in a weighted manner. The weights assigned to each input determine the relative importance or contribution of that input to the overall computation. By adjusting these weights during the training process, the neural network can learn to assign appropriate levels of importance to different inputs, allowing it to recognize patterns and make accurate predictions.
	- After the sum function, the resulting aggregated value is usually passed through an activation function, which introduces non-linearity and helps to introduce complexity and flexibility in the network's decision-making process.
	- In summary, the sum function in artificial neural networks is essential for aggregating weighted inputs and capturing the relationships between different inputs. It allows the network to learn and make predictions based on the patterns and associations within the data.
- Why ouputs the same value to different inputs?
	- **The output of an artificial neural network can be the same for different inputs due to the network's ability to generalize patterns and make predictions based on similarities in the input data.**
- Why activation function?
	- **An activation function is used in artificial neural networks to introduce non-linearity and enable the network to learn and model complex relationships within the data. It helps in transforming the weighted sum of inputs into a desired output or activation value.**
- Why weight?
	- **Weights in artificial neural networks play a crucial role in determining the strength and importance of each input in influencing the network's output. They are used to adjust the contribution of each input to the overall computation of the network. By adjusting the weights during the training process, the neural network can learn to assign appropriate levels of importance to different inputs, allowing it to recognize patterns and make accurate predictions. In essence, weights help the neural network to learn and adapt to the underlying patterns in the data**.
# Perceptron with Activation Function - Sign Function
![](../../attachments/Pasted%20image%2020231219133844.png)
- Learn how to compute Perceptron
	- ![](../../attachments/Pasted%20image%2020231219133929.png)
- ![](../../attachments/Pasted%20image%2020231219134303.png)
- ![](../../attachments/Pasted%20image%2020231219134328.png)
- ![](../../attachments/Pasted%20image%2020231219134345.png)
- ![](../../attachments/Pasted%20image%2020231219134405.png)

# Multilayer perceptron

[机器学习——多层感知机MLP的相关公式_多层感知机公式-CSDN博客](https://blog.csdn.net/u011848397/article/details/102733351)

![](../../attachments/Pasted%20image%2020231219134457.png)
![](../../attachments/Pasted%20image%2020231219134623.png)
![](../../attachments/Pasted%20image%2020231219134639.png)
![](../../attachments/Pasted%20image%2020231219134742.png)
![](../../attachments/Pasted%20image%2020231219134752.png)
![](../../attachments/Pasted%20image%2020231219134804.png)