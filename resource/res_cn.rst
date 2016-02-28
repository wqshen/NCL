等值线源属性_
=================

.. _等值线源属性: http://www.ncl.ucar.edu/Document/Graphics/Resources/cn.shtml

.. _cnCellFillEdgeColor:

.. option:: cnCellFillEdgeColor


.. _cnCellFillMissingValEdgeColor:

.. option:: cnCellFillMissingValEdgeColor



.. _cnConpackParams:

.. option:: cnConpackParams


.. _cnConstFEnableFill:

.. option:: cnConstFEnableFill


.. _cnConstFLabelAngleF:

.. option:: cnConstFLabelAngleF


.. _cnConstFLabelBackgroundColor:

.. option:: cnConstFLabelBackgroundColor


.. _cnConstFLabelConstantSpacingF:

.. option:: cnConstFLabelConstantSpacingF


.. _cnConstFLabelFont:

.. option:: cnConstFLabelFont


.. _cnConstFLabelFontAspectF:

.. option:: cnConstFLabelFontAspectF


.. option:: cnConstFLabelFontColor


.. option:: cnConstFLabelFontHeightF


.. option:: cnConstFLabelFontQuality


.. option:: cnConstFLabelFontThicknessF


.. option:: cnConstFLabelFormat


.. option:: cnConstFLabelFuncCode


.. option:: cnConstFLabelJust


.. option:: cnConstFLabelOn


.. option:: cnConstFLabelOrthogonalPosF


.. option:: cnConstFLabelParallelPosF


.. option:: cnConstFLabelPerimColor


.. option:: cnConstFLabelPerimOn


.. option:: cnConstFLabelPerimSpaceF


.. option:: cnConstFLabelPerimThicknessF


.. option:: cnConstFLabelSide


.. option:: cnConstFLabelString


.. option:: cnConstFLabelTextDirection


.. option:: cnConstFLabelZone


.. option:: cnConstFUseInfoLabelRes


.. option:: cnExplicitLabelBarLabelsOn


.. option:: cnExplicitLegendLabelsOn


.. option:: cnExplicitLineLabelsOn


.. option:: cnFillBackgroundColor


.. option:: cnFillColor


.. option:: cnFillColors


.. option:: cnFillDotSizeF


.. option:: cnFillDrawOrder


.. option:: cnFillMode


.. option:: cnFillOn


.. option:: cnFillOpacityF


.. option:: cnFillPalette


.. option:: cnFillPattern


.. option:: cnFillPatterns


.. option:: cnFillScaleF


.. option:: cnFillScales


.. option:: cnFixFillBleed


.. option:: cnGridBoundFillColor


.. option:: cnGridBoundFillPattern


.. option:: cnGridBoundFillScaleF


.. option:: cnGridBoundPerimColor


.. option:: cnGridBoundPerimDashPattern


.. option:: cnGridBoundPerimOn


.. option:: cnGridBoundPerimThicknessF


.. option:: cnHighLabelAngleF


.. option:: cnHighLabelBackgroundColor


.. option:: cnHighLabelConstantSpacingF


.. option:: cnHighLabelCount


.. option:: cnHighLabelFont


.. option:: cnHighLabelFontAspectF


.. option:: cnHighLabelFontColor


.. option:: cnHighLabelFontHeightF


.. option:: cnHighLabelFontQuality


.. option:: cnHighLabelFontThicknessF


.. option:: cnHighLabelFormat


.. option:: cnHighLabelFuncCode


.. option:: cnHighLabelPerimColor


.. option:: cnHighLabelPerimOn


.. option:: cnHighLabelPerimSpaceF


.. option:: cnHighLabelPerimThicknessF


.. option:: cnHighLabelString


.. option:: cnHighLabelsOn


.. option:: cnHighLowLabelOverlapMode


.. option:: cnHighUseLineLabelRes


.. option:: cnInfoLabelAngleF


.. option:: cnInfoLabelBackgroundColor


.. option:: cnInfoLabelConstantSpacingF


.. option:: cnInfoLabelFont


.. option:: cnInfoLabelFontAspectF


.. option:: cnInfoLabelFontColor


.. option:: cnInfoLabelFontHeightF


.. option:: cnInfoLabelFontQuality


.. option:: cnInfoLabelFontThicknessF


.. option:: cnInfoLabelFormat


.. option:: cnInfoLabelFuncCode


