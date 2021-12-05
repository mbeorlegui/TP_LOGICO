# CURSADA UNIVERSITARIA

La consigna del TP se encuentra [aqui](https://docs.google.com/document/d/1Z9M0YY8dXWmd_8ANXCFvBen5pUFqTv4G55gbQqXqLuQ/edit#)

Cualquier estudiante universitario ha perdido varias horas intentando seguir el plan de la carrera: “¿Cuáles materias puedo cursar por correlativas?”, “¿Qué opciones de modalidades hay?”, “¿Cuántos finales debo?”; son algunas de las preguntas que nos hacemos en épocas de inscripciones y finales.
Es por eso que nos planteamos desarrollar un programa en Prolog capaz de contestar algunas de estas preguntas y así poder planificar de manera fácil el recorrido de alguna carrera universitaria.

## Materias

Sabemos que una carrera posee muchas materias. Por ahora, de cada una, solamente nos interesa su nombre y la cantidad de horas por semana de cursada. Además hay que tener en cuenta que algunas materias son integradoras.

1. Queremos saber si una materia es pesada. Las materias pesadas son las integradoras de 6 horas por semana y las que sin ser integradoras tienen al menos 4 horas por semana
2. Sin embargo, las materias no se pueden cursar en cualquier orden. Tienen una secuencia determinada por las correlativas. Esto significa que para cursar ciertas materias, es necesario haber cursado otras antes. Se pide conocer:
  - **Las materias iniciales**: son aquellas que no piden ninguna materia para cursarlas.
  - **Todas las materias necesarias para cursar una materia**: tener en cuenta el carácter transitivo de las correlatividades. Por ejemplo, si para cursar *Matemática Superior* es necesario tener cursada **Análisis Matemático II** y, a su vez, para cursar *Análisis Matemático II* es necesario tener cursada *Análisis Matemático I*, entonces dentro de las materias necesarias para cursar Matemática Superior están *Análisis Matemático II* y *Análisis Matemático I*.
  - **Todas las materias que habilita una materia**: o sea, todas aquellas materias que para cursarlas es necesario haber cursado la materia en cuestión. Tener en cuenta la transitividad explicada en el punto anterior.


## Casos de prueba

Cargar la información necesaria para modelar la carrera de Ingeniería en Sistemas de Información de la UTN ([ver anexo](https://docs.google.com/document/d/1Z9M0YY8dXWmd_8ANXCFvBen5pUFqTv4G55gbQqXqLuQ/edit#bookmark=id.mwc3rk3bvu97)).

Probar el correcto funcionamiento de los siguientes casos:

  - Materia pesada:
  
| Materia                   | Resultado esperado                       |
| ------------------------- | ---------------------------------------- |
| Proyecto Final            | Es pesada por ser integradora de 6 horas |
| Sistemas y Organizaciones | No es pesada por más que sea integradora |
| Sistemas Operativos       | Es pesada por tener una cursada larga    |
| Inglés I                  | No es pesada                             |

  - Materias iniciales:
    - Las materias iniciales de la carrera son (11): *Análisis Matemático I*, *Álgebra y Geometría Analítica*, *Matemática Discreta*, *Sistemas y Organizaciones*, *Algoritmos y Estructuras de Datos*, *Arquitectura de Computadoras*, *Ingeniería y Sociedad*, *Química*, *Física I*, *Inglés I* y *Sistemas de Representación*.

  - Materias necesarias para cursar:

| Materia                  | Resultado esperado                                                                                                   |
| ------------------------ | -------------------------------------------------------------------------------------------------------------------- |
| Matemática Discreta      | No tiene materias necesarias para cursarla                                                                           |
| Física II                | Necesita tener cursada Física I por correlatividad (directa)                                                         |
| Administración Gerencial | Necesita tener cursada Sistemas y Organizaciones por correlatividad (indirecta)                                      |
| Teoría de control        | Necesita: Química, Matemática Superior, Análisis Matemático II, Análisis Matemático I, Álgebra y Geometría Analítica |

  - Materias que habilita una materia:

| Materia        | Resultado esperado                                    |
| -------------- | ----------------------------------------------------- |
| Comunicaciones | Habilita cursar Redes de Información y Proyecto Final |


## Estudiantes 

Cada estudiante va cursando materias y rindiendo finales. Cuando termina una cursada, todo el trabajo realizado se resume en una nota numérica (entero). Si la cursada está aprobada (6 o más) entonces:
  - Debe rendir un examen final para aprobar la materia, el cual también posee una nota numérica. Si la nota es de aprobación, significa que finalmente aprobó la materia.
  - O, si se sacó una buena nota (mayor a 7), queda exento del final y la materia se considera aprobada directamente.
  - Si la cursada no fue aprobada, puede cursarla nuevamente en otra ocasión.

También hay que tener en cuenta que algunas materias ofrecen la posibilidad de rendir libre, por lo que se puede rendir directamente el final de una materia sin haberla cursado.

3. Queremos conocer:
  - A) Las materias cursadas de un estudiante. Tener en cuenta tanto las materias que posean una cursada aprobada como aquellas que hayan aprobado final libre.
  - B) Las materias aprobadas por un estudiante. Tener en cuenta tanto las materias con final aprobado como aquellas aprobadas de forma libre o por promoción