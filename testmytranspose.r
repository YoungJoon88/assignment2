setwd("D:/대학원/창의적 연구 및 논문/이기천교수님/HW_1/assignment2")
rm(list = ls())
while (dev.cur()>1) dev.off()
gc(reset = F)

source("./mytranspose.r")

# @ 기능 설명
# matrix 를 넣으면 transpose 된 matrix 리턴
# vector 는 nrow 가 1인 matrix 와 같으므로 transpose 시 ncol 이 1인 transposed matrix 를 리턴
# data.frame 을 넣으면 transpose 된 data.frame 리턴
# 크기가 0인 vector 나 matrix,또는 NULL을 넣으면 transpoze 가 불가능 하므로 입력값 그대로 리턴

{
  myvar1 <-  matrix(1:10, nrow=5, ncol=2)
  myvar1
  mytranspose(myvar1)
  
  myvar1 <-  matrix(NA, nrow=0, ncol=0)
  myvar1
  mytranspose(myvar1)
  
  myvar1 <-  matrix(c(1,2), nrow=1, ncol=2)
  myvar1
  mytranspose(myvar1)
  
  myvar1 <-  matrix(c(1,2), nrow=2, ncol=1)
  myvar1
  mytranspose(myvar1)
  
  myvar2 <- c(1,2,NA,3)
  myvar2
  mytranspose(myvar2)
  
  myvar2 <- c(NA)
  myvar2
  mytranspose(myvar2)
  
  myvar2 <- c()
  myvar2
  mytranspose(myvar2)
  
  d <- c(1,2,3,4)
  d
  mytranspose(d)
  
  e <- c("red", "white", "red", NA)
  e
  mytranspose(e)
  
  f <- c(TRUE,TRUE,TRUE,FALSE)
  f
  mytranspose(f)
  
  mydata3 <- data.frame(d,e,f)
  mydata3
  mytranspose(mydata3)
}