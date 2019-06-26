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

#------------------------------------------------------------------------------------

### Komentarze - zliczenie

#------------------------------------------------------------------------------------

# Agata
comments_path_A = "C:/Users/aga71/OneDrive/studia/SEMESTRY/MGR/II/WD/projekty/1/Dane/Agata/comments.json"
comments_df_A <- read_json(comments_path_A, simplifyVector = TRUE)
comments_df_A <- comments_df_A$comments
comments_df_A$timestamp <- as.POSIXct(as.numeric(as.character(comments_df_A$timestamp)), origin = "1970-01-01", tz = "GMT")
head(comments_df_A)
nrow(comments_df_A)  # 2042

# Ola
comments_path_O = "C:/Users/aga71/OneDrive/studia/SEMESTRY/MGR/II/WD/projekty/1/Dane/Ola/comments.json"
comments_df_O <- read_json(comments_path_O, simplifyVector = TRUE)
comments_df_O <- comments_df_O$comments
comments_df_O$timestamp <- as.POSIXct(as.numeric(as.character(comments_df_O$timestamp)), origin = "1970-01-01", tz = "GMT")
head(comments_df_O)
nrow(comments_df_O)  # 4056

#------------------------------------------------------------------------------------

### Posty - zliczenie

#------------------------------------------------------------------------------------

# Agata
posts_path_A = "C:/Users/aga71/OneDrive/studia/SEMESTRY/MGR/II/WD/projekty/1/Dane/Agata/posts.json"
posts_df_A <- read_json(posts_path_A, simplifyVector = TRUE)
posts_df_A <- posts_df_A$status_updates
posts_df_A$timestamp <- as.POSIXct(as.numeric(as.character(posts_df_A$timestamp)), origin = "1970-01-01", tz = "GMT")
head(posts_df_A)
nrow(posts_df_A)  # 2156

# Ola
posts_path_O = "C:/Users/aga71/OneDrive/studia/SEMESTRY/MGR/II/WD/projekty/1/Dane/Ola/posts.json"
posts_df_O <- read_json(posts_path_O, simplifyVector = TRUE)
posts_df_O <- posts_df_O$status_updates
posts_df_O$timestamp <- as.POSIXct(as.numeric(as.character(posts_df_O$timestamp)), origin = "1970-01-01", tz = "GMT")
head(posts_df_O)
nrow(posts_df_O)  # 2043
