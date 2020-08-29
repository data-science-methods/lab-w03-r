#' tidytuesdayR doesn't save the downloaded files locally.  Instead, it retrieves them from GitHub each time, "so that you always are using the most recent version of the data" (<https://github.com/thebioengineer/tidytuesdayR/issues/69>).  If you're rerunning the script multiple times, this can result in GitHub rate limiting you (restricting you from using the API for several minutes).  
#' 
#' You can avoid this by setting up a Personal Access Token (PAT), which will let R packages authenticate your identity with the GitHub API.  **Note that PATs are extremely sensitive: they're equivalent to your GitHub password.**
#' 
#' Here's a one-time setup for adding a PAT:   
#' 1. 
install.packages('usethis')
#' 2. 
usethis::browse_github_pat()
#' 3. After generating the PAT, copy and paste it into a new text file. **DON'T SAVE, DON'T SHOW ANYONE. THIS IS YOUR GITHUB PASSWORD.**
#' 4. 
usethis::edit_r_environ()
#' 5. Add a line GITHUB_PAT=xxxyyyzzz, pasting in your PAT
#' 6. Make sure `.Renviron` ends with a newline
#' 7. Save everything and restart R