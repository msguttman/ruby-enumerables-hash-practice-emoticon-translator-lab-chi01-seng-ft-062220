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


def get_english_meaning(file, emoticon_to_find)
  # code goes here
  emoticons = load_library(file)
  meaning = ""
  emoticons.map { |k, v| 
  if v[:japanese] == emoticon_to_find
  meaning << k
  end
  }
  if meaning == ""
    return "Sorry, that emoticon was not found"
  else
    return meaning
  end
end




def get_japanese_emoticon(file, emoticon_to_find)
  # code goes here
  emoticons = load_library(file)
  emoticons.map { |k, v|
  v[:english] == emoticon_to_find
  k
} 
end




