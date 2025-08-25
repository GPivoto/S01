function calculadora(a, b, operador)
    if operador == "+" then
        return a + b
    elseif operador == "-" then
        return a - b
    elseif operador == "*" then
        return a * b
    elseif operador == "/" then
        if b ~= 0 then
            return a / b
        else
            return "Erro: Divisão por zero"
        end
    else
        return "Erro: Operador inválido"
    end
end

print("Digite o primeiro número: ")
local num1 = tonumber(io.read())
print("Digite o segundo número: ")
local num2 = tonumber(io.read())
print("Digite o operador (+, -, *, /): ")
local operador = io.read()

print("Resultado: ", calculadora(num1, num2, operador))
