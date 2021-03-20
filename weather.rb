require "http"

weather = HTTP.get('http://api.openweathermap.org/data/2.5/weather?q=chicago&appid=APIKEY&units=imperial').parse

temp = weather['main']['temp']
current_conditions = weather['weather'][0]['description']
city = weather['name']

p "It is #{temp} degrees and #{current_conditions} in #{city}."