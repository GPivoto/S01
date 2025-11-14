-- Definição do tipo Item
data Item = Item {
    designacao :: String,
    categoria :: String,
    custo :: Float
} deriving (Show)

-- Definição do tipo Requisicao
data Condicao = Pendente | Concluido | Anulado deriving (Show, Eq)

data Requisicao = Requisicao {
    itens :: [Item],
    condicao :: Condicao
} deriving (Show)

-- Função que calcula o montante integral da requisicao
montanteIntegralRequisicao :: Requisicao -> Float
montanteIntegralRequisicao (Requisicao _ Anulado) = 0
montanteIntegralRequisicao (Requisicao is _) = sum (map custo is) + 10 -- Alterei o valor fixo de 5 para 10

-- Função que retorna a designacao do primeiro item da requisicao
primeiroItem :: Requisicao -> String
primeiroItem (Requisicao [] _) = "Nenhum item na requisicao."
primeiroItem (Requisicao (i:_) _) = designacao i

-- Exemplo de uso
executar :: IO ()
executar = do
    let itemA = Item "Suco de Frutas" "Suco" 12.5
    let itemB = Item "Agua Mineral" "Agua" 4.5
    let requisicaoA = Requisicao [itemA, itemB] Pendente
    let requisicaoB = Requisicao [] Anulado

    putStrLn ("Custo total da requisicao A: Kz " ++ show (montanteIntegralRequisicao requisicaoA)) -- Alterei a moeda de R$ para Kz
    putStrLn ("Item inicial da requisicao A: " ++ primeiroItem requisicaoA)

    putStrLn ("Custo total da requisicao B: Kz " ++ show (montanteIntegralRequisicao requisicaoB))
    putStrLn ("Item inicial da requisicao B: " ++ primeiroItem requisicaoB)

-- O ponto de entrada principal é 'main', mas a função de execução agora se chama 'executar'
main :: IO ()
main = executar
