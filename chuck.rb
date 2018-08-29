require 'httparty'
require 'colorize'
require 'colorized_string'
require_relative './app'

class ChuckJokes
    #there are 603 total jokes 
    def help
        puts "Wants some help.....Look it up, like I did!  👊  🥋"
        puts "💩 Because Chuck says so!"
    end

    def get_joke_by_id(id)
        by_joke_by_id = HTTParty.get("http://api.icndb.com/jokes/#{id}")
        puts ColorizedString[by_joke_by_id["value"]["joke"]].colorize(:color => :yellow, :background => :green)
    end
    def replace_name(name)
        by_replace_name_data = HTTParty.get("http://api.icndb.com/jokes/random?firstName=#{name}")
        puts by_replace_name_data["value"]["joke"].colorize(:light_blue)
    end
    def random
        by_random_joke_data = HTTParty.get("http://api.icndb.com/jokes/random")
        #by_random_joke_data.value.joke
        puts ColorizedString[by_random_joke_data["value"]["joke"]].green.on_yellow.blink
    end
    def test  #works
        by_all_data = HTTParty.get("http://api.icndb.com/jokes")
        puts by_all_data["value"][0]["joke"]
    end

end

