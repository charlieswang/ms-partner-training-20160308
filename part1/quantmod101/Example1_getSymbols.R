
######################################################################
### Hello ! quantmod !
######################################################################

library(quantmod)
getSymbols("^TWII")
# View(TWII)
chartSeries(TWII, theme = "white")

######################################################################
### get 3008,TW
######################################################################

getSymbols("3008.TW")
3008.TW

Xt <- `3008.TW`
Xt <- get("3008.TW")
chartSeries(`3008.TW`, theme = "white")

Xt = getSymbols("2330.TW",auto.assign = F)
chartSeries(Xt, theme = "white")

######################################################################
### R Helpers Remind ......
######################################################################

?getSymbols
args(getSymbols)
example(getSymbols)

# TAB
?getSymbols.yahoo
?getSymbols.oanda
?getSymbols.SQLite
?getSymbols.csv


chartSeries(getSymbols("^SOX",auto.assign = F))
chartSeries(getSymbols("^SOX",auto.assign = F), theme = "white")


######################################################################
### R Basic Remind ......
######################################################################

# show variables (in a env)
ls()
?ls
example(ls)

# assign value of varibles:
assign("b",123)
b=123
b<-123
`<-`("c",123)

ls()

# get value of varibles: 
c
get("c")
`c`


######################################################################
### get USD/TWD from oanda
######################################################################

getSymbols("USD/TWD",src="oanda",from="2000-01-01")
chartSeries(USDTWD, theme = "white")


