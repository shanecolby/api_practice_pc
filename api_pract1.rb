require "http"

p HTTP.get("http://https://pro.openweathermap.org/data/2.5/forecast/climate?zip=94040,us&appid=9b47e03139e2b9f69fb428cf5bee786c").parse

