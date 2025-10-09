using System;

abstract class CriaturaNoturna
{
    public string Identificador { get; set; }

    public CriaturaNoturna(string identificador)
    {
        Identificador = identificador;
    }

    public virtual void Deslocar()
    {
        Console.WriteLine(Identificador + "se move nas sombras...");
    }
}

class CadaverReanimado : CriaturaNoturna
{
    public CadaverReanimado(string identificador) : base(identificador) { }

    public override void Deslocar()
    {
        Console.WriteLine(Identificador + " anda lentamente, arrastando os pés...");
    }
}

class SombraEtarea : CriaturaNoturna
{
    public SombraEtarea(string identificador) : base(identificador) { }

    public override void Deslocar()
    {
        Console.WriteLine(Identificador + " desliza rapidamente pelo ar, emitindo um som assustador...");
    }
}

class PontoDePartida
{
    static void Main(string[] args)
    {
        CriaturaNoturna[] entidades = new CriaturaNoturna[]
        {
            new CadaverReanimado("Zumbi Lerdo"),
            new SombraEtarea("Espectro Rápido")
        };

        foreach (CriaturaNoturna entidade in entidades)
        {
            entidade.Deslocar();
        }
    }
}
