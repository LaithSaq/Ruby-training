def stock_picker(array)
    best = 0;
    res = [0,0]
    min = [array[0],0]
    array.each_with_index do |val,ind|
        min[1] = ind unless val > min[0]
        min[0] = val unless val > min[0]
        res = [min[1],ind] if val - min[0] > best
        best = val - min[0] if val - min[0] > best
    end
    res
end

p stock_picker([17,3,6,9,15,8,6,1,10])