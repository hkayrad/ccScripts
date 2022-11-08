turtle.refuel(64)

function GoForward(i)
    for i = 1, i, 1 do
        turtle.forward()
    end
end

for i = 0, 3, 1 do
    turtle.turnRight()
    GoForward(5)
    turtle.turnRight()
end

print("Goodbye")
