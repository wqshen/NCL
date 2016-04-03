色条源属性_
=======================

.. _色条源属性: http://www.ncl.ucar.edu/Document/Graphics/Resources/lb.shtml

.. _lbAutoManage:

.. option:: lbAutoManage

    The lbAutoManage switch determines how LabelBar operates; when True, LabelBar manages the sizing of the title and the label text. The title is always sized to fit within the currently set boundaries of the LabelBar given any text angle, aspect ratio, etc. The labels also are sized to fit within the current boundary. Additionally, the sizing of the labels is managed so that under any rotation, the labels will not overlap. Also the label justification is managed such that, given any rotation, the end of the label string aligns with the correct LabelBar box. When off, you may directly size the labels and text as you please. However, under rotation, the justification of the labels does not change, and, although the text is moved out of the way of the LabelBar boxes, it will not necessarily line up correctly. In practice, when working interactively, a good method is to create a basic LabelBar layout close to the desired size with the lbAutoManage mode on, then switch it off to tune the text size precisely to your taste.
    Currently, when the text of the labels is rotated, the size of the LabelBar may increase slightly along the axis of orientation.

    默认值: True

.. _lbBottomMarginF:

.. option:: lbBottomMarginF

    Defines an offset, specified as a fraction of whichever LabelBar axis is smallest, between the bottommost LabelBar element and the bottom edge of the LabelBar perimeter. It is always subtracted from the current LabelBar extent. Negative values are allowed.

    默认值: 0.05

.. _lbBoxCount:

.. option:: lbBoxCount

    Number of boxes in the labelbar. All the LabelBar array resources, when specified, are required to have a number of elements related to the number of boxes. The arrays specified by lbFillPatterns, lbFillColors, and lbFillScales must have at least as many elements as the box count. The minimum size of the lbLabelStrings array may be the box count, one element less than box count, or one element more than box count, depending on the setting of the lbLabelAlignment resource. The lbBoxFractions array, when set, always requires one element more than box count.
    This resource may be intercepted or disabled by:

    ContourPlot
    VectorPlot
    StreamlinePlot

    默认值: 16

.. _lbBoxEndCapStyle:

.. option:: lbBoxEndCapStyle

    This resource controls the shape of the two outer boxes of the LabelBar, which may be either rectangular (like the interior boxes) or triangular/arrow shaped. Set it to one of these four values:
    RectangleEnds
    TriangleLowEnd
    TriangleHighEnd
    TriangleBothEnds

    默认值: RectangleEnds

    NOTE: this resource should be ignored if the contour resource cnLabelBarEndStyle is set to "ExcludeOuterBoxes".

.. _lbBoxFractions:

.. option:: lbBoxFractions

    An array that specifies sizing of each box in the LabelBar when the box sizing mode is set to ExplicitSizing. There must be one more element in this array than the number of items specified by the resource lbBoxCount. Each element of the array must eventually contain a number in the range 0.0 to 1.0, with succeeding elements increasing monotonically. The first element must be 0.0 and the last 1.0. If invalid values are discovered when the array is checked, it is not considered an error. Instead, the code simply supplies linearly interpolated values for all adjacent elements containing out- of-bounds elements. The interpolation is performed relative to the two closest bounding elements containing valid values, or 0.0 or 1.0 respectively if the first or last element contains invalid data. The values thus obtained represent the beginnings and endings of the LabelBar boxes.

    默认值: NULL

.. _lbBoxLineColor:

.. option:: lbBoxLineColor

    The hlu index of the color used to draw lines around the boxes in the LabelBar

    默认值: Foreground

.. _lbBoxLineDashPattern:

.. option:: lbBoxLineDashPattern

    The hlu index of the dash pattern used for the lines around the boxes of the LabelBar.

    默认值: 0

.. _lbBoxLineDashSegLenF:

.. option:: lbBoxLineDashSegLenF

    The length in NDC units of the dash pattern used for the lines around the boxes of the LabelBar.

    默认值: 0.15

.. _lbBoxLineThicknessF:

