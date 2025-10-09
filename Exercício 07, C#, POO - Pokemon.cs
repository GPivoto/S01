using System;
using System.Collections.Generic;

class CriaturaDeBolso
{
    public string Rotulo { get; set; }

    public CriaturaDeBolso(string rotulo)
    {
        Rotulo = rotulo;
    }

    public virtual void ExecutarGolpe()
    {
        Console.WriteLine(Rotulo + " realiza um ataque genérico!");
    }
}

class MonstroCombustao : CriaturaDeBolso
{
    public MonstroCombustao(string rotulo) : base(rotulo) { }

    
    public override void ExecutarGolpe()
    {
        Console.WriteLine(Rotulo + " lança uma rajada de fogo!");
    }
}


class MonstroAquatico : CriaturaDeBolso
{
    public MonstroAquatico(string rotulo) : base(rotulo) { }


    public override void ExecutarGolpe()
    {
        Console.WriteLine(Rotulo + " lança um jato de água!");
    }
}

class ModuloPrincipal
{
    static void Main(string[] args)
    {
        
        List<CriaturaDeBolso> unidades = new List<CriaturaDeBolso>();

        
        unidades.Add(new MonstroCombustao("Charizard"));
        unidades.Add(new MonstroAquatico("Blastoise"));

        foreach (CriaturaDeBolso unidade in unidades)
        {
            unidade.ExecutarGolpe();
        }
    }
}
