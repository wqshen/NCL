地图源属性_
=================

.. _地图源属性: http://www.ncl.ucar.edu/Document/Graphics/Resources/mp.shtml

.. _mpAreaGroupCount:

.. option:: mpAreaGroupCount(MapPlot)



.. _mpAreaMaskingOn:
.. option:: mpAreaMaskingOn(MapPlot)
    这一布尔类型源属性是一个开关，用于控制区域蒙版的打开或关闭。

    当其为 ``True`` 时，地图图形打开区域蒙版，使得在 `mpMaskAreaSpecifiers`_ 源
    属性中指定的区域保持不被填充，因此先前绘制的图形元素在指定的区域轮廓内部
    可见。当其为 ``False`` 时，不论是否设定 `mpMaskAreaSpecifiers`_ 的内容，也
    没有蒙版。为了方便起见，在没有显式地设定设定 `mpAreaMaskingOn`_ 的情况下，
    当设定 `mpMaskAreaSpecifiers`_ 时， `mpAreaMaskingOn`_ 将被自动设定为 ``True`` 。
    
    但使用RANGS资料集时，这一源属性将被忽略。

    默认值: False

.. option:: mpAreaMaskingOn_MapPlot


.. option:: mpAreaNames


.. option:: mpAreaNames_MapPlot


.. option:: mpAreaTypes


.. option:: mpAreaTypes_MapPlot


.. option:: mpBottomAngleF


.. option:: mpBottomAngleF_MapTransformation


.. option:: mpBottomMapPosF


.. option:: mpBottomMapPosF_MapTransformation


.. option:: mpBottomNDCF


.. option:: mpBottomNDCF_MapTransformation


.. option:: mpBottomNPCF


.. option:: mpBottomNPCF_MapTransformation


.. option:: mpBottomPointLatF


.. option:: mpBottomPointLatF_MapTransformation


.. option:: mpBottomPointLonF


.. option:: mpBottomPointLonF_MapTransformation


.. option:: mpBottomWindowF


.. option:: mpBottomWindowF_MapTransformation


.. option:: mpCenterLatF

    设定地图投影坐标系统的中心纬度。

.. option:: mpCenterLatF_MapTransformation


.. option:: mpCenterLonF

    设定地图投影坐标系统的中心经度。

.. option:: mpCenterLonF_MapTransformation


.. option:: mpCenterRotF


.. option:: mpCenterRotF_MapTransformation


.. option:: mpCountyLineColor


.. option:: mpCountyLineColor_MapPlot


.. option:: mpCountyLineDashPattern


.. option:: mpCountyLineDashPattern_MapPlot


.. option:: mpCountyLineDashSegLenF


.. option:: mpCountyLineDashSegLenF_MapPlot


.. option:: mpCountyLineThicknessF


.. option:: mpCountyLineThicknessF_MapPlot


.. option:: mpDataBaseVersion


.. option:: mpDataBaseVersion_MapPlot


.. option:: mpDataResolution


.. option:: mpDataResolution_MapPlot


.. option:: mpDataSetName


.. option:: mpDataSetName_MapPlot


.. option:: mpDefaultFillColor


.. option:: mpDefaultFillColor_MapPlot


.. option:: mpDefaultFillPattern


.. option:: mpDefaultFillPattern_MapPlot


.. option:: mpDefaultFillScaleF


.. option:: mpDefaultFillScaleF_MapPlot


.. option:: mpDynamicAreaGroups


.. option:: mpDynamicAreaGroups_MapPlot


.. option:: mpEllipticalBoundary


.. option:: mpEllipticalBoundary_MapTransformation


.. option:: mpFillAreaSpecifiers


.. option:: mpFillAreaSpecifiers_MapPlot


.. option:: mpFillBoundarySets


.. option:: mpFillBoundarySets_MapPlot


.. option:: mpFillColor


.. option:: mpFillColor_MapPlot


.. option:: mpFillColors


.. option:: mpFillColors_MapPlot


.. option:: mpFillColors-default


.. option:: mpFillDotSizeF