.. option:: lbBoxLineThicknessF

    确定环绕色条框的线的粗细。
    
    默认值: 1.0

.. _lbBoxLinesOn:

.. option:: lbBoxLinesOn

    布尔型标记，用于控制环绕色条框的线条是否出现。
    
    默认值: True

.. _lbBoxMajorExtentF:

.. option:: lbBoxMajorExtentF

    Determines the amount of the area allotted to each box of the LabelBar in the direction of lbOrientation is actually occupied by the box. When set to 1.0, the boxes touch each other. If set to 0.0, the boxes disappear entirely. Intermediate values create separated boxes.
    
    默认值: 1.0

.. _lbBoxMinorExtentF:

.. option:: lbBoxMinorExtentF

    When the lbAutoManage feature is turned on, this resource determines the fraction of the distance (less the margins) across the axis perpendicular to the orientation (the minor axis) occupied by the boxes of the LabelBar. If set to 1.0, the boxes entirely crowd out their associated labels. If lbTitlePosition is set to a side parallel with the major axis, the lbBoxMinorExtentF cannot exceed 1.0 minus the amount of space used for the title, as set by the resource lbTitleExtentF.
    When lbAutoManage is False and lbTitlePosition is set to a side perpendicular to the major axis, the axis extent from which the box minor extent is calculated includes any extra extent added due to an increased value given to lbTitleFontHeightF. However, it does not include extra extent due to increased value given to the lbLabelFontHeightF resource.

    默认值: 0.33

.. _lbBoxSeparatorLinesOn:

.. option:: lbBoxSeparatorLinesOn

    Available in version 6.2.0 and later.
    If this resource is set to False, it will draw a labelbar with no interior box lines (box separator lines), and just a perimeter line around the "bar" of the labelbar.

    默认值: True

.. _lbBoxSizing:

.. option:: lbBoxSizing

    When set to UniformSizing, all the boxes in the LabelBar have the same size. When set to ExplicitSizing, the values in the array, lbBoxFractions, determine the relative size of each box along the major axis (the axis of orientation).
    
    默认值: UniformSizing

.. _lbFillBackground:

.. option:: lbFillBackground

    The color index used for the background of all the boxes in the LabelBar. By default it is set to Transparent (-1), specifying that the background of the boxes is transparent to whatever it overlays. Note that the box background is only observable when the fill pattern is not solid. This resource also applies to the background of the fill pattern set with the lbPerimFill resource.
    
    默认值: Transparent

.. _lbFillColor:

.. option:: lbFillColor

    When lbMonoFillColor is set True, this resource of type NhlTColorIndex sets a uniform fill color for all the LabelBar boxes.
    This resource may be intercepted or disabled by:

    ContourPlot
    VectorPlot
    StreamlinePlot
    
    默认值: Foreground

.. _lbFillColors:

.. option:: lbFillColors

    This array resource of type NhlTColorIndexGenArray individually sets the color of each box in the LabelBar when lbMonoFillColor is set False. The LabelBar ensures that this array contains at least as many elements as the current value of lbBoxCount. You may cause a box to appear empty by setting the appropriate array element to the value Transparent.
    This resource may be intercepted or disabled by:

    ContourPlot
    VectorPlot
    StreamlinePlot
    
    默认值: By default, each box is assigned to the next succeeding color in the hlu color table, up to the number of defined colors. Additional boxes are assigned the current value of wkForegroundColor.

.. _lbFillDotSizeF:

.. option:: lbFillDotSizeF

    This resource sets a uniform dot size, in NDC units, for the stipple dot fill pattern. The default value of 0.0 causes the dots to be drawn as before, using a workstation dependent minimum dot size. A caveat is that individual dots are not clipped around the edges of fill areas; this becomes more noticeable as the dot size increases.
    
    默认值: 0.0

.. _lbFillLineThicknessF:

.. option:: lbFillLineThicknessF

    The line thickness used for the lines that comprise the fill pattern within the label boxes.
    
    默认值: 1.0

.. _lbFillPattern:

