library(tweetrmd)
library(rtweet)

epitwitter_token <- function() {
  rtweet::create_token(
    "rtweet_tokens_zy",
    consumer_key = Sys.getenv("consumer_key"),
    consumer_secret = Sys.getenv("consumer_secret"),
    access_token = Sys.getenv("access_token"),
    access_secret = Sys.getenv("access_secret"),
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
