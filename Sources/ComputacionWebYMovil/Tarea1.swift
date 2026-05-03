@main
struct Tarea1 {

    static func main() {
        let nombre: String = "Francisco Solis"
        let notas: [Double] = [5.0, 4.5, 3.0, 7.0]

        var promedio: Double = 0.0
        for nota: Double in notas {
            promedio += nota
        }

        promedio = promedio / Double(notas.count)
        print("El promedio de \(nombre) es: \(promedio)")
        print("Está aprobado? \(promedio >= 4.0 ? "Sí" : "No")")
    }

}
