; 定义一个扩展一维数组的函数
function array_insert(orig[*], val[*], loc[1])
begin
    dim_orig = dimsize(orig)
    dim_val = dimsize(val)
    new_arr = new(dim_orig+dim_val, typeof(orig))
    new_arr(0:loc) = orig(0:loc)
    new_arr(loc+1:loc+dim_val) = val
    new_arr(loc+dim_val:) = orig(loc+1:)
    return new_arr
end

; 打印函数体中定义的dim_val变量
print(dim_val)

begin
    x = (/1, 2, 3, 4, 5, 6, 7, 8, 9/)
    ; 调用函数
    x_ext = array_insert(x, (/10, 11, 12, 13/), 4)
    print(x_ext)
    ; 打印函数体中定义的new_arr变量
    print(new_arr)
end