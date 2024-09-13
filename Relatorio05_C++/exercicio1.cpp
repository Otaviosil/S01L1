#include <iostream>
#include <string>

using namespace std;

class Pessoa {
protected:
    string nome;
    int idade;

public:
    Pessoa(const string& nome, int idade) : nome(nome), idade(idade) {}

    void imprimirNome() const {
        cout << "O nome é: " << nome << endl;
    }

    virtual void imprimirIdade() const {
        cout << "A idade é: " << idade << " anos" << endl;
    }
};

class Professor : public Pessoa {
public:
    Professor(const string& nome, int idade) : Pessoa(nome, idade) {}

    void imprimirIdade() const override {
        cout << "A idade do professor é: " << idade << " anos" << endl;
    }
};

class Aluno : public Pessoa {
private:
    string matricula;

public:
    Aluno(const string& nome, int idade, const string& matricula) 
        : Pessoa(nome, idade), matricula(matricula) {}

    void imprimirIdade() const override {
        cout << "A idade do aluno é: " << idade << " anos" << endl;
    }

    void imprimirMatricula() const {
        cout << "A matrícula do aluno é: " << matricula << endl;
    }
};

int main() {
    Pessoa pessoa("João", 30);
    Professor professor("Maria", 40);
    Aluno aluno("Pedro", 20, "1234");

    cout << "Pessoa:" << endl;
    pessoa.imprimirNome();
    pessoa.imprimirIdade();
    cout << endl;

    cout << "Professor:" << endl;
    professor.imprimirNome();
    professor.imprimirIdade();
    cout << endl;

    cout << "Aluno:" << endl;
    aluno.imprimirNome();
    aluno.imprimirIdade();
    aluno.imprimirMatricula();

    return 0;
}