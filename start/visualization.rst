数据可视化
================
气象领域也进入大数据时代了，数据的可视化在当下的需求越来越大。幸运的是，NCL作为
数据分析和可视化语言在这方面可谓功能强大。利用好这样一个工具相信能给你的科研或者
业务应用带来很大的便利。

NCL支持的文件
-------------------
支持的文件格式
^^^^^^^^^^^^^^^^^^^^
NCL直接支持的数据类型有以下几种：

- NetCDF，支持读、写、创建，后缀为".nc"、".cdf"、".netcdf"
- GRIB 1/2 [#]_，支持读，后缀为".gr", ".gr1", ".grb", ".grib", ".grb1", ".grib1", ".gr2", "grb2", ".grib2"
- HDF-4，支持读、写、创建，后缀为.hdf、.hd
- HDFEOS，支持读，后缀为".hdfeos", "he2", "he4"
- HDF5 [#]_，支持读，后缀为".h5"
- HDFEOS 5，支持读，后缀为".he5"
- CCM，支持读，后缀为".ccm"
- Shapefile [#]_，支持读，后缀为 ".shp" (Shapefile), ".mif" (MapInfo), ".gmt" (Generic Mapping Tools), ".rt1" (TIGER)

.. [#] GRIB2文件从4.3.0版开始支持
.. [#] HDF5文件从6.0.0版开始支持
.. [#] Shapefile文件从5.1.1版开始支持

支持格式的文件读取
^^^^^^^^^^^^^^^^^^^^
对于NCL直接支持的格式文件，读取起来相当简单，只需要使用 :code:`addfile` 函数即可。
语法如下::

    f = addfile(file_path, status)

| 参数说明，
| :code:`file_path` ，指定文件的绝对或相对位置，以及文件扩展名
| :code:`status` ， 指定文件操作为读取或读写还是创建（可选方式依赖于文件的格式）

.. note:: 对于支持格式的文件在磁盘中可以没有文件扩展名， 但是需要在file_path参数中指定文件扩展名。

范例
^^^^^^^^^^^^^^^^^^^^

.. literalinclude:: ../code_examples/visualization/visual_fnl.ncl
    :emphasize-lines: 4, 5, 6, 11, 12

#. 读取文件中的变量，语法是 :code:`f->var_name` ，其中f为文件句柄，而var_name则是文件f中的待读取的变量名
#. 函数 :code:`printVarSummary` 打印NCL变量的概略，包括维数和可能的坐标以及属性
#. 属性 :code:`cnFillOn` 设置等值线填色的开/关，默认为关，也就是不填色
#. 属性 :code:`cnLinesOn` 设置等值线线条的开/关，默认为开，也就是画线图

不出意外的话，你将看到屏幕上出现了这样一个图形窗口：

.. image:: ../images/visualization/visual_fnl.png