.. option:: cnInfoLabelJust


.. option:: cnInfoLabelOn


.. option:: cnInfoLabelOrthogonalPosF


.. option:: cnInfoLabelParallelPosF


.. option:: cnInfoLabelPerimColor


.. option:: cnInfoLabelPerimOn


.. option:: cnInfoLabelPerimSpaceF


.. option:: cnInfoLabelPerimThicknessF


.. option:: cnInfoLabelSide


.. option:: cnInfoLabelString


.. option:: cnInfoLabelTextDirection


.. option:: cnInfoLabelZone


.. option:: cnLabelBarEndLabelsOn


.. option:: cnLabelBarEndStyle


.. option:: cnLabelDrawOrder


.. option:: cnLabelMasking


.. option:: cnLabelScaleFactorF


.. option:: cnLabelScaleValueF


.. option:: cnLabelScalingMode


.. option:: cnLegendLevelFlags


.. option:: cnLevelCount


.. option:: cnLevelFlag


.. option:: cnLevelFlags


.. _cnLevelSelectionMode:

.. option:: cnLevelSelectionMode 等值线阶选择模式

    设置等值线图层中等值线间隔的显示方法。

    .. _AutomaticLevels:

    - AutomaticLevels 自动等值线阶

        Ordinarily this mode determines contour levels by picking a spacing value from a set of relatively "round" numbers scaled by powers of 10 to the range of the data. This set of numbers is as follows: 1.0, 2.0, 2.5, 4.0, 5.0. The number of levels chosen will be as close as possible to the value of cnMaxLevelCount without exceeding it. Once the spacing is chosen, the minimum contour level is set to the value of the least multiple of the spacing greater than the minimum data value. Likewise the maximum contour level becomes the greatest multiple of the spacing less than the maximum data value. Based on these values, ContourPlot sets the resources cnLevelSpacingF, cnMinLevelValF, and cnMaxLevelValF appropriately.
        On the other hand, if you explicitly set the resource cnLevelSpacingF to a valid value greater than 0.0 and less than the range of the data, it will be used as the interval spacing. The minimum and maximum levels are calculated as before. If as a consequence, cnMaxLevelCount is less than the number of levels so specified, it will be set to the number of levels actually needed. However, if the choice of spacing causes the absolute maximum number of levels, currently 255, to be exceeded, ContourPlot will issue a warning message and recalculate the spacing as previously described.

        In any case, ContourPlot sets the elements of the array resource cnLevels to the values of the contour levels chosen and the read-only resource cnLevelCount to the number of levels.


    .. _ManualLevels:

    - ManualLevels 手动等值线阶

        ManualLevels mode bases the choice of contour levels on the values of the resources cnLevelSpacingF, cnMinLevelValF, and cnMaxLevelValF. Starting at cnMinLevelValF, contour levels are created at intervals spaced by the value of cnLevelSpacingF until cnMaxLevelValF is reached. The final contour level will always be cnMaxLevelValF. ContourPlot sets elements of the array resource cnLevels to the values of each contour level chosen and the read-only resource cnLevelCount to the number of levels. If the current value of cnMaxLevelCount is less than cnLevelCount, it is reset to the value of cnLevelCount. However, if the level count would exceed the absolute maximum number of levels, currently 255, ContourPlot issues a warning and chooses a new value of cnLevelSpacingF based on the value of cnMaxLevelCount.
        If you choose ManualLevels selection mode when the ContourPlot object is created, and if you do not set cnMinLevelValF, ContourPlot will choose levels as if you had set AutomaticLevels mode. If you set cnMinLevelValF only, a default spacing is used, and the value of cnMaxLevelValF is determined as it would be for AutomaticLevels mode.

    .. _ExplicitLevels:

    - ExplicitLevels 显式自定义等值线阶

        这一模式允许你使用源 `cnLevels`_ 数组来显式地指定每一条等值线的值。如果
        你选择此模式而不设定源 `cnLevels`_ ，等值线图将假定你指定使用自动等值线
        阶模式，即 `AutomaticLevels`_ 来设定等值线阶。因此，当你设定 `ExplicitLevels`_
        模式时，不论你是否显式地设定了源 `cnLevels`_ ，等值线图都将使用当前的
        `cnLevels`_ 的内容。如果源 `cnLevels`_ 的元素个数超过了等值线阶的最大
        数量（当前为255条），等值线图将提出警告并设定模式回默认的自动等值线阶
        （ `AutomaticLevels`_ ）。

        注意等值线图将总是对源 `cnLevels`_ 数组的元素排序为单调递增的序列。排序
        后的数组，使用第一个元素设定 `cnMinLevelValF`_ ， 最后一个元素设定
        `cnMaxLevelValF`_ ，元素间的间隔平均值设定 `cnLevelSpacingF`_ 。

    .. _EqualSpacedLevels:

    - EqualSpacedLevels 等间隔等值线阶

        这种模式下，等值线图使用数据的最大值和最小值的差除以
        `cnMaxLevelCount`_ +1 得到的值作为等值线的间隔。即设定 
        `cnLevelSpacingF`_ 等于计算的间隔，设定 `cnMinLevelValF`_ 
        等于数据最小值加上 `cnLevelSpacingF`_ , 设定 `cnMaxLevelValF`_ 
        等于数据最大值减去 `cnLevelSpacingF`_ 。

        你无法设定 `cnLevelSpacingF`_ `cnMinLevelValF`_ `cnMaxLevelValF`_ 。

        等值线图同时设定只读源 `cnLevelSpacingF`_ 等于 `cnMaxLevelCount`_ 。

    默认值： `AutomaticLevels`_


