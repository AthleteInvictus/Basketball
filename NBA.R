a = 114.5
y = 103.8
p = 99.3
b = 110.9
z = 104.5
p1 = 93.3
  
home = a^16.5/(a^16.5+y^16.5)
away = b^16.5/(b^16.5+z^16.5)

if(p>p1) {
  pace = .75*p+.25*p1
} else if(p<p1) {
  pace = .75*p1+.25*p
} else {
  pace = .5*p+.5*p1
}

homepts = ((a+z)/200)*pace*1.0125
awaypts = ((b+y)/200)*pace*.9875

odds = homepts^16.5/(homepts^16.5+awaypts^16.5)

cat("Home: ",odds)
cat("Away: ",1- odds)
cat("Home ",homepts,"-",awaypts," Away")