.. option:: lbFillPattern

    When lbMonoFillPattern is set True, this resource of type NhlTFillIndex sets a uniform fill pattern for all the LabelBar boxes.
    This resource may be intercepted or disabled by:

    ContourPlot
    VectorPlot
    StreamlinePlot
    
    默认值: SolidFill

.. _lbFillPatterns:

.. option:: lbFillPatterns

    This array resource of type NhlTFillIndexGenArray individually sets the fill pattern of each box in the LabelBar when lbMonoFillPattern is set False. The LabelBar ensures that this array contains at least as many elements as the current value of lbBoxCount. You can cause any box to appear empty by setting the appropriate array element to the value HollowFill (-1). Note that you can use the scalar resource lbFillBackground to set a uniform solid-fill background color the fill patterns.
    This resource may be intercepted or disabled by:

    ContourPlot
    VectorPlot
    StreamlinePlot
    
    默认值: All array elements above those specified by the user are assigned values according to the formula: element_index MOD wkFillTableLength + 1.

.. _lbFillScaleF:

.. option:: lbFillScaleF

    When lbMonoFillScale is set True, lbFillScaleF sets a uniform fill scale that applies to all patterns in the LabelBar boxes.
    This resource may be intercepted or disabled by:

    ContourPlot
    VectorPlot
    StreamlinePlot
    
    默认值: 1.0

.. _lbFillScales:

.. option:: lbFillScales

    When lbMonoFillScale is False, each element of this array resource contains an individual scale value that is applied to the pattern assigned to the corresponding box in the LabelBar. When the scale value is 1.0, all lines in the currently defined patterns are nominally spaced at about 0.01 NDC units. The scale value is applied as a factor to this spacing.
    This resource may be intercepted or disabled by:

    ContourPlot
    VectorPlot
    StreamlinePlot
    
    默认值: 1.0 for all elements

.. _lbJustification:

.. option:: lbJustification

    When the labelbar changes size, the justification determines a fixed point about which the size change occurs. Any of the corners, the center of any edge, or the current center of the LabelBar may be set to the fixed justification point.
    This resource may be intercepted or disabled by:

    PlotManager
    
    默认值: BottomLeft

.. _lbLabelAlignment:

.. option:: lbLabelAlignment

    How the labels align with respect to the label boxes. If set to BoxCenters, the labels align with the centers of each box, and the number of labels is equal to the number of boxes. If set to InteriorEdges, the labels align with the internal separators between the boxes, and there is one fewer label than the number of boxes. If set to ExternalEdges, the labels align with the external edges as well as the interior separators between the boxes, and there is one more label than boxes.
    This resource may be intercepted or disabled by:

    ContourPlot
    VectorPlot
    StreamlinePlot
    
    默认值: BoxCenters (InteriorEdges in gsn_xxxx_xxx scripts)

.. _lbLabelAngleF:

.. option:: lbLabelAngleF

    The angle of the text of the labels. When the auto-manage resource is turned on, both the size and justification mode of the label text may change in response to changes of the label angle.
    
    默认值: 0.0

.. _lbLabelAutoStride:

.. option:: lbLabelAutoStride

    When this boolean resource is set True, LabelBar labels are checked for overlap before being drawn. If overlap would otherwise occur, a stride is set through the labels such that overlap will be avoided. The stride proceeds in both directions from a pivot label, chosen based on how "round" it is relative to the other labels. If the labels seem to be equally "round" or if the labels are non-numeric, then the shortest label is chosen as the pivot.
    If lbLabelAlignment is set to ExternalEdges, the behavior is a bit different. In this case, the stride is set as described above, but the labels at each end are guaranteed to appear. This may cause labels that would otherwise be part of the stride sequence to be eliminated. This behavior is useful when the end labels are used to show the extreme values of a dataset.

    The stride calculated as a result of setting lbLabelAutoStride is independent of the stride specified by the lbLabelStride resource and is applied subsequently to it. Also note that lbAutoManage must be set False in order for lbLabelAutoStride to have an effect. When lbAutoManage is True, the label font height is reduced to avoid overlap and therefore a stride greater than unity is never required.

    默认值: False (will default to True in V6.1.0 and later)