.. _cnLevelSpacingF:

.. option:: cnLevelSpacingF

    当 `cnLevelSelectionMode`_ 设定为手动（ `ManualLevels`_ ）或者设为自动且设定了 
    `cnLevelSpacingF`_ 时， `cnLevelSpacingF`_ 决定了等值线的间隔。否则，等值线图
    形对象将基于事实上选择的等值线阶来设定 `cnLevelSpacingF`_ 的值。当等值线阶选
    择模式（ `cnLevelSelectionMode`_ ）设为显示自定义（ `ExplicitLevels`_ ）时， 
    `cnLevelSpacingF`_ 将被设定到等值线间隔的算术平均值。
    
    默认值：5.0


.. _cnLevels:

.. option:: cnLevels

    此源属性是一个包含等值线值的浮点型数组，被用于绘制等值线。如果等值线选择模式 
    （ `cnLevelSelectionMode`_ ）为显示自定义 （ `ExplicitLevels` ）时，你可以设
    定此属性数组元素。否则，等值线图形对象将设定这个数组的元素。

    默认值： <dynamic> 动态


.. _cnLineColor:

.. option:: cnLineColor

    当等值线单线颜色属性 （ `cnMonoLineColor`_ ）被设定为真（ ``True`` ）时，
    这个源属性接受一个NhlTColorIndex类（即颜色表序号）或者命名颜色（字符串）来为所有的等值线
    设定一个统一的颜色。

    默认值：Foreground (1) 背景色


.. _cnLineColor:

.. option:: cnLineColors

    The elements of this array of type NhlTColorIndexGenArray can be set using an array of color indexes, an array of named colors, or an array of RGB or RGBA values. If cnMonoFillColor If cnMonoLineColor is False, each member of the array specifies the color of the contour line drawn at the corresponding contour level.
    Although backwards compatibility is for the most part maintained, beginning with version 6.1.0, this resource supports the new 32-bit color model, as follows:

    If cnLineColors is not set explicitly, its values are derived from the settings of cnLinePalette and cnSpanLinePalette, or, if cnLinePalette is not set, wkColorMap and cnSpanLinePalette. If cnSpanLinePalette is True, the values are distributed evenly through the range of colors available from cnLinePalette or wkColorMap. Otherwise, the values are sequential. If the color indexes are derived from cnLinePalette the first color comes from element 0, whereas if they are derived from wkColorMap, the first color comes from element 2. This is because wkColorMap contains special elements (0 and 1) for the Background and Foreground colors, whereas the palette-type resources do not. If some but not all of the available elements of cnLineColors are explicitly set, the remaining elements will be determined as if cnSpanLinePalette has the value False.

    For backwards compatibility, colors set based on wkColorMap remain indexed to the current color map associated with the workstation. Consequently, if the workstation color map is changed prior to drawing the plot, the color indexes will map into the new color map. In contrast, color indexes derived from the cnLinePalette resource always refer to a specific color regardless of changes to wkColorMap.

    Default: <dynamic>



.. option:: cnLineDashPattern


.. option:: cnLineDashPatterns