.. option:: mpFillDotSizeF_MapPlot


.. option:: mpFillDrawOrder


.. option:: mpFillDrawOrder_MapPlot


.. option:: mpFillOn


.. option:: mpFillOn_MapPlot


.. option:: mpFillPatternBackground


.. option:: mpFillPatternBackground_MapPlot


.. option:: mpFillPattern


.. option:: mpFillPattern_MapPlot


.. option:: mpFillPatterns


.. option:: mpFillPatterns_MapPlot


.. option:: mpFillPatterns-default


.. option:: mpFillScaleF


.. option:: mpFillScaleF_MapPlot


.. option:: mpFillScales


.. option:: mpFillScales_MapPlot


.. option:: mpFillScales-default


.. option:: mpFixedAreaGroups


.. option:: mpFixedAreaGroups_MapPlot


.. option:: mpGeophysicalLineColor


.. option:: mpGeophysicalLineColor_MapPlot


.. option:: mpGeophysicalLineDashPattern


.. option:: mpGeophysicalLineDashPattern_MapPlot


.. option:: mpGeophysicalLineDashSegLenF


.. option:: mpGeophysicalLineDashSegLenF_MapPlot


.. option:: mpGeophysicalLineThicknessF


.. option:: mpGeophysicalLineThicknessF_MapPlot


.. option:: mpGreatCircleLinesOn


.. option:: mpGreatCircleLinesOn_MapTransformation


.. option:: mpGridAndLimbDrawOrder


.. option:: mpGridAndLimbDrawOrder_MapPlot


.. option:: mpGridAndLimbOn


.. option:: mpGridAndLimbOn_MapPlot


.. option:: mpGridLatSpacingF


.. option:: mpGridLatSpacingF_MapPlot


.. option:: mpGridLineColor


.. option:: mpGridLineColor_MapPlot


.. option:: mpGridLineDashPattern


.. option:: mpGridLineDashPattern_MapPlot


.. option:: mpGridLineDashSegLenF


.. option:: mpGridLineDashSegLenF_MapPlot


.. option:: mpGridLineThicknessF


.. option:: mpGridLineThicknessF_MapPlot


.. option:: mpGridLonSpacingF


.. option:: mpGridLonSpacingF_MapPlot


.. option:: mpGridMaskMode


.. option:: mpGridMaskMode_MapPlot


.. option:: mpGridMaxLatF


.. option:: mpGridMaxLatF_MapPlot


.. option:: mpGridPolarLonSpacingF


.. option:: mpGridPolarLonSpacingF_MapPlot


.. option:: mpGridSpacingF


.. option:: mpGridSpacingF_MapPlot


.. option:: mpInlandWaterFillColor


.. option:: mpInlandWaterFillColor_MapPlot


.. option:: mpInlandWaterFillPattern


.. option:: mpInlandWaterFillPattern_MapPlot


.. option:: mpInlandWaterFillScaleF


.. option:: mpInlandWaterFillScaleF_MapPlot


.. option:: mpLabelDrawOrder


.. option:: mpLabelDrawOrder_MapPlot


.. option:: mpLabelFontColor


.. option:: mpLabelFontColor_MapPlot


.. option:: mpLabelFontHeightF


.. option:: mpLabelFontHeightF_MapPlot


.. option:: mpLabelsOn


.. option:: mpLabelsOn_MapPlot


.. option:: mpLambertMeridianF


.. option:: mpLambertMeridianF_MapTransformation


.. option:: mpLambertParallel1F


.. option:: mpLambertParallel1F_MapTransformation


.. option:: mpLambertParallel2F


.. option:: mpLambertParallel2F_MapTransformation


.. option:: mpLandFillColor


.. option:: mpLandFillColor_MapPlot


.. option:: mpLandFillPattern


.. option:: mpLandFillPattern_MapPlot


.. option:: mpLandFillScaleF


.. option:: mpLandFillScaleF_MapPlot


.. option:: mpLeftAngleF


.. option:: mpLeftAngleF_MapTransformation


.. option:: mpLeftCornerLatF


