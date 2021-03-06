movies <- read.csv("./output/movies.csv")

genre <- unique(as.character(movies$genre))

genre <- unique(unlist(strsplit(genre,"|",fixed = T)))

genre <- genre[-c(25,26)]
# Creating columns in Movie

for (i in 1:length(genre)){
  movies[,genre[i]] <- as.integer(grepl(genre[i],movies$genre))
}

write.csv(movies,'./output/movies_expanded.csv')
