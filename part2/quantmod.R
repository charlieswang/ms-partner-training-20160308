
##### R Viz #####
TW2330=getSymbols("2330.TW",auto.assign = FALSE)
chartSeries(TW2330, up.col = 'red', dn.col='green', 
            subset="last 120 days", TA=c(addVo(),addBBands()))

TW3008=getSymbols("3008.TW",auto.assign = FALSE)
chartSeries(TW3008, up.col = 'red', dn.col='green', 
            subset="last 120 days", TA=c(addVo(),addBBands()))
