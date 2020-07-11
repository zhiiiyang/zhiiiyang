library(tweetrmd)
library(rtweet)

epitwitter_token <- function() {
  rtweet::create_token(
    "rtweet_tokens_zy",
    consumer_key = Sys.getenv("CONSUMER_KEY"),
    consumer_secret = Sys.getenv("CONSUMER_SECRET"),
    access_token = Sys.getenv("ACCESS_TOKEN"),
    access_secret = Sys.getenv("ACCESS_SECRET"),
    set_renv = FALSE
  )
}

handle <- "zhiiiyang"
recent_tweets <- get_timeline(handle, n = 1)

tmpimg <- "tweet.png"
tweet_screenshot(
  tweet_url(handle, recent_tweets$status_id),
  scale = 10, 
  maxwidth = 600,
  theme = "dark",
  file = tmpimg
)
