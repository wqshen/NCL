站点数据客观分析
==================

对于站点观测数据而言，如果想要分析观测要素的空间分布特征，一个必要且有效的方式是进行客观分析，获得
格点上的的要素值，从而绘制出等值线图。本文以 Micaps 数据格式的站点观测为例，探讨地面站点资料分析
方法。

数据准备：

本工程下的 sample_data 目录内的 17033115.000 文件即为3月31号15时的台站降水资料，资料格式为
Micaps diamond 3 格式，其中包含 5 行的文件头，描述了数据的名称、格式、日期、记录的数目信息，其下
则为数据块，每一行代表一个观测，每列分别为站点编号、台站经度、台站纬度、台站类型码、要素观测值。

#1 读取数据
-----------------------
使用 readAsciiTable 来读取文本类型的站点观测数据，
readAsciiTable 函数，可以读取规整类型的文本数据，并能指定开始和结尾需要忽略的行

函数说明：

data_type [*] readAsciiTable(filename: string, col: integer或long, data_type: string, opt)

参数：
filename: 文件名
ncol: 指定数据的列数
data_type: 数据类型，如浮点型 "float", 整型 "integer", 字符串 "string"
opt: 选项

.. code::
	f = readAsciiTable('17033115.000', 5, "float", 5)
	print(f)


#2 客观分析
-----------------------

使用函数
`obj_anal_ic_Wrap <https://www.ncl.ucar.edu/Document/Functions/Contributed/obj_anal_ic_Wrap.shtml>`_
来对台站降水量进行客观分析，得到插值到格点的数据

obj_anal_ic_Wrap(
	zlon   [*] : numeric,  ; 观测要素的经度
	zlat   [*] : numeric,  ; 观测要素的纬度
	z          : numeric,  ; 要素观测值
	glon   [*] : numeric,  ; 格点经度
	glat   [*] : numeric,  ; 格点纬度
	rscan  [*] : numeric,  ; 客观分析中连续的影响半径
	option [1] : logical   ; 选项
	)

.. code::
    buffer = 5
    resolution = 0.5
    minlon = min(f(:, 1))
    maxlon = max(f(:, 1))
    minlat = min(f(:, 2))
    maxlat = max(f(:, 2))
    npts_lon = toint((maxlon - minlon + 2 * buffer) / resolution)
    npts_lat = toint((maxlat - minlat + 2 * buffer) / resolution)
    glon = fspan(minlon - buffer, maxlon + buffer, npts_lon)
    
    glon@long_name = "lon"
    glon!0 = "lon"
    glon@units = ""


    glat = fspan(minlat - buffer, maxlat + buffer, npts_lat)
    glat@long_name = "lat"
    glat!0 = "lat"

    m = obj_anal_ic_Wrap(f(:, 1), f(:, 2), f(:, 4), glon, glat, 2, False)