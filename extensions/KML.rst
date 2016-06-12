对KML的支持
============

*本文作者* ：`keenmisty <https://github.com/keenmisty>`_ 


简介
------------

KML(Keyhold Markup Language)是一种XML语法格式的标记语言，可以在多种应用程序中显示，包括 Google Earth、Google Map、ArcGlobe、 ArcMAP等，驴友们制作路书的时候也经常采用这种格式制作。

它的优势是可以把几何、符号系统、描述、属性、影像和行为等数据封装到单个源中，非常方便数据的共享和在线展示。

NCL对于KML的支持起自2013年，由Mohammad Abouali开发，他制作了一个名为 `NCL_GETools <http://www.ncl.ucar.edu/Document/Manuals/GETools/NCL_GETools.html>`_ 的NCL输出库，使得NCL可以将各种气象模型结果输出成KML格式，从而可以方便的在各类GIS软件中与其他地理信息数据一起进行处理，或是通过Google Earth/Map的API进行在线的展示。

.. note:: NCL_GETools需要6.2.0之后版本的NCL。


使用
------------

首先，需要在你自己的ncl脚本中声明调用这一工具：

.. code:: sh

    load "$NCARG_ROOT/lib/ncarg/nclscripts/contrib/NCL_GETools.ncl"

然后即可使用以下函数或者过程：

* 函数

  - get_coordinate_system_string
  - GetAltModeNumber
  - read_ict
  - squeeze
  - get_KML_IconHref
  - ones
  - zeros
  - dim_dimsizes
  - Gray2RGBA
  - Gray2cIndex
  - ToHex
  - add_KML_ColorMapStyles

* 过程

  - add_KML_Description
  - add_KML_Address
  - add_KML_Range
  - add_KML_Name
  - add_KML_Coordinates
  - add_KML_Width
  - add_KML_Open
  - add_KML_FlyToView
  - add_KML_Extrude
  - add_KML_Visibility
  - add_KML_Tessellate
  - add_KML_Fill
  - add_KML_Outline
  - add_KML_Altitude
  - add_KML_AltMode
  - add_KML_Color
  - add_KML_North
  - add_KML_South
  - add_KML_East
  - add_KML_West
  - add_KML_Rotation
  - add_KML_StyleUrl
  - add_KML_HideChildrenStyle

例子
------------


其他值得注意的事情
------------


.. image:: ../images/donate/donate.png
    :scale: 40 %
    :align: center
    :target: http://ncl.readthedocs.io/zh_CN/latest/donater.html#keenmisty


评论
----------

.. disqus::
    :disqus_identifier: KML

