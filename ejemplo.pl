
%% Materias

% materia(Nombre, CantidadDeHoras)
materia(analisis_Matematico_I, 5).
materia(algebra_y_Geometria_Analitica, 5).
materia(matematica_Discreta, 3).
materia(sistemas_y_Organizaciones, 3).
materia(algoritmo_y_Estructuras_de_Datos, 5).
materia(arquitectura_de_Computadoras, 4).
materia(ingenieria_y_Sociedad, 2).
materia(quimica, 3).
materia(fisica_I, 5).
materia(analisis_Matematico_II, 5).
materia(probabilidad_y_Estadistica, 3).
materia(analisis_de_Sistemas, 6).
materia(sintaxis_y_Semantica_de_los_Lenguajes, 4).
materia(paradigmas_de_Programacion, 4).
materia(ingles_I, 2).
materia(sistemas_de_Representacion, 3).
materia(sistemas_Operativos, 4).
materia(disenio_de_Sistemas, 6).
materia(fisica_II, 5).
materia(matematica_Superior, 4).
materia(gestion_de_Datos, 4).
materia(legislacion, 2).
materia(economia, 3).
materia(ingles_II, 2).
materia(redes_de_Informacion, 4).
materia(administracion_de_Recursos, 6).
materia(investigacion_Operativa, 5).
materia(simulacion, 4).
materia(ingenieria_de_Software, 3).
materia(teoria_de_Control, 3).
materia(comunicaciones, 4).
materia(proyecto_Final, 6).
materia(inteligencia_Artificial, 3).
materia(administracion_Gerencial, 3).
materia(sistemas_de_Gestion, 4).

% esMateriaIntegradora(Materia)
esMateriaIntegradora(sistemas_y_Organizaciones).
esMateriaIntegradora(analisis_de_Sistemas).
esMateriaIntegradora(disenio_de_Sistemas).
esMateriaIntegradora(administracion_de_Recursos).
esMateriaIntegradora(proyecto_Final).


% esCorrelativaDe(MateriaNecesaria, MateriaHabilitada)
esCorrelativaDe(sistemas_y_Organizaciones, analisis_de_Sistemas).
esCorrelativaDe(algoritmos_y_Estructuras_de_Datos, analisis_de_Sistemas).
esCorrelativaDe(analisis_Matematico_I, analisis_Matematico_II).
esCorrelativaDe(algebra_y_Geometria_Analitica, analisis_Matematico_II).
esCorrelativaDe(matematica_Discreta, sintaxis_y_Semantica_de_los_Lenguajes).
esCorrelativaDe(algoritmos_y_Estructuras_de_Datos, sintaxis_y_Semantica_de_los_Lenguajes).
esCorrelativaDe(matematica_Discreta, paradigmas_de_Programacion).
esCorrelativaDe(algoritmos_y_Estructuras_de_Datos, paradigmas_de_Programacion).
esCorrelativaDe(analisis_Matematico_I, probabilidad_y_Estadistica).
esCorrelativaDe(algebra_y_Geometria_Analitica, probabilidad_y_Estadistica).
esCorrelativaDe(analisis_de_Sistemas, disenio_de_Sistemas).
esCorrelativaDe(paradigmas_de_Programacion, disenio_de_Sistemas).
esCorrelativaDe(matematica_Discreta, sistemas_Operativos).
esCorrelativaDe(algoritmos_y_Estructuras_de_Datos, sistemas_Operativos).
esCorrelativaDe(arquitectura_de_Computadoras, sistemas_Operativos).
esCorrelativaDe(analisis_Matematico_I, fisica_II).
esCorrelativaDe(fisica_I, fisica_II).
esCorrelativaDe(analisis_de_Sistemas, economia).
esCorrelativaDe(analisis_de_Sistemas, gestion_de_Datos).
esCorrelativaDe(paradigmas_de_Programacion, gestion_de_Datos).
esCorrelativaDe(sintaxis_y_Semantica_de_los_Lenguajes, gestion_de_Datos).
esCorrelativaDe(ingles_I, ingles_II).
esCorrelativaDe(analisis_Matematico_II, matematica_Superior).
esCorrelativaDe(analisis_de_Sistemas, legislacion).
esCorrelativaDe(ingenieria_y_Sociedad, legislacion).
esCorrelativaDe(disenio_de_Sistemas, administracion_de_Recursos).
esCorrelativaDe(sistemas_Operativos, administracion_de_Recursos).
esCorrelativaDe(economia, administracion_de_Recursos).
esCorrelativaDe(probabilidad_y_Estadistica, ingenieria_de_Software).
esCorrelativaDe(disenio_de_Sistemas, ingenieria_de_Software).
esCorrelativaDe(gestion_de_Datos, ingenieria_de_Software).
esCorrelativaDe(quimica, teoria_de_Control).
esCorrelativaDe(matematica_Superior, teoria_de_Control).
esCorrelativaDe(arquitectura_de_Computadoras, comunicaciones).
esCorrelativaDe(analisis_Matematico_II, comunicaciones).
esCorrelativaDe(fisica_II, comunicaciones).
esCorrelativaDe(sistemas_Operativos, redes_de_Informacion).
esCorrelativaDe(comunicaciones, redes_de_Informacion).
esCorrelativaDe(probabilidad_y_Estadistica, investigacion_Operativa).
esCorrelativaDe(matematica_Superior, investigacion_Operativa).
esCorrelativaDe(probabilidad_y_Estadistica, simulacion).
esCorrelativaDe(matematica_Superior, simulacion).
esCorrelativaDe(investigacion_Operativa, inteligencia_Artificial).
esCorrelativaDe(simulacion, inteligencia_Artificial).
esCorrelativaDe(administracion_de_Recursos, administracion_Gerencial).
esCorrelativaDe(investigacion_Operativa, administracion_Gerencial).
esCorrelativaDe(administracion_de_Recursos, sistemas_de_Gestion).
esCorrelativaDe(investigacion_Operativa, sistemas_de_Gestion).
esCorrelativaDe(simulacion, sistemas_de_Gestion).
esCorrelativaDe(legislación, proyecto_Final).
esCorrelativaDe(administracion_de_Recursos, proyecto_Final).
esCorrelativaDe(redes_de_Informacion, proyecto_Final).
esCorrelativaDe(ingenieria_de_Software, proyecto_Final).

