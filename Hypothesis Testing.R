#oneplus
oneplus=read.csv("E:/ONEPLUS vs SAMSUNG/OnePlus_6T_review_scraping_5000.csv")
head(oneplus)
#set.seed(600)
index<-sample(1:nrow(oneplus), 600)
index
a=oneplus[index,]
n1=600
mu1=mean(a$Review.Rating)
mu1 #sample mean - oneplus ratings
std1=sd(a$Review.Rating) # sample standard deviation
std1

#samsung
samsung=read.csv("E:/ONEPLUS vs SAMSUNG/Flipkart_Samsung_Galaxy_s8_reviews_3500.csv")
head(samsung)
ind=sample(1:nrow(samsung), 400)
b=samsung[ind, ]
head(b)
n2=400
mu2=mean(b$Review.Rating)
mu2 #sample mean-samsung ratings
std2=sd(b$Review.Rating)#sample standard deviation
std2

h0: null hypothesis - average ratings of one plus is higher than the average ratings of Samsung.
ha: Alternate hypothesis - average ratings of one plus is lesser than the average ratings of samsung.


h0: mu1>=m2
h1: mu1<mu2

#pooled sample standard deviation
sp=1.19

#degrees of freedom
df=998

#test statistic
t=4.53

2*pt(4.53, 998) > 0.05

# we do not reject our null hypothesis and conclude that the average ratings of oneplus is higher than average ratings of Samsung