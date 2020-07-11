library(tweetrmd)
library(rtweet)

handle <- "zhiiiyang"
recent_tweets <- get_timeline(handle, n = 1)

tmpimg <- "tweet.png"
tweet_screenshot(
  tweet_url(handle, recent_tweets$status_id),
  scale = 10, 
  maxwidth = 400,
  theme = "dark",
  file = tmpimg
)