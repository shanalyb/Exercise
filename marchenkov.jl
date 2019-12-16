using Plots#, SciPy

x = range(1.3, stop = 1.9, length = 15)
y = 1.7 * sin.(2 * pi * 0.4 * x .+ 67.0) .- 1.2

plotly()
fig = plot(x, y)
xlabel!("t, sec")
ylabel!("y")
display(fig)
print("t= ")
for x in range(1.3, stop = 1.9, length = 15)
    print(x, " ")
end
println()
println("y= ", y)

#function test(x, a0, a1, b1, w):
#    return a0 + a1 * cos(x * w) + b1 * sin(x * w)
#end

#param, param_cov = curve_fit(test, x, y)
