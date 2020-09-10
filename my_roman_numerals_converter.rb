def my_roman_numerals_converter(param_1)
   
    m = ["", "M", "MM", "MMM"] 
    c = ["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"]
    x = ["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"]
    i = ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"]

    thousands = m[param_1/1000]
    hundereds = c[(param_1%1000)/100]
    tens =  x[(param_1%100)/10]
    ones = i[param_1%10]

    ans = thousands + hundereds + tens + ones
          
    return ans
end   