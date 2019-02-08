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

def get_japanese_emoticon
  # code goes here
end

# describe "#get_japanese_emoticon" do

#   it "accepts two arguments, the YAML file path and the emoticon" do
#     expect { get_japanese_emoticon("./lib/emoticons.yml", ":)") }.to_not raise_error
#   end

#   it "calls on #load_library and gives it the argument of the file path" do
#     emoticon_hash = load_library("./lib/emoticons.yml")

#     file_path = "./lib/emoticons.yml"
#     expect(self).to receive(:load_library).with(file_path).and_return(emoticon_hash)
#     answer = get_japanese_emoticon("./lib/emoticons.yml", "=D")
#   end

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