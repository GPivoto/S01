function maior_valor(tabela)
    local maior = tabela[1]
    for i = 2, #tabela do
        if tabela[i] > maior then
            maior = tabela[i]
        end
    end
    return maior
end

local numeros = {3, 7, 1, 9, 4, 99}
print("Maior valor:", maior_valor(numeros))
