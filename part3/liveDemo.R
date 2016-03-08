
## Memory Size Is Not Enough ##
library(data.table)
#temp <- fread("~/data/rre/AirOnTimeCSV/airOT198710.csv")
temp <- fread("/mnt/hgfs/Downloads/AirOnTimeCSV/airOT198710.csv")
temp %>% object.size %>% format( units = "MB")

## News ##
load(file = "~/data/MSPartnerDemo/vsv.RDA")
load(file = "~/data/MSPartnerDemo/post.RDA")

library(dplyr)


head(VAV) %>% group_by(v1, v2) %>% summarise(count = n()) %>% dplyr::arrange(desc(count)) %>% head(100)

head(posts)