.. option:: cnLineDashSegLenF


.. option:: cnLineDrawOrder


.. option:: cnLineLabelAngleF


.. option:: cnLineLabelBackgroundColor


.. option:: cnLineLabelConstantSpacingF


.. option:: cnLineLabelCount


.. option:: cnLineLabelDensityF


.. option:: cnLineLabelFont


.. option:: cnLineLabelFontAspectF


.. option:: cnLineLabelFontColor


.. option:: cnLineLabelFontColors


.. option:: cnLineLabelFontHeightF


.. option:: cnLineLabelFontQuality


.. option:: cnLineLabelFontThicknessF


.. option:: cnLineLabelFormat


.. option:: cnLineLabelFuncCode


.. option:: cnLineLabelInterval


.. option:: cnLineLabelPerimColor


.. option:: cnLineLabelPerimOn


.. option:: cnLineLabelPerimSpaceF


.. option:: cnLineLabelPerimThicknessF


.. option:: cnLineLabelPlacementMode


.. option:: cnLineLabelStrings


.. option:: cnLineLabelsOn


.. option:: cnLinePalette


.. option:: cnLineThicknessF


.. option:: cnLineThicknesses


.. option:: cnLinesOn


.. option:: cnLowLabelAngleF


.. option:: cnLowLabelBackgroundColor


.. option:: cnLowLabelConstantSpacingF


.. option:: cnLowLabelCount


.. option:: cnLowLabelFont


.. option:: cnLowLabelFontAspectF


.. option:: cnLowLabelFontColor


.. option:: cnLowLabelFontHeightF


.. option:: cnLowLabelFontQuality


.. option:: cnLowLabelFontThicknessF


.. option:: cnLowLabelFormat


.. option:: cnLowLabelFuncCode


.. option:: cnLowLabelPerimColor


.. option:: cnLowLabelPerimOn


.. option:: cnLowLabelPerimSpaceF


.. option:: cnLowLabelPerimThicknessF


.. option:: cnLowLabelString


.. option:: cnLowLabelsOn


.. option:: cnLowUseHighLabelRes


.. option:: cnMaxDataValueFormat


.. _cnMaxLevelCount:

.. option:: cnMaxLevelCount


.. _cnMaxLevelValF:

.. option:: cnMaxLevelValF


.. option:: cnMaxPointDistanceF


.. _cnMinLevelValF:

.. option:: cnMinLevelValF


.. option:: cnMissingValFillColor


.. option:: cnMissingValFillPattern


.. option:: cnMissingValFillScaleF


.. option:: cnMissingValPerimColor


.. option:: cnMissingValPerimDashPattern


.. option:: cnMissingValPerimGridBoundOn


.. option:: cnMissingValPerimOn


.. option:: cnMissingValPerimThicknessF


.. option:: cnMonoFillColor


.. option:: cnMonoFillPattern


.. option:: cnMonoFillScale


.. option:: cnMonoLevelFlag


.. _cnMonoLineColor:

.. option:: cnMonoLineColor
    
    当设定此源属性为真（ ``True`` ）时，所有的等值线被设定为同样的颜色，这个颜色
    由标量源属性 `cnLineColor`_ 的值确定。否则，可以使用数组源属性 `cnLineColors`_ 
    来独立地控制每一条线的颜色。

    默认值： ``True``

.. option:: cnMonoLineDashPattern


.. option:: cnMonoLineLabelFontColor


.. option:: cnMonoLineThickness


.. option:: cnNoDataLabelOn


.. option:: cnNoDataLabelString


.. option:: cnOutOfRangeFillColor


.. option:: cnOutOfRangeFillPattern


.. option:: cnOutOfRangeFillScaleF


.. option:: cnOutOfRangePerimColor


.. option:: cnOutOfRangePerimDashPattern


.. option:: cnOutOfRangePerimOn


.. option:: cnOutOfRangePerimThicknessF


.. option:: cnRasterCellSizeF


.. option:: cnRasterMinCellSizeF


.. option:: cnRasterModeOn


.. option:: cnRasterSampleFactorF


.. option:: cnRasterSmoothingOn


.. option:: cnScalarFieldData


.. option:: cnSmoothingDistanceF


.. option:: cnSmoothingOn


.. option:: cnSmoothingTensionF


.. option:: cnSpanFillPalette


.. option:: cnSpanLinePalette


