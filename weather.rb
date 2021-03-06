require "forecast_io"

# configure the Dark Sky API with your API key
ForecastIO.api_key = "34a5c5394a5b9ab52c00af35bd1959e1"

# do the heavy lifting, use Global Hub lat/long
forecast = ForecastIO.forecast(42.0574063,-87.6722787).to_hash

# pp = pretty print
# use instead of `puts` to make reading a hash a lot easier
# e.g. `pp forecast`


current_temperature = forecast["currently"]["temperature"]
current_conditions = forecast["currently"]["summary"]

#high_temp = forecast["daily"]["data"][0]["temperatureHigh"]

puts "In Chicago, it is currently #{current_temperature} and #{current_conditions}."
puts "Extended forecast:"
for day in forecast["daily"]["data"]
   puts "A high temperature of #{day["temperatureHigh"]} and #{day["summary"]}"
end



#puts high_temp
#puts "A high temperature of #{forecast["daily"]["data"][0]["temperatureHigh"]} and #{forecast["daily"]["data"][0]["summary"]}"
#puts "A high temperature of #{forecast["daily"]["data"][1]["temperatureHigh"]} and #{forecast["daily"]["data"][1]["summary"]}"
#puts "A high temperature of #{forecast["daily"]["data"][2]["temperatureHigh"]} and #{forecast["daily"]["data"][2]["summary"]}"
#puts "A high temperature of #{forecast["daily"]["data"][3]["temperatureHigh"]} and #{forecast["daily"]["data"][3]["summary"]}"
#puts "A high temperature of #{forecast["daily"]["data"][4]["temperatureHigh"]} and #{forecast["daily"]["data"][4]["summary"]}"
#puts "A high temperature of #{forecast["daily"]["data"][5]["temperatureHigh"]} and #{forecast["daily"]["data"][5]["summary"]}"
#puts "A high temperature of #{forecast["daily"]["data"][6]["temperatureHigh"]} and #{forecast["daily"]["data"][6]["summary"]}"
#puts "A high temperature of #{forecast["daily"]["data"][7]["temperatureHigh"]} and #{forecast["daily"]["data"][7]["summary"]}"


# Example output:
#
# In Chicago, it is currently 33.89 degress and Clear
# Extended forecast:
# A high temperature of 36.47 and Possible flurries in the afternoon.
# A high temperature of 33.98 and Mostly cloudy throughout the day.
# A high temperature of 33.94 and Possible light snow until evening.
# A high temperature of 32.73 and Mostly cloudy throughout the day.
# A high temperature of 32.51 and Partly cloudy throughout the day.
# A high temperature of 40.42 and Clear throughout the day.
# A high temperature of 23.21 and Overcast throughout the day.
# A high temperature of 29.12 and Clear throughout the day.