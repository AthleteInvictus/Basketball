pts1 <- 5.6
reb1 <- 1.9
ast1 <- 2.3
threepa1 <- 1.3
fga1 <- 5.1

pts2 <- 27.2
reb2 <- 7.2
ast2 <- 6.9
threepa2 <- 4.1
fga2 <- 11.2

pts = 1-(abs(pts1-pts2)/pts2)
reb = 1-(abs(reb1-reb2)/reb2)
ast = 1-(abs(ast1-ast2)/ast2)
threepa = 1-(abs(threepa1-threepa2)/threepa2)
fga = 1-(abs(fga1-fga2)/fga2)

a = (pts*reb)/(pts*reb+(1-pts)*(1-reb))
b = (a*ast)/(a*ast+(1-a)*(1-ast))
c = (b*threepa)/(b*threepa+(1-b)*(1-threepa))
d = (c*fga)/(c*fga+(1-c)*(1-fga))
print(d)
