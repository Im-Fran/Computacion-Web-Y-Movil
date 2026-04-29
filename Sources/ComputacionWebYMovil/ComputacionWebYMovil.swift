import ArgumentParser

@main
struct ComputacionWebYMovil {

    static func main() {
        var notas: [Double] = []
        
        print("¡Hola! Por favor ingresa tu nombre")
        let nombreEstudiante: String? = readLine()
        guard nombreEstudiante?.isEmpty == false else {
            print("Debes ingresar un nombre!")
            return
        }
        
        print("Por favor ingresa tus notas (una por línea, escribe 'salir' para terminar): ")

        while true {
            if let linea = readLine(), !linea.isEmpty {
                if linea.lowercased() == "salir" {
                    break
                }

                if let nota = Double(linea) {
                    if nota >= 1.0 && nota <= 7.0 {
                        notas.append(nota)
                        print("Nota agregada: \(nota)")
                    } else {
                        print("Error: La nota debe estar entre 1.0 y 7.0")
                    }
                } else {
                    print("Error: Ingresa un número válido")
                }
            } else {
                break
            }
        }

        mostrarResumen(nombreEstudiante: nombreEstudiante!, notas: notas)
    }

    private static func mostrarResumen(nombreEstudiante: String, notas: [Double]) {
        guard !notas.isEmpty else {
            print("\nNo se ingresaron notas.")
            return
        }

        let promedio = notas.reduce(0, +) / Double(notas.count)
        let notaMaxima = notas.max() ?? 0
        let notaMinima = notas.min() ?? 0

        print("\n--- Resumen de Notas ---")
        print("Estudiante: \(nombreEstudiante)")
        print("Total de notas: \(notas.count)")
        print("Promedio: \(String(format: "%.2f", promedio))")
        print("Nota máxima: \(notaMaxima)")
        print("Nota mínima: \(notaMinima)")
        let aprobacion: String
        if promedio >= 4.0 {
            aprobacion = "Aprobado"
        } else {
            aprobacion = "Reprobado"
        }
        print("Aprobación: \(aprobacion)")
    }

}
