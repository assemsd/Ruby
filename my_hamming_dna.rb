def my_hamming_dna(param_1, param_2)

    if param_1.length != param_2.length
        return -1
    end

    bad = 0
    count = 0

    while count < param_1.length
        if param_1[count] != param_2[count]
            bad+=1
        end        
        count+=1
    end

    return bad
end