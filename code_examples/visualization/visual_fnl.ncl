begin
  ;; 打开文件并读取500 hPa温度变量
  f = addfile("fnl_20001025_18_00"+".grb", "r")
  print(f)  ;用print查看下文件变量的信息,会将文件中所有的变量概略打印到屏幕
  temp = f->TMP_3_ISBL({850}, :, :)  ;读入文件变量到变量temp中
  printVarSummary(temp)  ;看看变量的信息
  ;; 打开绘图工作台，使用X11窗口
  wks = gsn_open_wks("X11", "Temperature")
  ;; 定义源变量并设置其属性
  res = True
  res@cnFillOn = True
  res@cnLinesOn = False
  ;; 绘制等值线填色图
  plot = gsn_csm_contour_map_ce(wks, temp, res)
end