using System;
using System.Collections.Generic;

class Habilidade
{
    public string Denominacao { get; set; }

    public Habilidade(string denominacao)
    {
        Denominacao = denominacao;
    }
}

class LivroDeMagia
{
    private List<Habilidade> tecnicas = new List<Habilidade>();


    public void InserirHabilidade(Habilidade tecnica)
    {
        tecnicas.Add(tecnica);
    }

    public void MostrarHabilidades()
    {
        Console.WriteLine("Feitiços no Grimório:");
        foreach (var t in tecnicas)
        {
            Console.WriteLine("- " + t.Denominacao);
        }
    }
}

class Acessorio
{
    public string NomeAcessorio { get; set; }

    public Acessorio(string nomeAcessorio)
    {
        NomeAcessorio = nomeAcessorio;
    }
}

class Conjuradora
{
    public string Apelido { get; set; }
    public LivroDeMagia Compendio { get; private set; }
    public List<Acessorio> Utensilios { get; private set; }

    public Conjuradora(string apelido, List<Acessorio> utensilios)
    {
        Apelido = apelido;
        Compendio = new LivroDeMagia();
        Utensilios = utensilios;
    }
}

class Iniciador
{
    static void Main(string[] args)
    {
        
        List<Acessorio> listaUtensilios = new List<Acessorio>
        {
            new Acessorio("Lanterna"),
            new Acessorio("Capacete"),
            new Acessorio("Mapa Antigo")
        };

        Conjuradora heroi = new Conjuradora("Frieren", listaUtensilios);

        heroi.Compendio.InserirHabilidade(new Habilidade("Bola de Fogo"));
        heroi.Compendio.InserirHabilidade(new Habilidade("Escudo de Gelo"));

        Console.WriteLine("Maga: " + heroi.Apelido);
        heroi.Compendio.MostrarHabilidades();

        Console.WriteLine("\nFerramentas de Sobrevivência:");
        foreach (var item in heroi.Utensilios)
        {
            Console.WriteLine("- " + item.NomeAcessorio);
        }
    }
}
