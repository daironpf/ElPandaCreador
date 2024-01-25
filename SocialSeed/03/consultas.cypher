// Lista de usuarios para crear
CREATE (:Usuario {nombre: 'Juan Pérez González', altura: 1.75, fechaDeNacimiento: datetime('1990-05-15')});
CREATE (:Usuario {nombre: 'Ana García López', altura: 1.60, fechaDeNacimiento: datetime('1985-09-20')});
CREATE (:Usuario {nombre: 'Carlos Rodríguez Martínez', altura: 1.80, fechaDeNacimiento: datetime('1992-03-10')});
CREATE (:Usuario {nombre: 'María Torres Ruiz', altura: 1.65, fechaDeNacimiento: datetime('1988-11-05')});
CREATE (:Usuario {nombre: 'Pedro Sánchez Fernández', altura: 1.70, fechaDeNacimiento: datetime('1995-07-25')});
CREATE (:Usuario {nombre: 'Dai María Pérez Frías', altura: 1.64, fechaDeNacimiento: datetime('2000-01-26')});
CREATE (:Usuario {nombre: 'Miguel López Díaz', altura: 1.85, fechaDeNacimiento: datetime('1980-12-12')});
CREATE (:Usuario {nombre: 'Carmen Martínez Castro', altura: 1.62, fechaDeNacimiento: datetime('1993-06-30')});
CREATE (:Usuario {nombre: 'Javier Ruiz Gutiérrez', altura: 1.75, fechaDeNacimiento: datetime('1987-04-08')});
CREATE (:Usuario {nombre: 'Rosa González Pérez', altura: 1.60, fechaDeNacimiento: datetime('1994-09-03')});
CREATE (:Usuario {nombre: 'David Fernández López', altura: 1.78, fechaDeNacimiento: datetime('1983-01-22')});
CREATE (:Usuario {nombre: 'Sara Herrera Torres', altura: 1.68, fechaDeNacimiento: datetime('1997-08-14')});

// Todos los usuarios con altura mayor a 1.70
// variable
WITH 1.70 as _altura
// consulta - buscar usuarios que su altura sea > _altura
MATCH(u:Usuario) // 12 usuarios
WHERE u.altura > _altura // 5 usuarios
// retorno
RETURN u

// Mayores o iguales a 30
WITH 30 as _edad,
    datetime() as ahora
MATCH(u:Usuario) // 12 usuarios
    WHERE date(ahora).year - u.fechaDeNacimiento.year >= _edad
RETURN u 

// año_actual =  2024 *
// año_fechaDeNacimiento = 1990 *
// edad_actual = 2024 - 1990 = 34

// Nombre tenga María
WITH 'María' as _nombre
MATCH(u:Usuario)
WHERE u.nombre CONTAINS _nombre 
RETURN u.nombre