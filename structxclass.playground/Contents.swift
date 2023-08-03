import UIKit

// Class

// Variaveis e constantes
// criar metodo
// trabalhar com heranca
// implementar protocolos...

class Pessoa {
    // MARK: - Atributos
    
    var nome: String
    var sobrenome: String
    
    // MARK: - Metodo construtor
    
    init(nome: String, sobrenome: String) {
        self.nome = nome
        self.sobrenome = sobrenome
    }
}

let aluno = Pessoa(nome: "Diego", sobrenome: "Silva")

let novoAluno = aluno

print("Class - Alunos: --")
print(aluno.nome)
print(novoAluno.nome)

aluno.nome = "Alberto"
print("Class - Apos alteracao: --")
print(aluno.nome)
print(novoAluno.nome)

// Classe: TRabalhando com a referencia do objeto - reference type

//Struct

struct Person {
    // MARK: - Atributos
    
    var nome: String
    var sobrenome: String
    
    // varivel computada, antes de retornar algo faz alguma logica
    var nomeCompleto: String {
        return nome + " " + sobrenome
    }
}

var student = Person(nome: "Diego", sobrenome: "Silva")
var newStudent = student

print("Struct - Alunos: --")
print(student.nome)
print(student.nomeCompleto)
print(newStudent.nome)
print(newStudent.nomeCompleto)

student.nome = "Felipe"

print("Struct - Apos alteracao: --")
print(student.nome)
print(student.nomeCompleto)
print(newStudent.nome)
print(newStudent.nomeCompleto)

// Struct => copia do valor => Value type

// Struct nao tem heranca, nao tem como herdar, e sim protocol
//struct People : Person {
//}

protocol View {
    var body: View { get }
}

struct ContentView: View {
    var body: View
    
    
}
