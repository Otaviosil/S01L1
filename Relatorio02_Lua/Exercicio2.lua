local tabela = {}
for i = 1, 100 do
    tabela[i] = math.random(1, 100)
end

local contador_pares = 0
for i = 1, 100 do
    if tabela[i] % 2 == 0 then
        contador_pares = contador_pares + 1
    end
end

print("Quantidade de números pares na tabela: " .. contador_pares)
