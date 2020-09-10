def my_data_process(param_1)
    require 'csv'
    require 'json'
    # param_1 = ["Gender,FirstName,LastName,UserName,Email,Age,City,Device,Coffee Quantity,Order At", "Male,Carl,Wilderman,carl,yahoo.com,21->40,Seattle,Safari iPhone,2,afternoon", "Male,Marvin,Lind,marvin,hotmail.com,66->99,Detroit,Chrome Android,2,afternoon", "Female,Shanelle,Marquardt,shanelle,hotmail.com,21->40,Las Vegas,Chrome,1,afternoon", "Female,Lavonne,Romaguera,lavonne,yahoo.com,66->99,Seattle,Chrome,2,morning", "Male,Derick,McLaughlin,derick,hotmail.com,41->65,Chicago,Chrome Android,1,afternoon"]

    param_1 = param_1.join("\n") 

    new_csv = CSV.parse(param_1, headers: true)

    json_hash = Hash.new()

    json_hash[new_csv.headers()[0]] = new_csv.by_col[0].group_by{|e| e}.map{|k, v| [k, v.length]}.to_h
    json_hash[new_csv.headers()[4]] = new_csv.by_col[4].group_by{|e| e}.map{|k, v| [k, v.length]}.to_h
    json_hash[new_csv.headers()[5]] = new_csv.by_col[5].group_by{|e| e}.map{|k, v| [k, v.length]}.to_h
    json_hash[new_csv.headers()[6]] = new_csv.by_col[6].group_by{|e| e}.map{|k, v| [k, v.length]}.to_h
    json_hash[new_csv.headers()[7]] = new_csv.by_col[7].group_by{|e| e}.map{|k, v| [k, v.length]}.to_h
    json_hash[new_csv.headers()[9]] = new_csv.by_col[9].group_by{|e| e}.map{|k, v| [k, v.length]}.to_h

    j = json_hash.to_json
    

    
end
 
# names = ["Jason", "Jason", "Teresa", "Judah", "Michelle", "Judah", "Judah", "Allison"]

# name_frequency_hash = {}

# names.each do |name|
#   count = names.count(name)
#   name_frequency_hash[name] = count  
# end

# p name_frequency_hash