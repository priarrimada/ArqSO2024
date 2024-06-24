Trabajo practico 3:
- 1)a) Se puede notar una reduccion en el tiempo de ejecucion, cuando ejecuto el archivo conhilos.py, a comparacion del archivo sinhilos.py  que es mas lento. No, no es predecible.
- 1)b) Los tiempos de ejecucion entre los archivos de mi compañero y el mio son relativamente similares, la diferencia puede deberse a los distintos hardwares, y otras situaciones que desconozco. Aun asi el resultado es el mismo, y me refiero a que en el caso de mi compañero
y el mio el archivo con hilos fue mas rapido que el archivo sin hilos.
- 1)c) El programa tiene dos hilos paralelos: uno suma y otro resta usando una variable global llamada acumulador, que es una zona crítica. Sin control de concurrencia, ambos hilos compiten por modificar esta variable, causando una race condition. Esto da resultados incorrectos, ya que ambos hilos acceden y alteran el acumulador simultáneamente sin sincronización. Descomentar ciertas líneas de código introduce un retraso que hace la race condition más evidente, pero el problema persiste. La falta de control sobre el acceso concurrente a la zona crítica provoca errores en el valor final del acumulador.


- 2)A)
<a href="./TP3/hamburguesas-corregido.c">codigo corregido</a>

- 2)B)
<img src="./TP3/TP3 Punto 2b.png" alt="">