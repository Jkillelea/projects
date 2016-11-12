`// ==UserScript==
// @name        Exclude Subreddits
// @namespace   exclude-subreddits
// @include     https://www.reddit.com/*
// @version     1
// @grant       none
// ==/UserScript==`
'use strict'


BANNED_SUBREDDITS = ['The_Donald', 'AdviceAnimals', 'AskReddit', 'cringepics', 'Conservative',
                     'CringeAnarchy', 'EnoughTrumpSpam', 'atheism', 'rage', 'Jokes'
                     `/*put subreddit names here*/`]
contents = document.getElementsByClassName('content')
for content in contents
  divs = content.getElementsByTagName 'div' # each div on the main page
  for div in divs
    if div.hasAttribute 'data-subreddit'
      subreddit = div.getAttribute 'data-subreddit'
      if BANNED_SUBREDDITS.includes subreddit
        console.log "Exclude Subreddit blocked #{subreddit}"
        div.remove()
