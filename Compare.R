pts1 <- 20.8
reb1 <- 3.4
ast1 <- 5.5
threepa1 <- 4.7
fga1 <- 16.7

pts2 <- 21.4
reb2 <- 3.8
ast2 <- 6.3
threepa2 <- 7
fga2 <- 16.9

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
