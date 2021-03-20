require "http"

p "Input a city to view current weather."
userCity = gets.chomp


weather = HTTP.get("http://api.openweathermap.org/data/2.5/weather?q=#{userCity}&appid=APIKEY&units=imperial").parse

temperature = weather['main']['temp']

current_conditions = weather['weather'][0]['description']

city = weather['name']



p "It is #{temperature} degrees and #{current_conditions} in #{city}."