.. _lbLabelBarOn:

.. option:: lbLabelBarOn

    用于确定色条是否出现的布尔型标记。
    A boolean flag that determines whether the LabelBar should appear. Primarily useful as a forwarded resource when the LabelBar is a child of a higher level object.

    该源属性可被 ``PlotManager`` 对象捕获或禁用
    
    默认值: True

.. _lbLabelConstantSpacingF:

.. option:: lbLabelConstantSpacingF

    Normally when lbLabelFontQuality is set to High, theLabelBar writes line label text with proportional spacing. Setting the lbLabelConstantSpacingF to a value greater than 0.0 overrides this behavior and instead begins each character a distance of lbLabelConstantSpacingF times the nominal character size from the beginning of the previous character. This implies that values between 0.0 and 1.0 will cause the characters to overlap each other, while a value of 1.0 implies no space between two nominally sized characters. This parameter is ignored when lbLabelFontQuality is not Low or Medium. Values less than 0.0 result in an error and are replaced with the default value.
    
    默认值: 0.0

.. _lbLabelDirection:

.. option:: lbLabelDirection

    This resource of type NhlTTextDirection specifies the direction of the label text.
    
    默认值: Across

.. _lbLabelFont:

.. option:: lbLabelFont

    This resource of type NhlTFont specifies the font used to render the LabelBar labels.
    
    默认值: "pwritx"

.. _lbLabelFontAspectF:

.. option:: lbLabelFontAspectF

    Determines the shape of the label font text. Values greater than 1.0 make the text tall and skinny. Values less than one make the text short and wide.
    
    默认值: 1.0

.. _lbLabelFontColor:

.. option:: lbLabelFontColor

    The hlu color index used for drawing the label text.
    
    默认值: Foreground

.. _lbLabelFontHeightF:

.. option:: lbLabelFontHeightF

    The height in NDC coordinates of the text used to draw the labels. When lbAutoManage is set True, the user cannot directly set the label font height. Rather, it is set in response to other factors, such as the current size and shape of the LabelBar, the current setting of lbBoxMinorExtentF, the current text angle of the labels, and how much space there is between the labels. Set lbAutoManage False if you wish to control the label font height directly.
    
    默认值: 0.02

.. _lbLabelFontQuality:

.. option:: lbLabelFontQuality

    确定绘制色条标签文本的字体质量。

    默认值: High （高）

.. _lbLabelFontThicknessF:

.. option:: lbLabelFontThicknessF

    设定用来绘制色条标签文本线的粗细。它的值为一个单位粗细（依赖设备）的倍数。
    当色条标签字体源属性 `lbLabelFont`_ 设为填充字体（字体索引号 21-22， 25-26, 29-30, 33-37）时，
    该源属性被忽略。
    
    默认值: 1.0 （1.0倍）

.. _lbLabelFuncCode:

.. option:: lbLabelFuncCode

    Determines the function code character used when parsing the label string.
    This resource may be intercepted or disabled by:

    ContourPlot
    VectorPlot
    StreamlinePlot
    
    默认值: :

.. _lbLabelJust:

.. option:: lbLabelJust

    指定色条标签文本的对齐方式。当自动管理特征开启时，为响应色条标签文本的角度变化，对齐方式可能会内在地改变。
    因此，为了显式地控制色条标签文本对齐方式，你应该首先关闭自动管理特征。
    
    默认值: CenterCenter （上下居中，左右居中）

.. _lbLabelOffsetF:

.. option:: lbLabelOffsetF

    Defines an offset, specified as a fraction of the length of the minor labelbar axis (perpendicular to the axis of orientation), between the LabelBar boxes and the labels.
    
    默认值: 0.1

.. _lbLabelPosition:

