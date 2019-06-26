#------------------------------------------------------------------------------------
#
# Wizualizacja Danych
# Projekt nr 1
#
#------------------------------------------------------------------------------------
#
# Kody do tworzenia wykresow z danych z facebooka
#
#------------------------------------------------------------------------------------

library(jsonlite)
library(dplyr)
library(ggplot2)
library(gridSVG)

#------------------------------------------------------------------------------------

### Znajomi

## Wczytanie danych

# Agata
friends_path_A = "C:/Users/aga71/OneDrive/studia/SEMESTRY/MGR/II/WD/projekty/1/Dane/Agata/friends.json"
friends_df_A <- read_json(friends_path_A, simplifyVector = TRUE)
friends_df_A <- friends_df_A$friends
friends_df_A$timestamp <- as.POSIXct(as.numeric(as.character(friends_df_A$timestamp)), origin = "1970-01-01", tz = "GMT")
head(friends_df_A)

# Ola
friends_path_O = "C:/Users/aga71/OneDrive/studia/SEMESTRY/MGR/II/WD/projekty/1/Dane/Ola/friends.json"
friends_df_O <- read_json(friends_path_O, simplifyVector = TRUE)
friends_df_O <- friends_df_O$friends
friends_df_O$timestamp <- as.POSIXct(as.numeric(as.character(friends_df_O$timestamp)), origin = "1970-01-01", tz = "GMT")
head(friends_df_O)


## Zliczenie

# Agata
friends_by_year_A <- friends_df_A %>% 
  mutate(year = substring(timestamp, 1, 4)) %>%
  count(year)

friends_by_year_A

# Ola
friends_by_year_O <- friends_df_O %>% 
  mutate(year = substring(timestamp, 1, 4)) %>%
  count(year)

friends_by_year_O


## Utworzenie ramki danych do wykresu
friends_by_year_A$group <- "Agata"
friends_by_year_O$group <- "Ola"

friends_by_year <- rbind(friends_by_year_A, friends_by_year_O)

friends_by_year


## Wykres
friends_by_year_plot <- ggplot(friends_by_year, aes(x = year, y = n, group = group, col = group, fill = group)) +
  geom_point(size = 7) + geom_line() +
  ggtitle("Liczba dodawanych znajomych w poszczególnych latach") +
  xlab("Rok") + ylab("Liczba dodanych znajomych") +
  theme(plot.title = element_text(size = 20, face = "bold"),
        axis.title = element_text(size = 18, face = "bold"),
        axis.text = element_text(size = 16),
        legend.position = "none")

friends_by_year_plot


## Zapis wykresu do pliku svg
svg("friends_by_year_plot.svg", height = 8, width = 16)
friends_by_year_plot
dev.off()
