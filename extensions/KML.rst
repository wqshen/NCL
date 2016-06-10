对KML的支持
============

**本文作者**：`keenmisty <https://github.com/keenmisty>`_

简介
------------

KML(Keyhold Markup Language)是一种XML语法格式的标记语言，可以在多种应用程序中显示，包括 Google Earth、Google Map、ArcGlobe、 ArcMAP等，驴友们制作路书的时候也经常采用这种格式制作。

它的优势是可以把几何、符号系统、描述、属性、影像和行为等数据封装到单个源中，非常方便数据的共享和在线展示。

NCL对于KML的支持起自2013年，由Mohammad Abouali开发，他制作了一个名为 `NCL_GETools <http://www.ncl.ucar.edu/Document/Manuals/GETools/NCL_GETools.html>`_ 的NCL输出库，使得NCL可以将各种气象模型结果输出成KML格式，从而可以方便的在各类GIS软件中与其他地理信息数据一起进行处理，或是通过Google Earth/Map的API进行在线的展示。

.. note:: NCL_GETools需要6.2.0之后版本的NCL。


使用
------------


例子
------------


其他值得注意的事情
------------


评论
----------

.. disqus::
    :disqus_identifier: KML

