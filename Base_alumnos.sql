mysql -u root

CREATE DATABASE alumnos;

USE alumnos;


CREATE TABLE alumnos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombres VARCHAR(50),
    apellidos VARCHAR(50),
    dni INT,
    curso INT,
    FOREIGN KEY (curso) REFERENCES cursos(id)
);

CREATE TABLE cursos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    anio INT,
    curso INT,
    division INT,
    esp ENUM('Automotores','Ciclo Basico', 'Computacion');
    aula INT
);

CREATE TABLE materias (
    id INT PRIMARY KEY AUTO_INCREMENT,
    horas INT,
    profesor VARCHAR(50),
    contraturno BOOLEAN,
    nombre  VARCHAR(50),
    curso INT,
    FOREIGN KEY (curso) REFERENCES cursos(id)
);