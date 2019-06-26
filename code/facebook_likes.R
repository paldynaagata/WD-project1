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

### Lajki - zliczenie

#------------------------------------------------------------------------------------

## 1) likes_on_external_sites

# Agata
likes_on_external_sites_path_A = "C:/Users/aga71/OneDrive/studia/SEMESTRY/MGR/II/WD/projekty/1/Dane/Agata/likes_on_external_sites.json"
likes_on_external_sites_df_A <- read_json(likes_on_external_sites_path_A, simplifyVector = TRUE)
likes_on_external_sites_df_A <- likes_on_external_sites_df_A$other_likes
likes_on_external_sites_df_A$timestamp <- as.POSIXct(as.numeric(as.character(likes_on_external_sites_df_A$timestamp)), origin = "1970-01-01", tz = "GMT")
head(likes_on_external_sites_df_A)
nrow(likes_on_external_sites_df_A)  # 8

# Ola
likes_on_external_sites_path_O = "C:/Users/aga71/OneDrive/studia/SEMESTRY/MGR/II/WD/projekty/1/Dane/Ola/likes_on_external_sites.json"
likes_on_external_sites_df_O <- read_json(likes_on_external_sites_path_O, simplifyVector = TRUE)
likes_on_external_sites_df_O <- likes_on_external_sites_df_O$other_likes
likes_on_external_sites_df_O$timestamp <- as.POSIXct(as.numeric(as.character(likes_on_external_sites_df_O$timestamp)), origin = "1970-01-01", tz = "GMT")
head(likes_on_external_sites_df_O)
nrow(likes_on_external_sites_df_O)  # 16

#------------------------------------------------------------------------------------

## 2) likes_pages

# Agata
likes_pages_path_A = "C:/Users/aga71/OneDrive/studia/SEMESTRY/MGR/II/WD/projekty/1/Dane/Agata/likes_pages.json"
likes_pages_df_A <- read_json(likes_pages_path_A, simplifyVector = TRUE)
likes_pages_df_A <- likes_pages_df_A$page_likes
likes_pages_df_A$timestamp <- as.POSIXct(as.numeric(as.character(likes_pages_df_A$timestamp)), origin = "1970-01-01", tz = "GMT")
head(likes_pages_df_A)
nrow(likes_pages_df_A)  # 385

# Ola
likes_pages_path_O = "C:/Users/aga71/OneDrive/studia/SEMESTRY/MGR/II/WD/projekty/1/Dane/Ola/likes_pages.json"
likes_pages_df_O <- read_json(likes_pages_path_O, simplifyVector = TRUE)
likes_pages_df_O <- likes_pages_df_O$page_likes
likes_pages_df_O$timestamp <- as.POSIXct(as.numeric(as.character(likes_pages_df_O$timestamp)), origin = "1970-01-01", tz = "GMT")
head(likes_pages_df_O)
nrow(likes_pages_df_O)  # 1181

#------------------------------------------------------------------------------------

## 3) likes_posts_and_comments

# Agata
likes_posts_and_comments_path_A = "C:/Users/aga71/OneDrive/studia/SEMESTRY/MGR/II/WD/projekty/1/Dane/Agata/likes_posts_and_comments.json"
likes_posts_and_comments_df_A <- read_json(likes_posts_and_comments_path_A, simplifyVector = TRUE)
likes_posts_and_comments_df_A <- likes_posts_and_comments_df_A$reactions
likes_posts_and_comments_df_A$timestamp <- as.POSIXct(as.numeric(as.character(likes_posts_and_comments_df_A$timestamp)), origin = "1970-01-01", tz = "GMT")
head(likes_posts_and_comments_df_A)
nrow(likes_posts_and_comments_df_A)  # 14710

# Ola
likes_posts_and_comments_path_O = "C:/Users/aga71/OneDrive/studia/SEMESTRY/MGR/II/WD/projekty/1/Dane/Ola/likes_posts_and_comments.json"
likes_posts_and_comments_df_O <- read_json(likes_posts_and_comments_path_O, simplifyVector = TRUE)
likes_posts_and_comments_df_O <- likes_posts_and_comments_df_O$reactions
likes_posts_and_comments_df_O$timestamp <- as.POSIXct(as.numeric(as.character(likes_posts_and_comments_df_O$timestamp)), origin = "1970-01-01", tz = "GMT")
head(likes_posts_and_comments_df_O)
nrow(likes_posts_and_comments_df_O)  # 6798
