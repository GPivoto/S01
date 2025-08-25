function somente_pares(tabela)
    local pares = {}
    for i = 1, #tabela do
        if tabela[i] % 2 == 0 then
            table.insert(pares, tabela[i])
        end
    end
    return pares
end

local numeros = {1, 2, 3, 4, 5, 6, 7, 8, 9 , 10}
local pares = somente_pares(numeros)

print("Números pares:")
for i = 1, #pares do
    print(pares[i])
end
