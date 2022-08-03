library(tweetrmd)
library(rtweet)

rtweet_bot(
  api_key = Sys.getenv("CONSUMER_KEY"),
  api_secret = Sys.getenv("CONSUMER_SECRET"),
  access_token = Sys.getenv("ACCESS_TOKEN"),
  access_secret = Sys.getenv("ACCESS_SECRET")
)

handle <- "zhiiiyang"
recent_tweets <- get_timeline(handle, n = 1)

tmpimg <- "tweet.png"
tweet_screenshot(
  tweet_url(handle, recent_tweets$id_str),
  scale = 5, 
  maxwidth = 600,
  theme = "dark",
  file = tmpimg
)
