require "yaml"

def load_library(filepath)
  emoticons = YAML.load_file(filepath)
  puts emoticons
  emoticons.each do | emote , pictogram |
    
  end 
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end