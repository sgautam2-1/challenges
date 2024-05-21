require 'net/http'
require 'json'
require 'pp'

url = 'https://dog.ceo/api/breeds/list/all'
uri = URI(url)
response = Net::HTTP.get(uri)
dog_breeds = JSON.parse(response)


breeds = dog_breeds['message']

breeds.each do |breed, sub_breed|
  if sub_breed.empty?
    puts "* #{breed.upcase}"
  else
    puts "+ #{breed.capitalize}"
    sub_breed.each do |sub_breed|
     
      puts "   * #{sub_breed.capitalize}"
    end
  end
end