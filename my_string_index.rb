def my_string_index(param_1, param_2)
    if param_1.include? param_2
        return param_1.index(param_2)
    else
        return -1
    end
end