% Punto 1
% esMateriaPesada(Materia)
esMateriaPesada(Materia):-
  tieneCargaHorariaMayorA(Materia, 6),
  esMateriaIntegradora(Materia).

esMateriaPesada(Materia):-
  tieneCargaHorariaMayorA(Materia, 4),
  not(esMateriaIntegradora(Materia)).

tieneCargaHorariaMayorA(Materia, CargaHorariaMinima):-
  materia(Materia, CargaHoraria),
  CargaHoraria >= CargaHorariaMinima.

% Punto 2 A
% esMateriaInicial(Materia)
esMateriaInicial(Materia):-
  materia(Materia, _),
  not(esCorrelativaDe(_, Materia)).

% Punto 2 B
% necesitaParaCursar(Materia, MateriaNecesaria)
necesitaParaCursar(MateriaHabilitada, MateriaNecesaria):-
  esCorrelativaDe(MateriaNecesaria, MateriaHabilitada).
necesitaParaCursar(MateriaHabilitada, MateriaNecesariaAnterior):-
  esCorrelativaDe(MateriaNecesaria, MateriaHabilitada),
  necesitaParaCursar(MateriaNecesaria, MateriaNecesariaAnterior).

% Punto 2 C
% habilita(MateriaNecesaria, MateriaHabilitada)
habilita(MateriaNecesaria, MateriaHabilitada):-
  necesitaParaCursar(MateriaHabilitada, MateriaNecesaria).

%% Estudiantes

% curso(Estudiante, Materia, Nota, Modalidad).
curso(vero, Materia, 8, anual(2015)):-
  esMateriaInicial(Materia).
curso(alan, sistemas_y_Organizaciones, 6, anual(2015)).
curso(alan, analisis_Matematico_I, 6, verano(2016)).
curso(alan, analisis_de_Sistemas, 2, anual(2016)).
curso(alan, analisis_de_Sistemas, 9, anual(2017)).
curso(alan, fisica_I, 2, cuatrimestral(2016, 1)).

% rindio(Estudiante, Materia, Nota).
rindio(vero, ingles_II, 10).
rindio(alan, sistemas_y_Organizaciones, 4).
rindio(alan, ingles_I, 2).

