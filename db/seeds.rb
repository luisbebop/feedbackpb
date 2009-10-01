# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
["luis", "danilo", "bruno", "thiago", "luiza", "eliezer", "jean", "gabriela"].each do |username|
  User.create(:username=> "#{username}@planobe.com.br")
end

User.create(:username=> "elson.net@gmail.com")