.. option:: mpLeftCornerLatF_MapTransformation


.. option:: mpLeftCornerLonF


.. option:: mpLeftCornerLonF_MapTransformation


.. option:: mpLeftMapPosF


.. option:: mpLeftMapPosF_MapTransformation


.. option:: mpLeftNDCF


.. option:: mpLeftNDCF_MapTransformation


.. option:: mpLeftNPCF


.. option:: mpLeftNPCF_MapTransformation


.. option:: mpLeftPointLatF


.. option:: mpLeftPointLatF_MapTransformation


.. option:: mpLeftPointLonF


.. option:: mpLeftPointLonF_MapTransformation


.. option:: mpLeftWindowF


.. option:: mpLeftWindowF_MapTransformation


.. option:: mpLimbLineColor


.. option:: mpLimbLineColor_MapPlot


.. option:: mpLimbLineDashPattern


.. option:: mpLimbLineDashPattern_MapPlot


.. option:: mpLimbLineDashSegLenF


.. option:: mpLimbLineDashSegLenF_MapPlot


.. option:: mpLimbLineThicknessF


.. option:: mpLimbLineThicknessF_MapPlot


.. option:: mpLimitMode


.. option:: mpLimitMode_MapTransformation


.. option:: Angle_projection_limits


.. _mpMaskAreaSpecifiers:
.. option:: mpMaskAreaSpecifiers


.. option:: mpMaskAreaSpecifiers_MapPlot


.. option:: mpMaskOutlineSpecifiers


.. option:: mpMaskOutlineSpecifiers_MapPlot


.. option:: mpMaxLatF


.. option:: mpMaxLatF_MapTransformation


.. option:: mpMaxLonF


.. option:: mpMaxLonF_MapTransformation


.. option:: mpMinLatF


.. option:: mpMinLatF_MapTransformation


.. option:: mpMinLonF


.. option:: mpMinLonF_MapTransformation


.. option:: mpMonoFillColor


.. option:: mpMonoFillColor_MapPlot


.. option:: mpMonoFillPattern


.. option:: mpMonoFillPattern_MapPlot


.. option:: mpMonoFillScale


.. option:: mpMonoFillScale_MapPlot


.. option:: mpNationalLineColor


.. option:: mpNationalLineColor_MapPlot


.. option:: mpNationalLineDashPattern


.. option:: mpNationalLineDashPattern_MapPlot


.. option:: mpNationalLineDashSegLenF_MapPlot


.. option:: mpNationalLineThicknessF


.. option:: mpNationalLineThicknessF_MapPlot


.. option:: mpOceanFillColor


.. option:: mpOceanFillColor_MapPlot


.. option:: mpOceanFillPattern


.. option:: mpOceanFillPattern_MapPlot


.. option:: mpOceanFillScaleF


.. option:: mpOceanFillScaleF_MapPlot


.. option:: mpOutlineBoundarySets


.. option:: mpOutlineBoundarySets_MapPlot


.. option:: mpOutlineDrawOrder


.. option:: mpOutlineDrawOrder_MapPlot


.. option:: mpOutlineMaskingOn


.. option:: mpOutlineMaskingOn_MapPlot


.. option:: mpOutlineOn


.. option:: mpOutlineOn_MapPlot


.. option:: mpOutlineSpecifiers


.. option:: mpOutlineSpecifiers_MapPlot


.. option:: mpPerimDrawOrder


.. option:: mpPerimDrawOrder_MapPlot


.. option:: mpPerimLineColor


.. option:: mpPerimLineColor_MapPlot


.. option:: mpPerimLineDashPattern


.. option:: mpPerimLineDashPattern_MapPlot


.. option:: mpPerimLineDashSegLenF


.. option:: mpPerimLineDashSegLenF_MapPlot


.. option:: mpPerimLineThicknessF


.. option:: mpPerimLineThicknessF_MapPlot


.. option:: mpPerimOn


.. option:: mpPerimOn_MapPlot


.. option:: mpPolyMode


.. option:: mpPolyMode_MapTransformation


