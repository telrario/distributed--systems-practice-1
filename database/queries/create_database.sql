-- Creación de la tabla Estudiantes --
DROP TABLE IF EXISTS Estudiantes;
CREATE TABLE Estudiantes (
 id_estudiante INT AUTO_INCREMENT PRIMARY KEY,
 nombre VARCHAR(100),
 fecha_nacimiento DATETIME
);

-- Creación de la tabla Cursos ---
DROP TABLE IF EXISTS Cursos;
CREATE TABLE Cursos (
 id_curso INT AUTO_INCREMENT PRIMARY KEY,
 nombre_curso VARCHAR(100)
);

-- Creación de la tabla Inscripciones --
DROP TABLE IF EXISTS Inscripciones;
CREATE TABLE Inscripciones (
    id_inscripcion INT AUTO_INCREMENT PRIMARY KEY,
    id_estudiante INT,
    id_curso INT,
    fecha_inscripcion DATETIME NULL,
    FOREIGN KEY (id_estudiante) REFERENCES Estudiantes(id_estudiante),
    FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso)
);
