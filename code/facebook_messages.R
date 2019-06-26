#------------------------------------------------------------------------------------
#
# Wizualizacja Danych
# Projekt nr 1
#
#------------------------------------------------------------------------------------
#
# Kody do tworzenia wykresow z wiadomosci z facebooka
#
#------------------------------------------------------------------------------------

slowa<- read.csv("slowa.csv")
wiadomosci<-read.csv("wiadomosci.csv")


library(dplyr)
library(ggplot2)
library(reshape2)
melt(wiadomosci) %>% 
  ggplot(aes(x = variable, y = value, fill = Imiê)) + 
  geom_bar(stat = "identity", position = "dodge")+
  geom_text(aes(label=value), vjust=-0.5, color="black",position = position_dodge(0.9), size=5)+
  ggtitle("Iloœæ wys³anych wiadomoœci")+
  scale_fill_brewer(palette="Paired")




melt(slowa) %>% 
  ggplot(aes(x = variable, y = value, fill = Name)) + 
  geom_bar(stat = "identity", position = "dodge")+
  geom_text(aes(label=value), vjust=-0.5, color="black",position = position_dodge(0.9), size=5)+ggtitle("Iloœæ wys³anych s³ów")+
  scale_fill_brewer(palette="Paired")
