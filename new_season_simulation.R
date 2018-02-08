newGames <- function(parameters)
{
  allTeams <- rownames(parameters)
  T <- parameters$allTeams
  homeTeam <- parameters$homeTeam
  n <- length(allTeams)
  D <- data.frame()
  row <- 1
  for (i in 1:n)
  {
    for (j in 1:n)
    {
      if (i != j)
      {
        D[row,1] <- allTeams[i]
        D[row,2] <- allTeams[j]
        D[row,3] <- rpois(1, exp(T[i,]$Attack - T[j,]$defenceTeam + homeTeam))
        D[row,4] <- rpois(1, exp(T[j,]$Attack - T[i,]$efenceTeam))
        row <- row + 1
       }
      }
    }
  return(C)
}
