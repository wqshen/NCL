NCL列表
================

NCL列表是唯一一种可以包含不同数据类型或是多种变量组合的类型。
列表中的变量可以有不同的类型，大小和形状。
从列表变量支持的操作来看，它类似于堆栈或队列。

列表变量创建
----------------
直接定义
^^^^^^^^^^^^
使用列表定义符 :code:`[/ /]` 将列表元素囊括其中即可。如

.. code::

    i = (/ (/1,2,3/), (/4,5,6/), (/7,8,9/) /) ; 二维整型数组
    x = 5.0 ; 浮点型标量
    d = (/100000.d, 283457.23d/) ; 一维双精度数组
    s = "abcde" ; 字符串
    c = stringtochar("abcde") ; 字符数组
    vl = [/i, x, d, c, s/] ; 使用[/.../]创建包含多种类型变量的列表


动态定义
^^^^^^^^^^^^^
另一种定义列表的方式是将其当作堆来对待。
这一特征允许动态地向已经存在的列表变量中增加添加变量。
使用 :code:`NewList` 函数创建一个空的列表，
后使用 :code:`ListPush` 向列表中动态添加元素。

.. code::

    x = (/1, 2, 3, 4/)
    x@attr = "integer array"
    y = (/6., 7., 8., 9./)
    y@attr = "float array"
    s = (/"one", "two", "three"/)
    s@attr = "string array"
    my_list = NewList("lifo")
    ListPush(my_list, x)
    ListPush(my_list, y)
    ListPush(my_list, s)

.. note:: 使用ListPush来向列表中增加元素时，新增的元素总是位于列表的头部（顶部）。


列表变量查询
----------------
- ``ListCount`` 列表计数, 查询列表元素的个数
- ``ListIndex`` 列表索引, 查询给定元素在列表中的索引，不存在返回 ``-1``

列表变量访问
----------------
对应于列表元素的创建，访问列表也有两种方式。

直接索引和切片
^^^^^^^^^^^^^^^^^^^
与数组索引和切片类似，但是列表元素索引和切片使用中括号 :code:`[ ]` 。
这种方式需要知道所要索引的元素在列表中的位置。这一操作不会改变列表中的元素。

可以用ListIndex函数来首先获取一个变量的索引，然后使用这一索引来获取对应的元素::

    e = my_list[1]
    print(e)
    idx = ListIndex(my_list, x)
    print(idx)
    nx = my_list[idx]
    print("ori x = " + x)
    print("new x = " + nx)

堆元素弹出/队列出列
^^^^^^^^^^^^^^^^^^^^^^^^^^
仿照典型的堆栈和队列操作，使用函数 :code:`ListPop` 来弹出，其还有个别名函数
:code:`ListDequeue` 。例如::
    
    a = ListPop(my_list) ; 弹出/出列 my_list中的元素

使用ListPop来访问列表元素时，元素本身从列表中移除。
弹出/出列的元素是列表的头部还是尾部基于列表的类型，
有两种类型的列表:

1. FIFO (先进先出，类似于计算科学中的队列)
2. LIFO (后进先出，类似于堆栈)。

列表类型可以用ListGetType来获取，同时可用ListSetType来改变。范例::

    lt = ListGetType(my_list)
    ListSetType(my_list, "lifo")
    ListSetType(my_list, "fifo")


.. disqus::
    :disqus_identifier: first_map