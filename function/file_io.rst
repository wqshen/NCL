文件读写函数
=============


二进制文件读写
----------------

fbindirread
^^^^^^^^^^^^^^^

读取由Fortran直接存取方式或C写的二进制文件

构造原型

function fbindirread (path     [1] : string,           
                      rec_num  [1] : integer,          
                      rec_dims [*] : integer or long,  
                      rec_type [1] : string)

参数说明

path: 二进制文件路径名
rec_num: 从文件读取的记录序数
rec_dims: 一维数组，指定数据的形状（维数大小），未知时使用 -1
rec_type: 记录的数据类型

返回

return_val [rec_dims] :  rec_type

维数大小为rec_dims，变量类型为rec_type的NCL变量




