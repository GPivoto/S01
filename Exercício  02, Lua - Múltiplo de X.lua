print("Digite o valor de M: ")
local M = tonumber(io.read())
print("Digite o valor de N: ")
local N = tonumber(io.read())
print("Digite o valor de X: ")
local X = tonumber(io.read())

print("Múltiplos de " .. X .. " entre " .. M .. " e " .. N .. ":")

for i = M, N do
    if i % X == 0 then
        print(i)
    end
end
