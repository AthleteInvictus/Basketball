mp = 370
fg = 77

points = matrix(
  c(0,0,240,3000,805,3000,fg,mp),
  nrow=(4),
  ncol=(2),
  byrow = TRUE
)

fgerror = abs(fg-805)/805
mperror = abs(mp-2900)/2900
error = (1-((fgerror+mperror)/2))/.95

if((2900-mp)<mp) {
  volume = mperror
} else {
  volume = 1-mperror
}

plot(points)

cat("Scorer: ",error)
cat("Pure Volume: ",volume)
cat("Bench: ",(1-volume))