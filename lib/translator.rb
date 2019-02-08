require "yaml"

def load_library(filepath)
  emoticons = YAML.load_file(filepath)
  new_hash  = {}
  get_meaning = {}
  get_emoticon = {}
  
  #populate get_meaning
  emoticons.each do | meaning , emoticon_array |
    emoticon_array.each do | emote | 
      get_meaning[emote] = meaning
    end 
  end 
  
  #populate get_emoticon
  emoticons.each do | meaning , emoticon_array |
    get_emoticon[emoticon_array[0]] = emoticon_array[1]
  end 
  
  new_hash["get_meaning"] = get_meaning
  new_hash["get_emoticon"] = get_emoticon
  new_hash
end

def get_japanese_emoticon(filepath, emoticon)
  emoticon_hash = load_library(filepath)
  
  return_emoticon = nil
  
  #iterate through the "get_emoticon" hash and find the japanese emoticon 
  emoticon_hash["get_emoticon"].each do | english_emoticon, japanese_emoticon |
    if emoticon == english_emoticon
      return_emoticon = japanese_emoticon
    end 
  end 
  
  #case if no emoticon is found
  if return_emoticon == nil 
    "Sorry, that emoticon was not found"
  else 
    return_emoticon
  end 
end

def get_english_meaning
  # code goes here
end