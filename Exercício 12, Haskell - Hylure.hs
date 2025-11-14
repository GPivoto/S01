data Elemento = Elemento {
    denominacao :: String,
    tipagem :: String,
    custoBase :: Double
} deriving (Show)

data TransacaoRPG = TransacaoRPG {
    elementos :: [Elemento]
} deriving (Show)

determinaAbatimento :: [Elemento] -> Double
determinaAbatimento todosElementos =
    let totalBruto = sum (map custoBase todosElementos)
    in if totalBruto > 200 then totalBruto * 0.10 else 0.0

montanteTotal :: TransacaoRPG -> Double
montanteTotal (TransacaoRPG todosElementos)
    | valorBase > 200 = valorBase - determinaAbatimento todosElementos
    | otherwise = valorBase + 15.0
  where valorBase = sum (map custoBase todosElementos)

-- Função auxiliar para imprimir os elementos
exibeElementos :: [Elemento] -> IO ()
exibeElementos [] = putStrLn "Nenhum item na compra."
exibeElementos es = mapM_ (\e -> putStrLn ("- " ++ denominacao e ++ " (" ++ tipagem e ++ ") — R$" ++ show (custoBase e))) es

pontoInicial :: IO ()
pontoInicial = do
    let elemento1 = Elemento "Espada Mestre" "Arma" 180.0
    let elemento2 = Elemento "Pocao de Vida" "Pocao" 50.0
    let elemento3 = Elemento "Escudo Hyliano" "Equipamento" 120.0

    let transacao1 = TransacaoRPG [elemento1, elemento2]
    let transacao2 = TransacaoRPG [elemento3]
    let transacao3 = TransacaoRPG [elemento1, elemento2, elemento3]

    putStrLn "Compra 1:"
    exibeElementos (elementos transacao1)
    putStrLn ("Valor final: R$" ++ show (montanteTotal transacao1))

    putStrLn "\nCompra 2:"
    exibeElementos (elementos transacao2)
    putStrLn ("Valor final: R$" ++ show (montanteTotal transacao2))

    putStrLn "\nCompra 3:"
    exibeElementos (elementos transacao3)
    putStrLn ("Valor final: R$" ++ show (montanteTotal transacao3))

-- Redirecionamento para a função principal
main :: IO ()
main = pontoInicial