% Punto 3 A
% cursadaPor(Materia, Estudiante)
cursadaPor(Materia, Estudiante):-
  curso(Estudiante, Materia, Nota, _),
  Nota >= 6.
cursadaPor(Materia, Estudiante):-
  aproboFinalDe(Estudiante, Materia),
  not(curso(Estudiante, Materia, _, _)).

aproboFinalDe(Estudiante, Materia):-
  rindio(Estudiante, Materia, Nota),
  Nota >= 6.

% Punto 3 B
% aprobadaPor(Materia, Estudiante)
aprobadaPor(Materia, Estudiante):-
  promociono(Estudiante, Materia).
aprobadaPor(Materia, Estudiante):-
  aproboFinalDe(Estudiante, Materia).

promociono(Estudiante, Materia):-
  curso(Estudiante, Materia, Nota, _),
  Nota >= 8.

%% Modalidades

curso(brian, sistemas_y_Organizaciones, 8, anual(2015)).
curso(brian, quimica, 5, cuatrimestral(2015, 1)).
curso(brian, quimica, 5, cuatrimestral(2015, 2)).
curso(brian, fisica_I, 7, verano(2016)).

% Punto 4
% cursoEnElAnio(Estudiante, Materia, Anio)
cursoEnElAnio(Estudiante, Materia, Anio):-
  curso(Estudiante, Materia, _, Modalidad),
  anioDeCursada(Modalidad, Anio).

anioDeCursada(anual(Anio), Anio).
anioDeCursada(cuatrimestral(Anio, _), Anio).
anioDeCursada(verano(AnioCalendario), AnioAcademico):-
  AnioAcademico is AnioCalendario - 1.


% Punto 5
% recurso(Estudiante, Materia)
recurso(Estudiante, Materia):-
  curso(Estudiante, Materia, _, UnaModalidad),
  curso(Estudiante, Materia, _, OtraModalidad),
  UnaModalidad \= OtraModalidad.

%% Perfiles de estudiantes

% estudiante con muchas recursadas
curso(mateo, quimica, 2, anual(2016)).
curso(mateo, quimica, 3, cuatrimestral(2017, 1)).
curso(mateo, quimica, 4, cuatrimestral(2017, 2)).
curso(mateo, quimica, 5, anual(2018)).
curso(mateo, fisica_I, 2, verano(2018)).
curso(mateo, fisica_I, 2, anual(2018)).

% estudiante con algunas recursadas
curso(felipe, quimica, 2, anual(2016)).
curso(felipe, quimica, 3, cuatrimestral(2017, 2)).
curso(felipe, fisica_I, 2, anual(2017)).
curso(felipe, fisica_I, 10, cuatrimestral(2018, 1)).

% estudiante veraniego
curso(matias, quimica, 6, anual(2016)).
curso(matias, fisica_I, 6, verano(2017)).
curso(matias, matematica_Discreta, 2, anual(2017)).
curso(matias, matematica_Discreta, 8, verano(2018)).

% estudiante atr
curso(alejo, quimica, 10, cuatrimestral(2016, 1)).
curso(alejo, fisica_I, 10, cuatrimestral(2016, 2)).


% Punto 6 A
% sinDescanso(Estudiante)
sinDescanso(Estudiante):-
  esEstudiante(Estudiante),
  forall(recurso(Estudiante, Materia), volvioACursarlaInmediatamenteDespues(Estudiante, Materia)).

volvioACursarlaInmediatamenteDespues(Estudiante, Materia):-
  curso(Estudiante, Materia, _, UnaModalidad),
  curso(Estudiante, Materia, _, OtraModalidad),
  UnaModalidad \= OtraModalidad,
  sonModalidadesConsecutivas(UnaModalidad, OtraModalidad).

sonModalidadesConsecutivas(cuatrimestral(Anio, 1), cuatrimestral(Anio, 2)).
sonModalidadesConsecutivas(ModalidadAnterior, ModalidadSiguiente):-
  modalidadDelFinDelAnio(ModalidadAnterior),
  anioDeCursada(ModalidadAnterior, Anio),
  modalidadDelAnioSiguiente(ModalidadSiguiente, Anio).

modalidadDelFinDelAnio(cuatrimestral(_, 2)).
modalidadDelFinDelAnio(anual(_)).
modalidadDelFinDelAnio(verano(_)).

