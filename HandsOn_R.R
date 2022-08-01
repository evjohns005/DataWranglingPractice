library("dplyr")
library("tidyr")

Copy_of_FakeNews$StoryType= "Fake"

FakeNews <- Copy_of_FakeNews[, 2:4]

FakeNews2 <- separate(FakeNews, url, c("Website", "Domain"), sep="_")


FakeNews3 <- unite(FakeNews2, url, c("Website", "Domain"), sep="_")

FakeNews0 <- FakeNews3[1:10,]

#Had to install packages again due to error code stating it could not be found
install.packages("dplyr")
install.packages("tidyr")