import requests
import json

url = "https://community-open-weather-map.p.rapidapi.com/forecast"

querystring = {"q":"Cairo,EG"}

headers = {
    'x-rapidapi-key': "2a9769dc82msh399ea7c7313cd01p1c533cjsne440d55603bb",
    'x-rapidapi-host': "community-open-weather-map.p.rapidapi.com"
    }

response = requests.request("GET", url, headers=headers, params=querystring)



p = json.loads(response.text)
print(p["list"][2]["main"]["humidity"])
# convert to csv
#load csv
