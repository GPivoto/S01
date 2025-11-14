-- Definição do tipo Procedimento
data Procedimento = Procedimento {
    designacao :: String,
    modalidade :: String,
    custoInicial :: Double
} deriving (Show)

-- Definição do tipo Processamento
data Estado = Processando | Concluido | Anulado deriving (Show, Eq)

data Processamento = Processamento {
    procedimentos :: [Procedimento],
    estadoAtual :: Estado
} deriving (Show)

-- Função que calcula o adicional/dedução mística
adicionalMistico :: [Procedimento] -> Double
adicionalMistico pds =
    let montante = sum (map custoInicial pds)
        montanteComAdicional = if length pds > 3 then montante * 1.25 else montante
    in if montanteComAdicional > 500 then montanteComAdicional * 0.90 else montanteComAdicional

-- Função que calcula o valor de fecho do processamento usando guards
valorDeFechoProcessamento :: Processamento -> Double
valorDeFechoProcessamento (Processamento _ Anulado) = 0.0
valorDeFechoProcessamento (Processamento pds _) = adicionalMistico pds

-- Função que descreve o primeiro procedimento
detalhePrimeiroProcedimento :: Processamento -> String
detalhePrimeiroProcedimento (Processamento [] _) = "Nenhum servico no atendimento."
detalhePrimeiroProcedimento (Processamento (pd:_) _) = "Primeiro servico: " ++ designacao pd ++ " (" ++ modalidade pd ++ ")"

-- Main com demonstracoes variadas
principal :: IO ()
principal = do
    let pd1 = Procedimento "Banho Relaxante" "Banho" 120.0
    let pd2 = Procedimento "Massagem Profunda" "Massagem" 200.0
    let pd3 = Procedimento "Banquete Ritual" "Banquete" 300.0
    let pd4 = Procedimento "Esfoliacao" "Banho" 80.0
    let pd5 = Procedimento "Aromaterapia" "Massagem" 60.0

    -- Processamento em andamento
    let pmt1 = Processamento [pd1, pd2] Processando

    -- Processamento finalizado
    let pmt2 = Processamento [pd2, pd3, pd4, pd5] Concluido

    -- Processamento cancelado (qualquer lista -> valor deve ser 0.0)
    let pmt3 = Processamento [pd1, pd3] Anulado

    putStrLn "Atendimento 1 (EmAndamento):"
    putStrLn (detalhePrimeiroProcedimento pmt1)
    putStrLn ("Valor final: R$" ++ show (valorDeFechoProcessamento pmt1))

    putStrLn "\nAtendimento 2 (Finalizado):"
    putStrLn (detalhePrimeiroProcedimento pmt2)
    putStrLn ("Valor final: R$" ++ show (valorDeFechoProcessamento pmt2))

    putStrLn "\nAtendimento 3 (Cancelado):"
    putStrLn (detalhePrimeiroProcedimento pmt3)
    putStrLn ("Valor final: R$" ++ show (valorDeFechoProcessamento pmt3))

-- Redirecionamento para a função principal
main :: IO ()
main = principal
