# setting up our dummy data
# initiate or create var named cats with some dummy data
cats <- data.frame(coat = c("calico","black", "tabby"),
                   weight = c(2.1, 5.0, 3.2),
                   likes_string = c(1,0,1))
# write to a CSV file
write.csv(x = cats, file = "data/feline-data.csv", row.names = FALSE)

#look at specific columns
cats$weight
cats$likes_string
cats$coat

cats$weight +2
# produce readable sentences
paste("my cat is", cats$coat)

cats$weight + cats$weight

typeof(cats)
typeof("1")
typeof(1)
typeof(1+1)
typeof('bananna')


my_vector <- vector(length = 3)
my_vector

another_vector <- vector(mode = 'character', length = 3)
#another_vector <- 'slod','slid','slud'
str(another_vector)

# factors.  Demo of factors data structure
coats <- c('tabby','black','black','grey', 'grey', 'grey')
coats
CATagories <- as.factor(coats)
str(CATagories)
levels(CATagories)

cats[1]
cats[1,1]
cats[,1]
cats[1,]

# initiate a new variable
age <- c(2,3,5)
age
cbind(cats, age)

# adding age to my cats data structure
# column bind cbind()
cbind(cats, age)

nrow(cats)
length(age)
newRow <- list('tortiseshell',3,3, TRUE, 9)
cats <- rbind(cats, newRow)
cats

levels(cats$coat)
levels(cats$coat) <- c(levels(cats$coat), 'tortiseshell')

cats <- rbind(cats, list('tortiseshell',3,3, TRUE, 9))
cats

# remove row 4 and display the result
cats[-4,]

cats <- na.omit(cats)
cats
drop <- names(cats) %in% c("age")

#rbind   
cat <- rbind(cats,cats)
cat

rownames(cats) <- NULL
cats


