require "pry"

def dictionary
  twitter_dictionary = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2", 
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@", 
  "and" => "&"
  }
end

def word_substituter(tweet_string)
  tweet_string.split.map do |word|
    if tweet_string.include?(word)
      word.replace(sign)
    end
  end
  tweet_string
end
binding.pry

def word_substituter(tweet)
  tweet.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end


def bulk_tweet_shortener(tweets_array)
  tweets_array.map do |words|
end



def selective_tweet_shortener
end


def shortened_tweet_truncator
end
