1+1
library(RSADBE)

m = matrix(c(1:5))
m

m = matrix(c(1:10), nrow = 2)
m

m = matrix(c(1:10), nrow = 2, byrow = T)
m

x1 = c(5,40,50:52)
x1

x2 = c(30,5,6:8)
x2

mr = rbind(x1, x2)
mr

mc = cbind(x1, x2)
mc

m3 = matrix(10:19, 2)
m3

mode(m3) ; class(m3)


m3[1,]
m3[2,]
m3[2,3]

m3[1,c(2:5)]

x = matrix(c(1:9), nrow = 3, ncol = 3)
x

x = matrix(c(1:9), nrow = 3, ncol = 3, byrow = T)
x

1:9
c(1:9)

length(x)
ncol(x); nrow(x)

apply(x,1, max) #1이 행

apply(x,2, max) #2가 열열


f = function(x){
  x+2
}

result = apply(x, 1, f)
x
result

colnames(x) = c("one", "two", "three")
x

vec = c(1:12)

arr = array(vec, c(3,2,2)) #3행 2열 2면
arr

arr[,,1]

mode(arr); class(arr)

library(RSADBE)

list = list("lee","이순신","95")
list

x = unlist(list)
x

mode(x) ; class(x)

num = list(c(1:5), c(6:10))
num

member = list(name = c("홍길동", "유관순"),
age = c(35,25), address = c("한양", "충남"),
gender = c("남자","여자"), htype = c("아파트","오피스텔"))

member

member$age[2] = 45
member$age[2]

member$age = NULL
member

length(member)

mode(list); class(list)

a = list(c(1:5))
b = list(6:10)

lapply(c(a,b), max)

sapply(c(a,b), max)

no = c(1,2,3)
name = c("hong","lee","kim")
pay = c(150,250,300)

vemp = data.frame(No = no, Name = name, Pay = pay)
vemp
mode(vemp); class(vemp)


df = data.frame(x = c(1:5), y = seq(2,10,2), z = c('a','b','c','d','e'))
df


df$s
str(df)

summary(df)

apply(df[,c(1,2)], 2, sum) # 컬럼(열) 합계

apply(df[,c(1,2)], 2, mean) # 컬럼(열) 평균균

x1 = subset(df, x>=3)
x1


sid = c("a","b","c","d")
score = c(90,80,70,60)
subject = c("컴퓨터","국어국문","소프트웨어","유아교육")

student = data.frame(sid, score, subject)
student

mode(student);class(student);str(student)

height = data.frame(id = c(1,2), h = c(180,175))
weight = data.frame(id = c(1,2), w = c(80,75))

user = merge(height, weight, by.x = "id", by.y = "id")
user

install.packages("psych")
library(psych)

install.packages("ggplot2")
library(midwest)

data(midwest)
mode(midwest)

# 데이터 프레임 - 행(가로)과 열(세로)로 구성
# 데이터가 크다 - 행이 많다 또는 열이 많다

eng = c(90,80,60,70)
math = c(50,60,100,20)

df_midterm = data.frame(eng,math)
df_midterm

class = c(1,1,2,2)

df_midterm = data.frame(eng,math,class)

mean(df_midterm$eng)
mean(df_midterm$math)


fruits = data.frame(제품 = c("사과","딸기","수박"),
                      가격 = c(1800,1500,3000),
                      판매량 = c(24,38,13))
fruits

mean(fruits$가격)
mean(fruits$판매량)

install.packages("readxl")
library(readxl)
df_exam = read_excel("C:/Users/user/Documents/Rclass/Rclass/excel_exam.xlsx")

df_exam











