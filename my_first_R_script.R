example <- matrix(c(1,2,3,4,5,6,7,8), nrow=4, ncol=2)
setwd("~/Jens/R programming")
dni3 <- dimnames(iris3)
ii <- data.frame(matrix(aperm(iris3, c(1,3,2)), ncol = 4,
                        dimnames = list(NULL, sub(" L.",".Length",
                                                  sub(" W.",".Width", dni3[[2]])))),
                 Species = gl(3, 50, labels = sub("S", "s", sub("V", "v", dni3[[3]]))))
all.equal(ii, iris) # TRUE

install.packages('ggplot2')
library(ggplot2)

browseVignettes('ggplot2')

sessionInfo()