.. option:: lbLabelPosition

    这一NhlPosition类型的源属性控制标记（labels）相对于色条框的位置。
    当色条的方向为水平，其有效值为 ``Top`` （顶）， ``Center`` （中）， ``Bottom`` （底）。
    当色条的方向为垂直，其有效值为 ``Left`` （左）， ``Center`` （中）， ``Right`` （右）。
    如果对应色条方向设置，设置的不恰当，此源属性的值将会轻微改变： ``Bottom`` （底）变为 ``Left`` （左），
    ``Top`` （顶）变为 ``Right`` （右），反之亦然。

    When set to Center the labels are centered on, and when the auto-manage feature is on, sized to fit within, each respective label box.
    
    默认值:  ``Right`` （右）

.. _lbLabelStride:

.. option:: lbLabelStride

    控制色条上的标记（labels）的间隔（步长）。如设置为2时，色调标记将每隔一个色块
    画一个。
    
    默认值: ``1``

.. _lbLabelStrings:

.. option:: lbLabelStrings

    数组源属性，是构成色条标记（labels）的字符串数组。
    此源属性可能被以下对象拦截或禁用：

    ContourPlot (见 cnExplicitLabelBarLabelsOn)

    VectorPlot (见 vcExplicitLabelBarLabelsOn)
    
    StreamlinePlot (见 stExplicitLabelBarLabelsOn)
    
    默认值: Label_<label element number>

.. _lbLabelsOn:

.. option:: lbLabelsOn

    布尔类型的标记，用于控制是否将标记（labels）显示在色条下
    
    默认值: True

.. _lbLeftMarginF:

.. option:: lbLeftMarginF

    Defines an offset, specified as a fraction of whichever LabelBar axis is smallest, between the leftmost LabelBar element and the left edge of the LabelBar perimeter. It is always subtracted from the current LabelBar extent. Negative values are allowed.
    
    默认值: ``0.05``

.. _lbMaxLabelLenF:

.. option:: lbMaxLabelLenF

    This read-only resource returns the maximum length in NDC of the strings used as LabelBar labels.
    
    默认值: <dynamic>

.. _lbMinLabelSpacingF:

.. option:: lbMinLabelSpacingF

    This read-only resource returns the minimum distance in NDC from the start of one label string to the start of the next label string.
    
    默认值: <dynamic>

.. _lbMonoFillColor:

.. option:: lbMonoFillColor

    When set True, all LabelBar boxes are set to a single color, as specified by the value of the scalar resource lbFillColor. When False, the elements of the array resource lbFillColors control the color of each box individually.
    This resource may be intercepted or disabled by:

    ContourPlot
    VectorPlot
    StreamlinePlot
    
    默认值: False

.. _lbMonoFillPattern:

.. option:: lbMonoFillPattern

    When set True, all the boxes in the labelbar are set to a single pattern, as specified by the value of the scalar resource lbFillPattern.
    This resource may be intercepted or disabled by:

    ContourPlot
    VectorPlot
    StreamlinePlot
    
    默认值: False

.. _lbMonoFillScale:

.. option:: lbMonoFillScale

    When set True, the patterns applied to each box in the LabelBar are scaled by a single factor, as specified by the value the scalar resource lbFillScaleF.
    This resource may be intercepted or disabled by:

    ContourPlot
    VectorPlot
    StreamlinePlot
    
    默认值: True

.. _lbOrientation:

.. option:: lbOrientation

    This resource of type NhlTOrientation specifies whether the labelbar boxes are arranged horizontally in a row or vertically in a column. The major axis of the LabelBar instance is parallel to the orientation and the minor axis is perpendicular to the orientation.
    This resource may be intercepted or disabled by:

    PlotManager
    
    默认值: Vertical

.. _lbPerimColor:

.. option:: lbPerimColor

    The hlu index of the color used for the line around the perimeter of LabelBar.
    
    默认值: Foreground

.. _lbPerimDashPattern:

.. option:: lbPerimDashPattern

    Specifies the hlu index of the dash pattern used to draw the perimeter of the LabelBar.
    
    默认值: 0, specifying a solid line


.. _lbPerimDashSegLenF:

