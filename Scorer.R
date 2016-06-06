mp = 2530
fg = 567

points = matrix(
  c(0,0,240,3000,805,3000,fg,mp),
  nrow=(4),
  ncol=(2),
  byrow = TRUE
)

fgerror = abs(fg-805)/805
mperror = abs(mp-2900)/2900
error = (1-((fgerror+mperror)/2))/.95

volume = abs(mp-2900)/2900

plot(points)

cat("Scorer: ",error1)
cat("Pure Volume: ",volume)
cat("Bench: ",(1-(volume+error)))