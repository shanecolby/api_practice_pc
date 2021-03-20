require "http"

p "Input a city to view current weather."
userCity = gets.chomp


weather = HTTP.get("http://api.openweathermap.org/data/2.5/weather?q=#{userCity}&appid=9b47e03139e2b9f69fb428cf5bee786c&units=imperial").parse




temperature = weather['main']['temp']

current_conditions = weather['weather'][0]['description']

city = weather['name']

feels =  weather['main']['feels_like']

high =  weather['main']['temp_max']

low =  weather['main']['temp_min']

wind_speed =  weather['wind']['speed']




p "Hello, it is #{temperature} degrees and currently #{current_conditions}. It feels like #{feels}. Today's high is #{high} degrees and the low is #{low} degrees with a wind speed of #{wind_speed}. That is what to expect here in #{city}."