modalidadDelAnioSiguiente(anual(AnioSiguiente), Anio):-
  AnioSiguiente is Anio + 1.
modalidadDelAnioSiguiente(cuatrimestral(AnioSiguiente, 1), Anio):-
  AnioSiguiente is Anio + 1.

esEstudiante(Estudiante):-
  curso(Estudiante, _, _, _).

% Punto 6 B
% invictus(Estudiante)
invictus(Estudiante):-
  esEstudiante(Estudiante),
  not(recurso(Estudiante, _)).

% Punto 6 C
% repechaje(Estudiante)
repechaje(Estudiante):-
  esEstudiante(Estudiante),
  cursadaPor(Materia, Estudiante),
  curso(Estudiante, Materia, _, anual(Anio)),
  SiguienteAnio is Anio + 1,
  curso(Estudiante, Materia, _, cuatrimestral(SiguienteAnio, 1)),
  promociono(Estudiante, Materia).

% Punto 6 D
% buenasCursadas(Estudiante)
buenasCursadas(Estudiante):-
  esEstudiante(Estudiante),
  forall(curso(Estudiante, Materia, _, _), promociono(Estudiante, Materia)).
  

% Punto 6 E
% seLoQueHicisteElVeranoPasado(Estudiante)
seLoQueHicisteElVeranoPasado(Estudiante):-
  esEstudiante(Estudiante),
  forall(cursoEnElAnio(Estudiante, _, Anio), cursoUnaMateriaEseVerano(Estudiante, Anio)).

cursoUnaMateriaEseVerano(Estudiante, AnioAcademico):-
  curso(Estudiante, _, _, verano(AnioCalendario)),
  AnioAcademico is AnioCalendario - 1.


% Punto 7
% poseeUnicoPerfil(Estudiante)
poseeUnicoPerfil(Estudiante):-
  esEstudiante(Estudiante),
  not(tieneMultiplesPerfiles(Estudiante)).

tieneMultiplesPerfiles(Estudiante):-
  tienePerfil(Estudiante, UnPerfil),
  tienePerfil(Estudiante, OtroPerfil),
  UnPerfil \= OtroPerfil.

% tienePerfil(Estudiante, UnPerfil)
tienePerfil(Estudiante, repechaje):-
  repechaje(Estudiante).
tienePerfil(Estudiante, invictus):-
  invictus(Estudiante).
tienePerfil(Estudiante, buenasCursadas):-
  buenasCursadas(Estudiante).
tienePerfil(Estudiante, sinDescanso):-
  sinDescanso(Estudiante).
tienePerfil(Estudiante, seLoQueHicisteElVeranoPasado):-
  seLoQueHicisteElVeranoPasado(Estudiante).

%% Desempeño academico

% Punto 8
% desempenioAcademico(Estudiante, Desempenio)
desempenioAcademico(Estudiante, Desempenio):-
  esEstudiante(Estudiante),
  findall(Valoracion, tieneEnLaMateriaUnaValoracionDe(Estudiante, _, Valoracion), Valoraciones),
  promedioDeValoraciones(Valoraciones, Desempenio).

tieneEnLaMateriaUnaValoracionDe(Estudiante, Materia, Valoracion):-
  curso(Estudiante, Materia, Nota, Modalidad),
  modalidadDaUnaValoracionDe(Nota, Modalidad, Valoracion).

modalidadDaUnaValoracionDe(Nota, anual(_), Nota).
modalidadDaUnaValoracionDe(Nota, cuatrimestral(_, Cuatrimestre), Valoracion):-
  Valoracion is Nota - Cuatrimestre.
modalidadDaUnaValoracionDe(Nota, verano(AnioCalendario), Valoracion):-
  not(even(AnioCalendario)),
  Valoracion is Nota / 2.
modalidadDaUnaValoracionDe(_, verano(AnioCalendario), 5):-
  even(AnioCalendario).

even(X) :- 0 is mod(X, 2).

promedioDeValoraciones(Valoraciones, Promedio):-
  length(Valoraciones, CantidadDeValoraciones),
  sumlist(Valoraciones, SumaDeValoraciones),
  Promedio is SumaDeValoraciones / CantidadDeValoraciones.

% Funciona para brian(5), vero(8), alejo(8.5) y matias(4)