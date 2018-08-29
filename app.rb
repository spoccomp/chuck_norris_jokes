require_relative './chuck'


rich = ChuckJokes.new
rich.random()                   ##test works
rich.get_joke_by_id(603)        ##test works
# rich.get_joke_by_id(59)         ##test works
# rich.get_joke_by_id(333)        ##test works
rich.replace_name("Stiffler")     ##test works
# rich.test()                     ##test works
rich.help()
