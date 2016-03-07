
## Memory Size Is Not Enough ##
library(data.table)
## ##
temp <- fread("~/data/rre/AirOnTimeCSV/airOT198710.csv")
temp %>% object.size %>% format( units = "MB")




load(file = "~/data/MSPartnerDemo/vsv.RDA")
load(file = "~/data/MSPartnerDemo/post.RDA")