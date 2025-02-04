#2025-02-04 class notes boolean and IF statements


###BOOLEAN
vec= c(1,0,2,1)
vec
vec[c(FALSE, FALSE, TRUE, T)]
!TRUE  #reverses a logical so turned truw into false

1>2
vec >1 #it tells me if 1 is greater than every element in my vector I created
1 %in% c(1,2,3) #tells me if 1 shows up in my vector at all

world_oceans = data.frame(oceans = c("Atlantic", "Pacific", "Indian", "Arctic", "Southern"),
                          area_km2 = c(77e6, 156e6, 69e6, 14e6, 20e6),
                          avg_depth_m = c(3926, 4028, 3963, 3953, 4500))

world_oceans$avg_depth_m >4000 #tells me which ocean has a depth larger than 4000 by saying true

sum(world_oceans$avg_depth_m > 4000) #provides the sum of how many oceans have a depth greater than 4000

world_oceans[ world_oceans$avg_depth_m >4000, ] #[rows, columns] if leave one spot blank it means give me all columns or all rows

world_oceans[ world_oceans$avg_depth_m >4000, "oceans"]

###DO EXERCISE 2.1




1+2 == 3
0.1+0.2 == 0.3
(0.1 + 0.2)- 0.3
error_threshold= 0.00001
abs((0.1+0.2)-0.3) > error_threshold #asking is the absolute value of the equation we gave it greater than our error threshold we provided

#Example

x= 5
x> 3 & x< 15
x> 3 | x< 15
x> 3 & x >15
x>3 & x %in% c(1,3,5,7,9)
x>3 | x %in% c(1,3,5,7,9)
x>3 & x %in% c(1,3,7,9)

a= c(1,2,3)
b= c(1,2,3)
c= c(1,2,4)

a==b
a==c
any(a==c)
all(a==c)

dat= c(1,2,3, NA) 
dat==NA  #now r thinks all my data is na

is.na(dat) #now its telling me which elements are NA

###DO EXERCISE 2.2

####IF statements

num = -2
if(num<0){
  num = num * -1
}   #we are asking if num is less than zero do the stuff inside the brackets so it multiplied num by -1
num  

num = 35
if(num<0){
  num = num * -1
}   #we are asking if num is less than zero do the stuff inside the brackets. Num was not less than zero so it kept my number the same
num

num = -45
if(num<0){
  print("num is negative")
  num = num * -1
  print("we made it positive")
}   #we are asking if num is less than zero do the stuff inside the brackets so it multiplied num by -1
num

###Exercise 3.1

no_fever= 98.4
if(no_fever<98.6){
 
  print("No fever, healthy")
}

low_fever= 99.6
if(low_fever < 98.6){
  print("I am a little sick")
}

temperature = 102.1
if (temperature > 98.6){
  difference= temperature-98.6
  print(difference)
}
if(temperature> 101){
  print("go to doctor")
}

###ELSE Statements

grade= 30
if(grade > 60){
  print ("You passed!!")
} else {
  print (" You failed ):")
}

#Using else if statements
#does player 1 or 2 win or do they tie

a=1
b=2
if (a>b){
  print("a wins!")
} else if (b>a){
  print("b wins")
} else{
  print("TIE")
}

#Now trying ifelse() function

a= 9
ifelse(test = (a !=0), yes = 1/a, no = NA) #this is saying if a is a zero do yes statement and if not do no test
#does a not equal zero? Yes so it di my yes statement 1/a (1/9)

twovec= c(0, 1,2,-4,-5)
recipricols= ifelse(test = (twovec !=0), yes = 1/twovec, no = NA) 
recipricols

cbind(twovec, recipricols) #this combined my two vectors as columns 

nasa= c(1,3,5,-999,2,-999,8)
ifelse(nasa ==-999, yes = NA, no= nasa)
