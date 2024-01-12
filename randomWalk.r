# Load the necessary library
if(!require(ggplot2)) install.packages("ggplot2")
library(ggplot2)

generate_random_walk <- function(steps) {
  random_walk <- numeric(steps)
  
  random_walk[1] <- 0
  
  for (i in 2:steps) {
    step <- sample(c(-1, 1), 1)
    

    random_walk[i] <- random_walk[i - 1] + step
  }
  
  return(random_walk)
}

n_steps <- 1000

walk <- generate_random_walk(n_steps)


walk_data <- data.frame(Step = 1:n_steps, Position = walk)


ggplot(walk_data, aes(x = Step, y = Position)) +
  geom_line() +
  ggtitle("Simple Random Walk") +
  xlab("Step") +
  ylab("Position")
