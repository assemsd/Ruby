require 'date'

def my_data_transform(param_1)
   
    arr = param_1.split("\n")

    index = 0
    arr1 = Array.new

    while index < arr.length
        arr1[index] = arr[index].split(',')
        index += 1
    end

    for i in (1...arr1.length)

        arr1[i][4] = arr1[i][4][arr1[i][4].index('@')+1..-1]

        arr1[i][9] = DateTime.parse(arr1[i][9], '%Y-%m-%d %H:%M:%S')
        if arr1[i][9].hour >= 6 and arr1[i][9].hour < 12
            arr1[i][9] = "morning"    
        elsif arr1[i][9].hour >= 12 and arr1[i][9].hour < 18
            arr1[i][9] = "afternoon"
        elsif arr1[i][9].hour >= 18 and arr1[i][9].hour <= 23
            arr1[i][9] = "evening"
        end

        if arr1[i][5].to_i >= 1 and arr1[i][5].to_i <= 20
            arr1[i][5] = "1->20"
        elsif arr1[1][5].to_i >= 21 and arr1[i][5].to_i <= 40
            arr1[i][5] = "21->40"
        elsif arr1[i][5].to_i >= 41 and arr1[i][5].to_i <= 65
            arr1[i][5] = "41->65"
        elsif arr1[i][5].to_i >= 66 and arr1[i][5].to_i <= 99
            arr1[i][5] = "66->99"
        end
    end

    for i in (0...arr1.length)
        arr1[i] = arr1[i].join(",")
    end

    return arr1

end

#puts my_data_transform("Gender,FirstName,LastName,UserName,Email,Age,City,Device,Coffee Quantity,Order At\nMale,Carl,Wilderman,carl,wilderman_carl@yahoo.com,29,Seattle,Safari iPhone,2,2020-03-06 16:37:56\nMale,Marvin,Lind,marvin,marvin_lind@hotmail.com,77,Detroit,Chrome Android,2,2020-03-02 13:55:51\nFemale,Shanelle,Marquardt,shanelle,marquardt.shanelle@hotmail.com,21,Las Vegas,Chrome,1,2020-03-05 17:53:05\nFemale,Lavonne,Romaguera,lavonne,romaguera.lavonne@yahoo.com,81,Seattle,Chrome,2,2020-03-04 10:33:53\nMale,Derick,McLaughlin,derick,mclaughlin.derick@hotmail.com,47,Chicago,Chrome Android,1,2020-03-05 15:19:48\n")