require "yaml"

def load_library(filepath)
  emoticons = YAML.load_file(filepath)
  new_hash  = {}
  get_meaning = {}
  get_emoticon = {}
  
  #populate get_meaning
  emoticons.each do | meaning , emoticon_array |
    emoticon_array.each do | emote | 
      get_meaning[emote] => meaning 
    end 
  end 
  
  #populate get_emoticon
  emoticons.each do | meaning , emoticon_array |
    get_emoticon[emoticon_array[0]] => emoticon_array[1]
  end 
  
  new_hash[:get_meaning] => get_meaning
  new_hash[:get_emoticon] => get_emoticon
  new_hash
end

# context "return value" do

#     let(:result) { load_library("./lib/emoticons.yml") }

#     it "returns a hash" do
#       expect(result.class).to eq(Hash)
#     end

#     it "has two keys, 'get_meaning' and 'get_emoticon'" do
#       ["get_emoticon", "get_meaning"].each { |key| expect(result.keys).to include(key) }
#       expect(result.keys.length).to eq(2)
#     end

#     it "the keys 'get_meaning' and 'get_emoticon' point to inner hashes" do
#       ["get_emoticon", "get_meaning"].each { |key| expect(result[key].class).to eq(Hash) }
#     end

#     it "the keys inside the 'get_meaning' hash are the Japanese emoticons" do
#       emoticons = ["☜(⌒▽⌒)☞", "(ΘεΘ;)", "(￣ー￣)", "o_O", "(^_-)"]
#       emoticons.each do |japanese_emoticon| 
#         expect(result['get_meaning'].keys).to include(japanese_emoticon)
#       end
#     end

#     it "the emoticon keys inside the 'get_meaning' hash point to their meanings" do
#       emoticons = {
#         "☜(⌒▽⌒)☞" => "angel",
#         "(ΘεΘ;)" => "bored",
#         "o_O" => "surprised",
#         "(^_-)" => "wink"
#       }
#       emoticons.each do |japanese_emoticon,meaning| 
#         expect(result['get_meaning'][japanese_emoticon]).to eq(meaning)
#       end
#     end

#     it "the keys inside the 'get_emoticon' hash are the English emoticons" do
#       emoticons = ["O:)", ":'(", ";)", ":$"]
#       emoticons.each do |english_emoticon| 
#         expect(result['get_emoticon'].keys).to include(english_emoticon)
#       end
#     end

#     it "the emoticon keys inside the 'get_emoticon' hash point to their Japanese equivalents" do
#       emoticons = {"O:)" => "☜(⌒▽⌒)☞", ":'(" => "(Ｔ▽Ｔ)", ";)" => "(^_-)"}
#       emoticons.each do |english_emoticon,japanese_emoticon| 
#         expect(result['get_emoticon'][english_emoticon]).to eq(japanese_emoticon)
#       end
#     end

#   end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end