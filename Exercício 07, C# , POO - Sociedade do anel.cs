using System;

class IntegranteDoGrupo
{
    
    private string apelido;
    private string linhagem;
    private string papel;

    public IntegranteDoGrupo(string apelido, string linhagem, string papel)
    {
        this.apelido = apelido;
        this.linhagem = linhagem;
        this.papel = papel;
    }

    public void Detalhar()
    {
        Console.WriteLine("Identificador: " + apelido);
        Console.WriteLine("Origem: " + linhagem);
        Console.WriteLine("Ocupação: " + papel);
        Console.WriteLine();
    }
}

class ExecucaoPrincipal
{
    static void Main(string[] args)
    {
        IntegranteDoGrupo mentor = new IntegranteDoGrupo("Aragorn", "Humano", "Guardião");
        IntegranteDoGrupo aprendiz = new IntegranteDoGrupo("Legolas", "Elfo", "Arqueiro");

        mentor.Detalhar();
        aprendiz.Detalhar();
    }
}
