weather=read.csv("C:/Users/user/OneDrive/문서/대학교/2021_01_winter.csv")
weather
weather$일시=as.Date(weather$일시)
library(dplyr)
library(ggplot2)
library(RColorBrewer)
weather%>%filter(weather$지점=="천안(232)"|weather$지점=="서울(108)")%>%ggplot(aes(일시,일최저기온,col=지점))+geom_line()
ggplot(weather,aes(일최대풍속,일최저기온,col=한파영향예보))+geom_point(alpha=0.2)

#1월 4일부터 1월 11일까지 매우 추웠다는 것을 알 수 있고, 실제로 1월 6일에는 중부지방을 중심으로 기습폭설도 내림
#천안이 서울보다 좀더 추운 지역이라는 것을 알 수 있음
#기온이 낮을 수록 한파영향지수가 높아진다는 것을 볼 수 있고, 이외로 바람하고는 큰 연관성이 없다.