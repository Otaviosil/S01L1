class Animal {
    constructor(nome, idade, especie) {
        this.nome = nome;
        this.idade = idade;
        this.especie = especie;
    }

    printInfo() {
        console.log(`Nome: ${this.nome}, Idade: ${this.idade}, Espécie: ${this.especie}`);
    }
}

class Cachorro extends Animal {
    constructor(nome, idade, especie, raca) {
        super(nome, idade, especie);
        this._raca = raca;  // Atributo privado (em JavaScript, não há suporte nativo para atributos privados, mas usamos _ para indicar que é privado)
    }

    printInfo() {
        super.printInfo();
        console.log(`Raça: ${this._raca}`);
    }
}

class Gato extends Animal {
    constructor(nome, idade, especie, cores) {
        super(nome, idade, especie);
        this.cores = cores;  // Array de cores
    }

    printInfo() {
        super.printInfo();
        console.log(`Cores: ${this.cores.join(', ')}`);
    }
}

// Criando um objeto da classe Animal
const animal = new Animal("Atlas", 11, "Felino");
animal.printInfo();

// Criando um objeto da classe Cachorro
const cachorro = new Cachorro("Bongo", 2, "Canino", "Labrador");
cachorro.printInfo();

// Criando um objeto da classe Gato
const gato = new Gato("Nova", 4, "Felino", ["Branco", "Preto"]);
gato.printInfo();