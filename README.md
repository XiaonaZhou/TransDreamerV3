# TransDreamerV3: Implanting Transformer In DreamerV3

CS6604 Class project

In this project, we introduce TransDreamerV3, a reinforcement learning model that enhances the DreamerV3 architecture by integrating a transformer encoder. The model is designed to improve memory and decision-making capabilities in complex environments. We conducted experiments on Atari-Boxing, Atari-Freeway, Atari-Pong, and Crafter tasks, where TransDreamerV3 demonstrated improved performance over DreamerV3, particularly in the Atari-Freeway and Crafter tasks. While issues in the Minecraft task and limited training across all tasks were noted, TransDreamerV3 displays advancement in world model-based reinforcement learning, leveraging transformer architectures.


## About this repo

### TransDreamerV2/ is cloned from [repo](https://github.com/changchencc/TransDreamer/tree/main)

* the .sh files were used to trained models for different tasks
* the notes.txt contains notes on how to setup the environment

### dreamerv3_8/ is cloned from [repo](https://github.com/danijar/dreamerv3/tree/main)

* the .sh files were used to trained models for different tasks
* requirements.txt and requirements_3_8.txt defined packages needed for running the code. I was able to run everything except Minecraft using python 3.8.0 and packages inside requirements_3_8.txt. Remember to install jax first 

```
pip install --upgrade pip

# for cuda 11
pip install --upgrade "jax[cuda11_pip]" -f https://storage.googleapis.com/jax-releases/jax_cuda_releases.html

for cuda 12
pip install --upgrade "jax[cuda12_pip]" -f https://storage.googleapis.com/jax-releases/jax_cuda_releases.html
```


### transdreamerv3_8/ contains our model which was built based on [DreamerV3](https://github.com/danijar/dreamerv3/tree/main)

* Same environments is used as with DreamerV3
* the .sh files were used to trained models for different tasks

### results/ contains code for making figures and figures included in the paper. 

Model checkpoints are available upon request. 




