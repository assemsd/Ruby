require 'csv'
def my_csv_parser(param_1, param_2)

    arr = param_1.split("\n")
    index = 0
    arr_new = Array.new

    while index < arr.length
        arr_new[index] = arr[index].split(param_2)
        index += 1
    end
    return arr_new
end

# puts my_csv_parser("a,b,c,e\n1,2,3,4\n", ",")