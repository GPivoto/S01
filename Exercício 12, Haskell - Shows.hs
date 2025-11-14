-- Definição do tipo ConjuntoMusical
data ConjuntoMusical = ConjuntoMusical {
    designacao :: String,
    estilo :: String,
    remuneracao :: Double
} deriving (Show)

-- Definição do tipo Ocorrencia
data Situacao = EmCurso | Finalizado | Anulado deriving (Show, Eq)

data Ocorrencia = Ocorrencia {
    conjuntos :: [ConjuntoMusical],
    situacao :: Situacao
} deriving (Show)

-- Função que calcula a despesa integral da ocorrencia
despesaIntegralOcorrencia :: Ocorrencia -> Double
despesaIntegralOcorrencia (Ocorrencia _ Anulado) = 0.0
despesaIntegralOcorrencia (Ocorrencia cm _) =
    let valorBase = sum (map remuneracao cm)
    in valorBase + (valorBase * 0.20)

-- Função que retorna a designacao do conjunto de introducao
conjuntoIntroducao :: Ocorrencia -> String
conjuntoIntroducao (Ocorrencia [] _) = "Nenhuma banda para abrir o evento."
conjuntoIntroducao (Ocorrencia (c:_) _) = "Banda de abertura: " ++ designacao c

-- Função que retorna a designacao do conjunto de conclusao
conjuntoConclusao :: Ocorrencia -> String
conjuntoConclusao (Ocorrencia [] _) = "Nenhuma banda para encerrar o evento."
conjuntoConclusao (Ocorrencia cm _) =
    "Banda de encerramento: " ++ designacao (last cm)

-- Função principal com três ocorrencias
funcaoPrincipal :: IO ()
funcaoPrincipal = do
    let conjunto1 = ConjuntoMusical "The Kokis" "Rock" 5000.0
    let conjunto2 = ConjuntoMusical "Velda Jazz Band" "Jazz" 3500.0
    let conjunto3 = ConjuntoMusical "Gan Metal" "Metal" 7000.0
    let conjunto4 = ConjuntoMusical "Hyru Pop Stars" "Pop" 4000.0

    let ocorrencia1 = Ocorrencia [conjunto1, conjunto2, conjunto3] EmCurso
    let ocorrencia2 = Ocorrencia [conjunto4, conjunto1] Finalizado
    let ocorrencia3 = Ocorrencia [conjunto2, conjunto3] Anulado

    putStrLn "Evento 1 (Ativo):"
    putStrLn (conjuntoIntroducao ocorrencia1)
    putStrLn (conjuntoConclusao ocorrencia1)
    putStrLn ("Custo total: R$" ++ show (despesaIntegralOcorrencia ocorrencia1))

    putStrLn "\nEvento 2 (Encerrado):"
    putStrLn (conjuntoIntroducao ocorrencia2)
    putStrLn (conjuntoConclusao ocorrencia2)
    putStrLn ("Custo total: R$" ++ show (despesaIntegralOcorrencia ocorrencia2))

    putStrLn "\nEvento 3 (Cancelado):"
    putStrLn (conjuntoIntroducao ocorrencia3)
    putStrLn (conjuntoConclusao ocorrencia3)
    putStrLn ("Custo total: R$" ++ show (despesaIntegralOcorrencia ocorrencia3))

-- Redirecionamento para a função principal
main :: IO ()
main = funcaoPrincipal
