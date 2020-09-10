def my_is_sort(param_1)
    if param_1.sort == param_1 || param_1.sort { |a, b| b <=> a } == param_1
        return true
    else
        return false
    end 
end