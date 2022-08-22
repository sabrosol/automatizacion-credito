USE db_solicitudes;

REPLACE INTO GENERO VALUES('M', 'Masculino');
REPLACE INTO GENERO VALUES('F', 'Femenino');
REPLACE INTO GENERO VALUES('X', 'No Binario');

REPLACE INTO TIPO_RESIDENCIA VALUES('F', 'Familiar');
REPLACE INTO TIPO_RESIDENCIA VALUES('P', 'Propia sin Hipoteca');
REPLACE INTO TIPO_RESIDENCIA VALUES('H', 'Propia con Hipoteca');
REPLACE INTO TIPO_RESIDENCIA VALUES('A', 'Arrendada');

REPLACE INTO ACTIVIDAD_ECONOMICA VALUES(1, 'Jubilado');
REPLACE INTO ACTIVIDAD_ECONOMICA VALUES(2, 'Empleado');
REPLACE INTO ACTIVIDAD_ECONOMICA VALUES(3, 'Transportador');
REPLACE INTO ACTIVIDAD_ECONOMICA VALUES(4, 'Independiente');
REPLACE INTO ACTIVIDAD_ECONOMICA VALUES(8, 'Hogar');

REPLACE INTO TIPO_CONTRATO VALUES('F', 'Fijo');
REPLACE INTO TIPO_CONTRATO VALUES('I', 'Indefinido');
REPLACE INTO TIPO_CONTRATO VALUES('O', 'Otro');

REPLACE INTO NIVEL_ESTUDIO VALUES('N', 'Ninguno');
REPLACE INTO NIVEL_ESTUDIO VALUES('P', 'Primaria');
REPLACE INTO NIVEL_ESTUDIO VALUES('S', 'Secundaria');
REPLACE INTO NIVEL_ESTUDIO VALUES('T', 'Técnico/Tecnólogo');
REPLACE INTO NIVEL_ESTUDIO VALUES('U', 'Universitario/Posgrado');

REPLACE INTO TIPO_INMUEBLE VALUES('N', 'Ninguno');
REPLACE INTO TIPO_INMUEBLE VALUES('C', 'Casa');
REPLACE INTO TIPO_INMUEBLE VALUES('A', 'Apartamento');
REPLACE INTO TIPO_INMUEBLE VALUES('B', 'Bodega');

REPLACE INTO ESTADO_CIVIL VALUES('C', 'Casado');
REPLACE INTO ESTADO_CIVIL VALUES('V', 'Viudo');
REPLACE INTO ESTADO_CIVIL VALUES('T', 'Soltero');
REPLACE INTO ESTADO_CIVIL VALUES('U', 'Unión Libre');
REPLACE INTO ESTADO_CIVIL VALUES('S', 'Separado');