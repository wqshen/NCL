NCL绘图
============


高级图形接口
---------------
NCL语言中包含两类绘图函数，一类以gsn开头，另一类则以gsn_csm开头。
gsn_csm接口相较于gsn接口有更多的定制化的可视化风格，同时gsn_csm接口会尽可能的
利用绘图变量的元数据如 long_name, units 等等，自动地向图形中添加文本标记，因此
有更加智能化的特征。

gsn_csm接口定制化的特征包括：

- 经纬度刻度标签
- 地图图形中灰色填充陆地
- 基于元数据添加轴标签和标题
- 为填色等值线和矢量图添加色条
- 为极球面投影添加特殊标签
- 向外的刻度
  

可用的图形接口
---------------

色图（Color maps）
^^^^^^^^^^^^^^^^^^^^^

`gsn_define_colormap <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_define_colormap.shtml>`_
`gsn_draw_colormap <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_draw_colormap.shtml>`_
`gsn_draw_named_colors <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_draw_named_colors.shtml>`_
`gsn_merge_colormaps <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_merge_colormaps.shtml>`_
`gsn_retrieve_colormap <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_retrieve_colormap.shtml>`_
`gsn_reverse_colormap <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_reverse_colormap.shtml>`_


等值线（Contours）
^^^^^^^^^^^^^^^^^^^^^^

`gsn_contour <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_contour.shtml>`_
`gsn_contour_map <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_contour_map.shtml>`_
`gsn_csm_contour <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_contour.shtml>`_
`gsn_csm_hov <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_hov.shtml>`_
`gsn_csm_time_lat <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_time_lat.shtml>`_
`gsn_csm_lat_time <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_lat_time.shtml>`_
`gsn_csm_pres_hgt <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_pres_hgt.shtml>`_
`gsn_csm_contour_map <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_contour_map.shtml>`_
`gsn_csm_contour_map_ce <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_contour_map_ce.shtml>`_
`gsn_csm_contour_map_polar <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_contour_map_polar.shtml>`_
`gsn_csm_contour_map_overlay <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_contour_map_overlay.shtml>`_ 
`gsn_contour_shade <https://www.ncl.ucar.edu//Document/Graphics/Interfaces/gsn_contour_shade.shtml>`_


地图（Maps）
^^^^^^^^^^^^^^^^^^

`gsn_map <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_map.shtml>`_ 
`gsn_csm_map <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_map.shtml>`_ 
`gsn_csm_map_ce <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_map_ce.shtml>`_ 
`gsn_csm_map_polar <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_map_polar.shtml>`_ 


基元图 （Primitives）
^^^^^^^^^^^^^^^^^^^^^^

gsn风格多边形图

`gsn_polygon <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_polygon.shtml>`_ 

向已有图形中添加多边形图形对象

`gsn_add_polygon <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_add_polygon.shtml>`_ 


在页面坐标上添加多边形

`gsn_polygon_ndc <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_polygon_ndc.shtml>`_ 


gsn风格多义线图

`gsn_polyline <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_polyline.shtml>`_ 

向已有图形中添加多义线图形对象


`gsn_add_polyline <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_add_polyline.shtml>`_ 

在页面坐标上添加多义线图

`gsn_polyline_ndc <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_polyline_ndc.shtml>`_ 

gsn风格标记图

`gsn_polymarker <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_polymarker.shtml>`_ 

向已有图形中添加标记图形对象

`gsn_add_polymarker <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_add_polymarker.shtml>`_ 

在页面坐标上添加多义线图

`gsn_polymarker_ndc <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_polymarker_ndc.shtml>`_ 

gsn风格文本

`gsn_text <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_text.shtml>`_ 


向已有图形中添加文本对象

`gsn_add_text <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_add_text.shtml>`_ 

在页面坐标上添加文本对象

`gsn_text_ndc <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_text_ndc.shtml>`_ 



`gsn_create_text <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_create_text.shtml>`_ 


`gsn_coordinates <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_coordinates.shtml>`_ 


`gsn_add_shapefile_polygons <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_add_shapefile_polygons.shtml>`_ 


`gsn_add_shapefile_polylines <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_add_shapefile_polylines.shtml>`_ 


`gsn_add_shapefile_polymarkers <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_add_shapefile_polymarkers.shtml>`_ 




特殊图（Special）
^^^^^^^^^^^^^^^^^^

向已有图形对象中添加标注

`gsn_add_annotation <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_add_annotation.shtml>`_ 

向已有图形中添加图形对象

`gsn_attach_plots <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_attach_plots.shtml>`_ 

gsn风格空白图形

`gsn_blank_plot <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_blank_plot.shtml>`_ 

gsn_csm风格空白图形

`gsn_csm_blank_plot <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_blank_plot.shtml>`_ 


`gsn_create_labelbar <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_create_labelbar.shtml>`_ 


