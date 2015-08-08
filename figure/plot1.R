#reading the data
datos=read.table('C:/Users/Martin/Downloads/household_power_consumption.txt',h=T,sep=';',fill=T)
#subsetting
dato=rbind(datos[datos$Date=='1/2/2007',],datos[datos$Date=='2/2/2007',])
#pass to character
for(i in 1:2){
dato[,i]=as.character(dato[,i])
}
#pass to numeric
for(i in 3:ncol(dato)){
dato[,i]=as.numeric(as.character(dato[,i]))
}
#plotting
png(filename='plot1.png',height=480,width=480)
hist(dato[,3],col=2,xlab='Global Active Power (kilowatts)',main='Global Active Power')
dev.off()