.. option:: lbPerimDashSegLenF

    The length in NDC units of the dash pattern used to draw the perimeter of the LabelBar.
    
    默认值: 0.15


.. _lbPerimFill:

.. option:: lbPerimFill

    The hlu index of the pattern used to fill the background of the LabelBar area. Only has an effect when the lbPerimFillColor has set to a value greater than Transparent (-1).
    
    默认值: HollowFill


.. _lbPerimFillColor:

.. option:: lbPerimFillColor

    The hlu index of the color used to fill the background of the Legend area. Only has an effect when the lbPerimFill has a value greater than HollowFill (-1).

    默认值: Background


.. _lbPerimOn:

.. option:: lbPerimOn

    A boolean flag determining whether a line is drawn around the perimeter of the LabelBar.

    默认值: True

.. _lbPerimThicknessF:

.. option:: lbPerimThicknessF

    Specifies the thickness of the line used to draw the perimeter of the LabelBar.

    默认值: 1.0


.. _lbRasterFillOn:

.. option:: lbRasterFillOn

    If set True, this resource causes the LabelBar to use raster mode fill rather than normal polygon fill to render the box colors. In this case, only solid fill is possible; the fill pattern resources are ignored. If any element of lbFillColors is set to Transparent or lbBoxSizing is set to ExplicitSizing, raster mode fill is not possible: LabelBar issues a warning and defaults to normal polygon fill.
    Normally, assuming the boxes are solid-filled, the appearance of the LabelBar boxes will be identical whether or not this resource is set. It only makes a difference when the output must go to certain printers that render colors slightly differently when raster fill is in effect. ContourPlot forces lbRasterFillOn to True when it manages a LabelBar and raster fill is in effect.

    默认值: False


.. _lbRightMarginF:

.. option:: lbRightMarginF

    Defines an offset, specified as a fraction of whichever LabelBar axis is smallest, between the rightmost LabelBar element and the right edge of the LabelBar perimeter. It is always subtracted from the current LabelBar extent. Negative values are allowed.
    
    默认值: 0.05

.. _lbTitleAngleF:

.. option:: lbTitleAngleF

    The angle of the title text. When the auto-manage feature is on, the title size changes as the text rotates.
    
    默认值: 0.0


.. _lbTitleConstantSpacingF:

.. option:: lbTitleConstantSpacingF

    Determines a constant amount of extra space that is placed between each character of the title text. Values less than 0.0 result in an error and are replaced with the default value.
    
    默认值: 0.0


.. _lbTitleDirection:

.. option:: lbTitleDirection

    This resource of type NhlTTextDirection specifies the direction of the title text. When the title position, as set by the resource lbTitlePosition, is Top or Bottom the direction is set by default to Across. When title position is Left or Right the text is set by default to Down.
    
    默认值: Across


.. _lbTitleExtentF:

.. option:: lbTitleExtentF

    The LabelBar title occupies a rectangular portion of the LabelBar viewport bounded on three sides by edges of the viewport and on the fourth by a line determined by the value of this resource. lbTitleExtentF specifies a fraction of the length (minus the margins) of the LabelBar axis perpendicular to lbTitlePosition. At this point along the length of the axis the fourth side of the title extent rectangle is constructed parallel to the side specified by lbTitlePosition. The sum of the values given to lbTitleExtentF and lbTitleOffsetF cannot exceed 0.5 (half the length of the axis). If the sum does exceed 0.5, a warning is issued and both values are reset to their default values.
    If lbAutoManage is set False, and lbTitleFontHeightF is set such that the title extent rectangle cannot accommodate the full extent of the title text, the viewport of the LabelBar instance is expanded to fit the title text extent. However, the LabelBar treats this additional extent as 'extra'. The title extent rectangle does not change its size as long as the LabelBar view width or height is not explicitly modified. This means that as you set lbTitleFontHeightF to smaller values, the LabelBar viewport will shrink until its size matches the size it would have had if the text extent fit within the originally set title extent.

    默认值: 0.15


.. _lbTitleFont:

