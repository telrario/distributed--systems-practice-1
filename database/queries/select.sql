SELECT Estudiantes.nombre AS 'Estudiante', Cursos.nombre_curso AS 'Curso' 
FROM Inscripciones 
JOIN Estudiantes ON Inscripciones.id_estudiante = Estudiantes.id_estudiante 
JOIN Cursos ON Inscripciones.id_curso = Cursos.id_curso; 
