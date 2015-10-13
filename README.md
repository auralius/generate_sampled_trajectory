# generate_sampled_trajectory
Evenly sampled two position coordinates with period of Ts and a defined completion time.

Example:

Generating trajectory from [0 0 0] to [1 1 1], completion time of 2 seconds adn sampling period of 1 ms.
```
p = traj_gen([0 0 0], [1 1 1], 2, 1e-3);    
```