.. option:: lbTitleFont

    This resource of type NhlTFont specifies the font used to render the LabelBar title.
    
    默认值: "pwritx"


.. _lbTitleFontAspectF:

.. option:: lbTitleFontAspectF

    Determines the shape of the title font text. Values greater than 1.0 make the text tall and skinny. Values less than one make the text short and wide.
    
    默认值: 1.0


.. _lbTitleFontColor:

.. option:: lbTitleFontColor

    The hlu index of the color used for the title text.
    
    默认值: Foreground


.. _lbTitleFontHeightF:

.. option:: lbTitleFontHeightF

    The font height in NDC units used for the title text. If lbAutoManage is set True, the LabelBar sets this resource automatically based on the space available and the value of other title font attributes including lbTitleAngleF, lbTitleConstantSpacingF and lbTitleFontAspectF. The available space is determined from the size of the LabelBar viewport and the setting of the resource lbTitleExtentF. When lbAutoManage is True, attempts by the user to set this resource are simply ignored.
    If lbAutoManage is False, the LabelBar instance will honor the set value of lbTitleFontHeightF, even if it must increase the size of the viewport in order to encompass the full extent of the title text. However, space added in this manner is considered an addition to the 'fundamental' size of the LabelBar. If the lbTitleFontHeightF is reduced to a value less than or equal to the value that would be used if lbAutoManage were True, then the LabelBar will resize itself to its 'fundamental' size. If you resize the LabelBar by setting the width or height of its viewport, lbTitleFontHeightF and the 'fundamental' size both adjust themselves proportionally.

    默认值: 0.025


.. _lbTitleFontQuality:

.. option:: lbTitleFontQuality

    Determines the text quality used to draw the title text.
    
    默认值: High


.. _lbTitleFontThicknessF:

.. option:: lbTitleFontThicknessF

    Determines the thickness of the line used to draw the Label text. This resource only affects the Hershey fonts.
    
    默认值: 1.0


.. _lbTitleFuncCode:

.. option:: lbTitleFuncCode

    Determines the function code character used when parsing the label string.
    
    默认值: :


.. _lbTitleJust:

.. option:: lbTitleJust

    The justification used for the title text.
    
    默认值: CenterCenter


.. _lbTitleOffsetF:

.. option:: lbTitleOffsetF

    This resource defines an offset specified as a fraction of the length of the axis (minus the margins) perpendicular to the side specified by lbTitlePosition. This offset separates the title extent, as specified by lbTitleExtentF, from the other elements of the LabelBar.
    
    默认值: 0.03

.. _lbTitleOn:

.. option:: lbTitleOn

    A boolean flag determining whether the title should appear in the LabelBar. If lbTitleString is set when the LabelBar object created, lbTitleOn defaults to True. Otherwise it defaults to False.
    
    默认值: True


.. _lbTitlePosition:

.. option:: lbTitlePosition

    This resource of type NhlTPosition determines the position of the title with respect to the other elements of the LabelBar. Valid positions are Top, Bottom, Left, and Right. When you set the title position, LabelBar automatically adjusts the title direction, unless you explicitly set lbTitleDirectionin the same call. When you set the position to Top or Bottom, the title direction is set to Across; when the position is set to Left or Right, the title direction is set to Down.
    
    默认值: Top

.. _lbTitleString:

.. option:: lbTitleString

    A string containing the text used for the LabelBar title. If lbTitleString is set when the LabelBar object created, the boolean resource lbTitleOn defaults to True, causing the title to appear. Otherwise it defaults to False. If you explicitly set lbTitleOn True without setting lbTitleString, LabelBar supplies a title consisting of the name of the current instantiation of the object.
    
    默认值: <dynamic>

.. _lbTopMarginF:

.. option:: lbTopMarginF

    Defines an offset, specified as a fraction of whichever LabelBar axis is smallest, between the topmost LabelBar element and the top edge of the LabelBar perimeter. It is always subtracted from the current LabelBar extent. Negative values are allowed.
    
    默认值: 0.05
