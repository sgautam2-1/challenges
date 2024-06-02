require 'net/http'
require 'json'

url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json?$limit=306000'
uri = URI(url) #
response = Net::HTTP.get(uri)
trees = JSON.parse(response)

ash_tree_count = 0

trees.each do |tree|
  if tree["common_name"]&.downcase&.include?("ash")
    ash_tree_count += 1
  # elsif tree['botanical_name']&.downcase&.include?('ash')
  #   ash_tree_count += 1
  end
end

puts "The city of Winnipeg has #{ash_tree_count} Ash trees."
