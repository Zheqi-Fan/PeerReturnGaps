## visulize the long/short factor portfolio

library(xts)
library(quantmod)
library(PerformanceAnalytics)

Sys.setlocale("LC_TIME","English") # Display English Date

{ # 合并两条累积收益曲线到同一图表
  
  # 更详细的版本，添加网格和自定义标签
  return_plot <- cbind(raw_return$`10-1`, raw_return_VW$`10-1`)
  names(return_plot) <- c("Equal-Weighted","Value-Weighted")
  chart.CumReturns(return_plot, 
                   main = "Cumulative Returns: 10-1 Portfolio", 
                   geometric = TRUE,
                   wealth.index = TRUE, 
                   legend.loc = "topleft", 
                   colorset = rich8equal[c(2,4)],
                   lwd = 3,
                   grid.color = "white",
                   element.color = "darkgray",
                   ylab = "Wealth Index",
                   xlab = "Date")
  
  chart.Drawdown(return_plot, main = "Drawdown: 10-1 Portfolio", geometric=TRUE, 
                 legend.loc = "bottomleft", lwd = 2,
                 grid.color = "white",
                 element.color = "darkgray",colorset = rich8equal[c(2,4)])
  table.AnnualizedReturns(return_plot)
  table.DownsideRisk(return_plot)
  
  charts.PerformanceSummary(return_plot$`Equal-Weighted`,
                            methods=c("Historical","Gaussian"),
                            colorset=rich8equal,
                            main="Hedge Fund Performance")

}




