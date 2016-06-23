mp = 2845
fg = 594

points = matrix(
  c(0,0,240,3000,805,3000,fg,mp),
  nrow=(4),
  ncol=(2),
  byrow = TRUE
)

fgerror = abs(fg-805)/805
mperror = abs(mp-2900)/2900
scorer = (1-((fgerror+mperror)/2))/.95

if((2900-mp)>mp){
  bench = mperror
  volume = 1-(bench+scorer)
} else {
  volume = mperror
  bench = 1-(volume+scorer)
}

plot(points,xlab = 'Field Goals',ylab = 'Minutes')

cat("Scorer: ",scorer)
cat("Volume: ",volume)
cat("Bench: ",bench)