视图源属性_
=================

.. _vpAnnoManagerId:

.. option:: vpAnnoManagerId

    If the View object is currently functioning as an external annotation of a Plot Object, this read-only resource contains the id of the AnnoManager object used to manage the View object's location and size. If the View object is not currently an annotation, the value of the resource is set to NullObjId (0).

    默认值： False

.. _vpClipOn:

.. option:: vpClipOn

    When this boolean resource is set True, all content elements of a plot object are clipped at the viewport boundaries. Setting it False allows plot elements that are not internally constrained to fall with the viewport to appear outside the viewport boundaries. Currently only VectorPlot objects allow any plot elements to appear outside the viewport. Note this resource does not apply to plot annotations such as tick marks and titles.

    默认值： True

.. _vpHeightF:

.. option:: vpHeightF

    `vpHeightF`_ 指定了视图对象边界框的高度（页面坐标（NDC））

    默认值： 0.6

.. _vpKeepAspect:

.. option:: vpKeepAspect

    当布尔类型的源属性 `vpKeepAspect`_ 为 ``True`` 时，视图对象将保持它的初始形
    状（宽高比）。你仍然可以更改他的大小源属性。如果你同时更改大小源属性 
    While the boolean resource vpKeepAspect is True, the View object keeps its initial shape (aspect ratio); however you may modify its size resources. If you modify either or both the size resources, vpWidthF and vpHeightF, View will constrain its new bounding box to the largest box with an aspect ratio matching the original shape that can be inscribed within a box of the specified size. When vpKeepAspect is False, View places no constraints on the shape of its bounding box when you modify the size resources.

    默认值： False

.. _vpOn:

.. option:: vpOn

    设定 `vpOn`_ 为 ``False`` 将禁用视图对象的绘图方法（ ``Draw`` ）。当绘图方法
    被禁用后，视图、视图类的子类、它的叠加图层（ ``overlays`` ）、以及它增加的标
    注 （ ``annotations`` ）不会出现在工作站，直到 ``Draw`` 被执行。

    默认值： True

.. _vpUseSegments:

.. option:: vpUseSegments

    When the boolean resource vpUseSegments is set True for a View class object, the object will, if it is able, create a segment and draw into it while it draws to the designated Workstation object. The segment is stored as a file, and contains the low-level commands required to re-create the object, possibly with transformations to the position, size, or shape applied. When you next draw the object, assuming none of the object's resources other than vpXF, vpYF, vpWidthF, or vpHeightF have been modified, it will recreate its image based on information stored in the segment. Using segments can substantially shorten the time required to perform a draw when the plot contains elements, such as filled maps, that require considerable computation to generate initially. Note that because the transformations differ slightly, a segment drawn at a different size from the size at which it was created may not match in every detail the plot resulting from a new draw of the object at that size.

    默认值： False

.. _vpWidthF:

.. option:: vpWidthF

    `vpWidthF`_ 指定了视图对象边界框的宽度（页面坐标（NDC））

    默认值： 0.6


.. _vpXF:

.. option:: vpXF
    
    `vpXF`_ 指定了视图对象边界框的左边界在页面坐标（NDC）中的位置

    默认值： 0.2


.. _vpYF:

.. option:: vpYF

    `vpYF`_ 指定了视图对象边界框的上边界在页面坐标（NDC）中的位置

    默认值： 0.8