// library("ggmap")

sp = read.table("StPetersburg/sp_final.csv", header = TRUE, sep = ";")
// sp.tagged = sp[which(sp$tags != ""), ]
// sp.notag = sp[which(sp$tags == ""),]

// ggmap(get_map(location = c(lon = 30.3351, lat = 59.9343), color = 'color', zoom=10, source="stamen", maptype="toner-lite")) + geom_point(aes(x=lon, y=lat), data=sp.notag, size=0.01, alpha=0.05, color="blue") + theme(text = element_blank(), line = element_blank())

// ggmap(get_map(location = c(lon = 30.3351, lat = 59.9343), color = 'color', zoom=10, source="stamen", maptype="toner-lite")) + geom_point(aes(x=lon, y=lat), data=sp.tagged, size=0.01, alpha=0.05, color="red") + theme(text = element_blank(), line = element_blank())

of.all = sp[, c(2,3,9,10,11,12)]
for (hour in c(0:23)) { write.table(of.all[which(of.all$local_hour == hour), ], paste0(toString(hour),".csv"), sep=",") }