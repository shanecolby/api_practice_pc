require "http"

weather = HTTP.get('http://api.openweathermap.org/data/2.5/weather?q=chicago&appid=APIKEY&units=imperial').parse

p weather