`gsn_create_legend <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_create_legend.shtml>`_ 


`gsn_create_text <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_create_text.shtml>`_ 

直方图

`gsn_histogram <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_histogram.shtml>`_ 

在页面坐标上添加色条

`gsn_labelbar_ndc <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_labelbar_ndc.shtml>`_ 

在页面坐标上添加图例

`gsn_legend_ndc <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_legend_ndc.shtml>`_ 

打开工作台

`gsn_open_wks <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_open_wks.shtml>`_ 

组合图形对象为面板图（邮票图）

`gsn_panel <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_panel.shtml>`_ 

表格图

`gsn_table <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_table.shtml>`_ 


`reset_device_coordinates <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/reset_device_coordinates.shtml>`_ 


流线图（Streamlines）
^^^^^^^^^^^^^^^^^^^^^^^^

gsn风格流线图

`gsn_streamline <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_streamline.shtml>`_ 


gsn风格地图流线图

`gsn_streamline_map <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_streamline_map.shtml>`_ 



`gsn_streamline_scalar <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_streamline_scalar.shtml>`_ 


`gsn_streamline_scalar_map <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_streamline_scalar_map.shtml>`_ 

gsn_csm风格流线图

`gsn_csm_streamline <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_streamline.shtml>`_ 

gsn_csm风格地图流线图

`gsn_csm_streamline_map <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_streamline_map.shtml>`_ 

gsn_csm风格等距圆柱投影地图流线图

`gsn_csm_streamline_map_ce <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_streamline_map_ce.shtml>`_ 

gsn_csm风格极球投影地图流线图

`gsn_csm_streamline_map_polar <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_streamline_map_polar.shtml>`_ 

gsn_csm风格地图流线等值线图

`gsn_csm_streamline_contour_map <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_streamline_contour_map.shtml>`_ 
`gsn_csm_streamline_contour_map_ce <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_streamline_contour_map_ce.shtml>`_ 
`gsn_csm_streamline_contour_map_polar <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_streamline_contour_map_polar.shtml>`_ 
`gsn_csm_streamline_scalar <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_streamline_scalar.shtml>`_ 
`gsn_csm_streamline_scalar_map <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_streamline_scalar_map.shtml>`_ 
`gsn_csm_streamline_scalar_map_ce <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_streamline_scalar_map_ce.shtml>`_ 
`gsn_csm_streamline_scalar_map_polar <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_streamline_scalar_map_polar.shtml>`_ 
`gsn_csm_pres_hgt_streamline <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_pres_hgt_streamline.shtml>`_ 


矢量图（Vectors）
^^^^^^^^^^^^^^^^^^^^

gsn风格矢量图

`gsn_vector <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_vector.shtml>`_ 

gsn风格地图矢量图

`gsn_vector_map <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_vector_map.shtml>`_ 
`gsn_vector_scalar <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_vector_scalar.shtml>`_ 
`gsn_vector_scalar_map <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_vector_scalar_map.shtml>`_ 



`gsn_csm_vector <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_vector.shtml>`_ 



`gsn_csm_vector_map <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_vector_map.shtml>`_ 


`gsn_csm_vector_map_ce <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_vector_map_ce.shtml>`_ 


`gsn_csm_vector_map_polar <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_vector_map_polar.shtml>`_ 


`gsn_csm_vector_scalar <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_vector_scalar.shtml>`_ 


`gsn_csm_vector_scalar_map <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_vector_scalar_map.shtml>`_ 


`gsn_csm_vector_scalar_map_ce <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_vector_scalar_map_ce.shtml>`_ 


`gsn_csm_vector_scalar_map_polar <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_vector_scalar_map_polar.shtml>`_ 


`gsn_csm_pres_hgt_vector <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_pres_hgt_vector.shtml>`_ 



折线图（XY）
^^^^^^^^^^^^^^^^

gsn风格X-Y折线图

`gsn_xy <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_xy.shtml>`_ 

gsn风格Y折线图（X使用Y的索引）

`gsn_y <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_y.shtml>`_ 

gsn_csm风格X-Y图

`gsn_csm_xy <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_xy.shtml>`_ 

gsn_csm风格Y折线图（X使用Y的索引）

`gsn_csm_y <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_y.shtml>`_ 

gsn_csm风格X-Y-Y图 （左右2个Y轴）

`gsn_csm_xy2 <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_xy2.shtml>`_ 

gsn_csm风格X-X-Y图 （2个X轴）

`gsn_csm_x2y <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_x2y.shtml>`_ 

gsn_csm风格X-Y-X-Y图 （2个X轴,2个Y轴）

`gsn_csm_x2y2 <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_x2y2.shtml>`_ 

gsn_csm风格X-Y-Y-Y图 （左右右3个Y轴）

`gsn_csm_xy3 <https://www.ncl.ucar.edu/Document/Graphics/Interfaces/gsn_csm_xy3.shtml>`_ 