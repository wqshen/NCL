命令行选项和参数
==================

运行NCL时，可以使用一些选项来改变NCL解释器的默认行为。
同时给脚本传入命令行参数来指定程序中的变量值，这使得编写的脚本能够更加有效。

选项
-----------

NCL预定义的选项包括：

- ``-f`` : 在可能的情况下使用新的文件结构和NetCDF4特征
- ``-h`` : 打印此命名行选项帮助信息并退出
- ``-n`` : 使用print函数时，不显示元素序号
- ``-o`` : 对于某些向后不兼容的改变保留从前的行为
- ``-p`` : 关闭 ``system()`` 函数在页面上的输出
- ``-x`` : 回调NCL命令，进入命令行时将回调所有自动载入的函数（6.2.0版以上）
- ``-Q`` : 关闭NCL版本和版权信息显示
- ``-V`` : 打印NCL版本并退出

.. option:: -h

.. code::

    $ ncl -h
      Usage: ncl -fhnopxQV <args> <file.ncl>
         -f: use new file structure and NetCDF4 features when possible
         -h: print this message and exit
         -n: don't enumerate values in print()
         -o: retain former behavior for certain backwards-incompatible changes
         -p: don't page output from the system() command
         -x: echo NCL commands
         -Q: turn off echo of NCL version and copyright info
         -V: print NCL version and exit

.. option:: -n
.. code::
       
    $ ncl -n
     Copyright (C) 1995-2015 - All Rights Reserved
     University Corporation for Atmospheric Research
     NCAR Command Language Version 6.3.0
     The use of this software is governed by a License Agreement.
     See http://www.ncl.ucar.edu/ for more details.
    ncl 0> f = addfile("T2m.nc", "r")
    ncl 1> T = f->T
    ncl 2> print(T)

将输出::

   Variable: T
   Type: float
   Total Size: 72192 bytes
               18048 values
   Number of Dimensions: 3
   Dimensions and sizes:   [time | 1] x [lat | 94] x [lon | 192]
   Coordinates: 
               time: [197901..197901]
               lat: [-88.54195..88.54195]
               lon: [ 0..358.125]
   Number Of Attributes: 4
     units :       K
     short_name :  T2m
     long_name :   Temperature (2m)
     _FillValue :  1e+36
   255.49
   255.44
   255.39
   255.34
   255.3
        [...]
   234.23
   234.16
   234.09
   234.02
   233.95
   233.88

.. option:: -x

.. code::
      
    $ ncl -x
     Copyright (C) 1995-2015 - All Rights Reserved
     University Corporation for Atmospheric Research
     NCAR Command Language Version 6.3.0
     The use of this software is governed by a License Agreement.
     See http://www.ncl.ucar.edu/ for more details.
    ncl 0> a = 5
    + a = 5
    ncl 1> exit
    + exit

.. option:: -Q
.. code::

    $ ncl -Q
    ncl 0>

.. option:: -V
.. code::

    $ ncl -V
    6.3.0

参数
--------
命令行参数是设定变量的简单的NCL语句，变量通过赋值定义。在赋值的等号 ``=`` 前后不允许有任何的空白。

例：以下代码复制两个初始化变量 ``nyrStrt`` 和 ``nyrLast``

.. code::

    % ncl nyrStrt=1900 nyrLast=2004
     Copyright (C) 1995-2015 - All Rights Reserved
     University Corporation for Atmospheric Research
     NCAR Command Language Version 6.3.0
     The use of this software is governed by a License Agreement.
     See http://www.ncl.ucar.edu/ for more details.
    ncl 0> print(nyrStrt)

    Variable: nyrStrt
    Type: integer
    Total Size: 4 bytes
                1 values
    Number of Dimensions: 1
    Dimensions and sizes:   [1]
    Coordinates: 
    (0)     1900


同时也可以给初始化变量属性，例::

    % ncl nyrStrt=1930 'nyrStrt@long_name="Model Run Begin Year"' 'nyrStrt@units="Years"'
     Copyright (C) 1995-2015 - All Rights Reserved
     University Corporation for Atmospheric Research
     NCAR Command Language Version 6.3.0
     The use of this software is governed by a License Agreement.
     See http://www.ncl.ucar.edu/ for more details.
    ncl 0> print(nyrStrt)

    Variable: nyrStrt
    Type: integer
    Total Size: 4 bytes
                1 values
    Number of Dimensions: 1
    Dimensions and sizes:   [1]
    Coordinates: 
    Number Of Attributes: 2
      units :       Years
      long_name :   Model Run Begin Year
    (0)     1930
