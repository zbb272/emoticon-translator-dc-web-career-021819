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
  
  emoticon_hash["get_emoticon"].each do | english_emoticon, japanese_emoticon |
    if emoticon == english_emoticon
      return_emoticon = japanese_emoticon
    end 
  end 
  if return_emoticon == nil 
    "Sorry, the emoticon was not found"
  else 
    return_emoticon
  end 
end

# describe "#get_japanese_emoticon" do

#   it "returns the Japanese equivalent of an English grinning" do
#     expect(get_japanese_emoticon("./lib/emoticons.yml", "=D")).to eq("(￣ー￣)")
#   end

#   it "returns the Japanese equivalent of an English happy" do
#     expect(get_japanese_emoticon("./lib/emoticons.yml", ":)")).to eq("(＾ｖ＾)")
#   end

#   it "returns the Japanese equivalent of an English sad" do
#     expect(get_japanese_emoticon("./lib/emoticons.yml", ":'(")).to eq("(Ｔ▽Ｔ)")
#   end

#   it "returns an apology message if the argument is not a known emoticon" do
#     sorry_message = "Sorry, that emoticon was not found"
#     expect(get_japanese_emoticon("./lib/emoticons.yml", "$#$%{}*")).to eq(sorry_message)
#   end


def get_english_meaning
  # code goes here
end