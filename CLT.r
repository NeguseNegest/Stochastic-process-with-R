# Antal slumpmässiga variabler per uppsättning
n <- 30

# Antal uppsättningar
sets <- 10000

# Skapa en tom vektor för att lagra medelvärdena
means <- numeric(sets)

# Simulera CLT
for(i in 1:sets) {
  # Skapa n oberoende och identiskt fördelade uniforma slumpmässiga variabler
  random_vars <- runif(n, min = 0, max = 1)
  
  # Beräkna medelvärdet av dessa variabler och lagra det
  means[i] <- mean(random_vars)
}

# Plotta histogrammet av medelvärdena
hist(means, breaks = 50, col = 'lightblue', main = 'Simulation of the Central Limit Theorem',
     xlab = 'Sample Means', ylab = 'Frequency')

# Lägg till en normalfördelningkurva för jämförelse
curve(dnorm(x, mean = mean(means), sd = sd(means)), col = "red", lwd = 2, add = TRUE, ylab = "")
