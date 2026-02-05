# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE, deletes all tables so that we do not end up with duplicates when running multiple times while testing
# #Primary Keys do not get removed unless database gets delted, destroying only the rows
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert new rows in companies table
new_company = Company.new
#if puts gives nonsense, try p
#p new_company 
#this creates hash, no id measn not actually a row in the tabel, it is an empty hsh that needs to be populated
#{id: nil, name: nil, city: nil, state: nil, url: nil, created_at: nil, updated_at: nil}
new_company["name"] = "Apple"
new_company["city"] = "Cupertino"
new_company["state"] = "CA"
new_company["url"] = "https://apple.com"
#p new_company

#insert into table
new_company.save
#p new_company

new_company = Company.new
#if puts gives nonsense, try p
#p new_company 
#this creates hash, no id measn not actually a row in the tabel, it is an empty hsh that needs to be populated
#{id: nil, name: nil, city: nil, state: nil, url: nil, created_at: nil, updated_at: nil}
new_company["name"] = "Amazon"
new_company["city"] = "Seattle"
new_company["state"] = "WA"
new_company["url"] = "https://amazon.com"
#p new_company

#insert into table
new_company.save

new_company = Company.new
#if puts gives nonsense, try p
#p new_company 
#this creates hash, no id measn not actually a row in the tabel, it is an empty hsh that needs to be populated
#{id: nil, name: nil, city: nil, state: nil, url: nil, created_at: nil, updated_at: nil}
new_company["name"] = "Anthropic"
new_company["city"] = "San Fansisco"
new_company["state"] = "CA"
new_company["url"] = "https://anthropic.com"
#p new_company

#insert into table
new_company.save
puts "Companies: #{Company.all.count}"
# 3. query companies table to find all row with California company

cali_comapnies = Company.where({"state" => "CA"})
#p cali_comapnies
puts "Claifornia Companies: #{cali_comapnies.count}"
# 4. query companies table to find single row for Apple

apple = Company.find_by({"name" => "Apple"})
#p apple

# 5. read a row's column value

puts apple["url"]

# 6. update a row's column value

apple["url"] = "https://wwww.apple.com"
apple.save
#p apple

company = Company.find_by({"name" => "Apple"})
p company["url"]

# 7. delete a row

#apple.destroy
puts "Companies: #{Company.all.count}"

companies = Company.all

for zebra in companies
  puts zebra["name"]

end