using System;

public class Cachorro
{
    public string Nome { get; set; }
    public int Idade { get; set; }

    public Cachorro(string nome, int idade)
    {
        Nome = nome;
        Idade = idade;
    }

    public void MostrarNome()
    {
        Console.WriteLine("O nome do cachorro é: " + Nome);
    }

    public virtual void MostrarIdade()
    {
        Console.WriteLine("A idade do cachorro é: " + Idade);
    }
}

public class CachorroGrande : Cachorro
{
    private string tamanho;

    public CachorroGrande(string nome, int idade, string tamanho) : base(nome, idade)
    {
        this.tamanho = tamanho;
    }

    public override void MostrarIdade()
    {
        Console.WriteLine("A idade do cachorro grande é: " + Idade);
    }

    public void MostrarTamanho()
    {
        Console.WriteLine("O tamanho do cachorro é: " + tamanho);
    }
}

public class CachorroPequeno : Cachorro
{
    public CachorroPequeno(string nome, int idade) : base(nome, idade)
    {
    }

    public override void MostrarIdade()
    {
        Console.WriteLine("A idade do cachorro pequeno é: " + Idade);
    }
}

class Program
{
    static void Main(string[] args)
    {
        Cachorro cachorro = new Cachorro("Jimbo", 5);
        CachorroPequeno cachorroPequeno = new CachorroPequeno("Bilu", 2);
        CachorroGrande cachorroGrande = new CachorroGrande("Kenai", 7, "Grande");

        cachorro.MostrarNome();
        cachorro.MostrarIdade();

        cachorroPequeno.MostrarNome();
        cachorroPequeno.MostrarIdade();

        cachorroGrande.MostrarNome();
        cachorroGrande.MostrarIdade();
        cachorroGrande.MostrarTamanho();
    }
}