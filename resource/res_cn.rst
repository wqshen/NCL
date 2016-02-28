等值线源属性_
=================

.. _等值线源属性: http://www.ncl.ucar.edu/Document/Graphics/Resources/cn.shtml

.. option:: cnCellFillEdgeColor_

.. option:: cnCellFillMissingValEdgeColor


.. option:: cnConpackParams


.. option:: cnConstFEnableFill


.. option:: cnConstFLabelAngleF


.. option:: cnConstFLabelBackgroundColor


.. option:: cnConstFLabelConstantSpacingF


.. option:: cnConstFLabelFont


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


.. option:: cnLevelSelectionMode

    设置等值线图层中等值线间隔的显示方法。

    - AutomaticLevels 自动等值线阶

        Ordinarily this mode determines contour levels by picking a spacing value from a set of relatively "round" numbers scaled by powers of 10 to the range of the data. This set of numbers is as follows: 1.0, 2.0, 2.5, 4.0, 5.0. The number of levels chosen will be as close as possible to the value of cnMaxLevelCount without exceeding it. Once the spacing is chosen, the minimum contour level is set to the value of the least multiple of the spacing greater than the minimum data value. Likewise the maximum contour level becomes the greatest multiple of the spacing less than the maximum data value. Based on these values, ContourPlot sets the resources cnLevelSpacingF, cnMinLevelValF, and cnMaxLevelValF appropriately.
        On the other hand, if you explicitly set the resource cnLevelSpacingF to a valid value greater than 0.0 and less than the range of the data, it will be used as the interval spacing. The minimum and maximum levels are calculated as before. If as a consequence, cnMaxLevelCount is less than the number of levels so specified, it will be set to the number of levels actually needed. However, if the choice of spacing causes the absolute maximum number of levels, currently 255, to be exceeded, ContourPlot will issue a warning message and recalculate the spacing as previously described.

        In any case, ContourPlot sets the elements of the array resource cnLevels to the values of the contour levels chosen and the read-only resource cnLevelCount to the number of levels.

    - ManualLevels 手动等值线阶

        ManualLevels mode bases the choice of contour levels on the values of the resources cnLevelSpacingF, cnMinLevelValF, and cnMaxLevelValF. Starting at cnMinLevelValF, contour levels are created at intervals spaced by the value of cnLevelSpacingF until cnMaxLevelValF is reached. The final contour level will always be cnMaxLevelValF. ContourPlot sets elements of the array resource cnLevels to the values of each contour level chosen and the read-only resource cnLevelCount to the number of levels. If the current value of cnMaxLevelCount is less than cnLevelCount, it is reset to the value of cnLevelCount. However, if the level count would exceed the absolute maximum number of levels, currently 255, ContourPlot issues a warning and chooses a new value of cnLevelSpacingF based on the value of cnMaxLevelCount.
        If you choose ManualLevels selection mode when the ContourPlot object is created, and if you do not set cnMinLevelValF, ContourPlot will choose levels as if you had set AutomaticLevels mode. If you set cnMinLevelValF only, a default spacing is used, and the value of cnMaxLevelValF is determined as it would be for AutomaticLevels mode.

    - ExplicitLevels 自定义等值线阶

        This mode allows you to specify the value of each contour level by explicitly setting the contents of the cnLevels array. If you choose ExplicitLevels selection mode when creating a ContourPlot object, but do not specify the contents of the cnLevels array, ContourPlot will choose levels as if you had specified AutomaticLevels mode. Thereafter, when you set ExplicitLevels mode, ContourPlot uses the current contents of cnLevels, whether or not you set it explicitly.
        If the number of elements in cnLevels exceeds the absolute maximum number of levels (currently 255), ContourPlot issues a warning and the mode defaults to AutomaticLevels. Note that ContourPlot always sorts the elements of cnLevels into a monotonically increasing sequence. After sorting, cnMinLevelValF is set equal to the value of first element of cnLevels, and cnMaxLevelValF is set to the value of the last element. cnLevelSpacingF is set to the average value of the spacing separating each level.

    - EqualSpacedLevels 等间隔等值线阶

        这种模式下，等值线图使用数据的最大值和最小值的差除以
        ``cnMaxLevelCount+1`` 得到的值作为等值线的间隔。即设定
        ``cnLevelSpacingF`` 等于计算的间隔，设定 ``cnMinLevelValF`` 
        等于数据最小值加上 ``cnLevelSpacingF`` , 设定 ``cnMaxLevelValF`` 
        等于数据最大值减去 ``cnLevelSpacingF`` 。

        你无法设定``cnLevelSpacingF`` ``cnMinLevelValF`` ``cnMaxLevelValF`` 。

        等值线图同时设定只读源 ``cnLevelSpacingF`` 等于 ``cnMaxLevelCount`` 。

    默认值: AutomaticLevels



.. option:: cnLevelSpacingF


.. option:: cnLevels


.. option:: cnLineColor


.. option:: cnLineColors


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


.. option:: cnMaxLevelCount


.. option:: cnMaxLevelValF


.. option:: cnMaxPointDistanceF


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


.. option:: cnMonoLineColor


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


