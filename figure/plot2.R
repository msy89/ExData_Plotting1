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
png(filename='plot2.png',height=480,width=480)
plot(dato[,3],type='l',xaxt='n',xlab='',ylab='Global Active Power (kilowatts)')
axis(1,c(1,1441,(2*1440+1)),c('Thu','Fri','Sat'))
dev.off()