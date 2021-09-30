

# Assignment 2 


setwd("/Users/isatounjie/Documents/GitHub/Aishas-Website/Assignment 2")


dat <- read.csv("dat.nsduh.small.1.csv")
        

names(dat)


class(dat$mjage)
class(dat$cigage)
class(dat$iralcage)
class(dat$age2)
class(dat$sexatract)
class(dat$speakengl)
class(dat$irsex)


hist(dat$irsex)
table(dat$irsex)

table(dat$irsex,dat$age2)
tab.agesex <- table(dat$irsex,dat$age2)
barplot(tab.agesex,
        main = "Stacked barchart",
        xlab = "Age category", ylab = "Frequency",
        legend.text = rownames(tab.agesex),
        beside = FALSE) # Stacked bars (default)
    
table(dat$mjage,dat$age2)
table(dat$cigage,dat$age2)
table(dat$iralcage,dat$age2)


table(dat$mjage,dat$age2)
tab.agemjage <- table(dat$mjage,dat$age2)
barplot(tab.agemjage,
        main = "Stacked barchart",
        xlab = "Age category", ylab = "Frequency",
        legend.text = rownames(tab.agemjage),
        beside = FALSE) # Stacked bars (default)


table(dat$cigage,dat$age2)
tab.agecigage <- table(dat$cigage,dat$age2)
barplot(tab.agecigage,
        main = "Stacked barchart",
        xlab = "Age category", ylab = "Frequency",
        legend.text = rownames(tab.agecigage),
        beside = FALSE) # Stacked bars (default)
    
table(dat$iralcage,dat$age2)
tab.ageiralcage <- table(dat$iralcage,dat$age2)
barplot(tab.ageiralcage,
        main = "Stacked barchart",
        xlab = "Age category", ylab = "Frequency",
        legend.text = rownames(tab.ageiralcage),
        beside = FALSE) # Stacked bars (default)
    
table(dat$sexatract,dat$irsex)
tab.irsexatract <- table(dat$sexatract,dat$irsex)
barplot(tab.irsexatract,
        main = "Stacked barchart",
        xlab = "Sexual Attraction", ylab = "Frequency",
        legend.text = rownames(tab.irsexatract),
        beside = FALSE) # Stacked bars (default)

table(dat$speakengl,dat$irsex)
tab.irsexspeakengl <- table(dat$speakengl,dat$irsex)
barplot(tab.irsexspeakengl,
        main = "Stacked barchart",
        xlab = "Speak English", ylab = "Frequency",
        legend.text = rownames(tab.irsexspeakengl),
        beside = FALSE) # Stacked bars (default)
    
        
