# require modules here
require 'yaml'

def load_library(file)
  # code goes here
  translated_hash = Hash.new
  emoticons_data = YAML.load_file(file)
  emoticons_data.map { |k, v|
  translated_hash[k] = {:english => v[0], :japanese => v[1]}
  }
translated_hash
end



def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