.. option:: mpProjection

    设定地图类函数所使用的地图投影方式。可选的投影方式有

    - Orthographic
    - Stereographic
    - LambertEqualArea
    - Gnomonic
    - AzimuthalEquidistant
    - Satellite
    - PseudoMollweide
    - Mercator
    - CylindricalEquidistant
    - LambertConformal
    - Robinson
    - CylindricalEqualArea
    - RotatedMercator
    - Aitoff
    - Hammer
    - Mollweide
    - WinkelTripel

.. option:: mpProjection_MapTransformation


.. option:: mpProvincialLineColor


.. option:: mpProvincialLineColor_MapPlot


.. option:: mpProvincialLineDashPattern


.. option:: mpProvincialLineDashPattern_MapPlot


.. option:: mpProvincialLineDashSegLenF


.. option:: mpProvincialLineDashSegLenF_MapPlot


.. option:: mpProvincialLineThicknessF


.. option:: mpProvincialLineThicknessF_MapPlot


.. option:: mpRelativeCenterLat


.. option:: mpRelativeCenterLat_MapTransformation


.. option:: mpRelativeCenterLon


.. option:: mpRelativeCenterLon_MapTransformation


.. option:: mpRightAngleF


.. option:: mpRightAngleF_MapTransformation


.. option:: mpRightCornerLatF


.. option:: mpRightCornerLatF_MapTransformation


.. option:: mpRightCornerLonF


.. option:: mpRightCornerLonF_MapTransformation


.. option:: mpRightMapPosF


.. option:: mpRightMapPosF_MapTransformation


.. option:: mpRightNDCF


.. option:: mpRightNDCF_MapTransformation


.. option:: mpRightNPCF


.. option:: mpRightNPCF_MapTransformation


.. option:: mpRightPointLatF


.. option:: mpRightPointLatF_MapTransformation


.. option:: mpRightPointLonF


.. option:: mpRightPointLonF_MapTransformation


.. option:: mpRightWindowF


.. option:: mpRightWindowF_MapTransformation


.. option:: mpSatelliteAngle1F


.. option:: mpSatelliteAngle1F_MapTransformation


.. option:: mpSatelliteAngle2F


.. option:: mpSatelliteAngle2F_MapTransformation


.. option:: mpSatelliteDistF


.. option:: mpSatelliteDistF_MapTransformation


.. option:: mpShapeMode


.. option:: mpShapeMode_MapPlot


.. option:: mpSpecifiedFillColors


.. option:: mpSpecifiedFillColors_MapPlot


.. option:: mpSpecifiedFillDirectIndexing


.. option:: mpSpecifiedFillDirectIndexing_MapPlot


.. option:: mpSpecifiedFillPatterns


.. option:: mpSpecifiedFillPatterns_MapPlot


.. option:: mpSpecifiedFillPriority


.. option:: mpSpecifiedFillPriority_MapPlot


.. option:: mpSpecifiedFillScales


.. option:: mpSpecifiedFillScales_MapPlot


.. option:: mpTopAngleF


.. option:: mpTopAngleF_MapTransformation


.. option:: mpTopMapPosF


.. option:: mpTopMapPosF_MapTransformation


.. option:: mpTopNDCF


.. option:: mpTopNDCF_MapTransformation


.. option:: mpTopNPCF


.. option:: mpTopNPCF_MapTransformation


.. option:: mpTopPointLatF


.. option:: mpTopPointLatF_MapTransformation


.. option:: mpTopPointLonF


.. option:: mpTopPointLonF_MapTransformation


.. option:: mpTopWindowF


.. option:: mpTopWindowF_MapTransformation


.. option:: mpUSStateLineColor


.. option:: mpUSStateLineColor_MapPlot


.. option:: mpUSStateLineDashPattern


.. option:: mpUSStateLineDashPattern_MapPlot


.. option:: mpUSStateLineDashSegLenF


.. option:: mpUSStateLineDashSegLenF_MapPlot


.. option:: mpUSStateLineThicknessF


.. option:: mpUSStateLineThicknessF_MapPlot


