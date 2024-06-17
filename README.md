# ProyectoPAR
---


## Investigación y Análisis del Tema

Está base de datos será diseñada con el propósito de realizar la liquidación de ventas  realizadas por una empresa prestadora de servicios, con el fin de saber que ventas aplican para ser liquidadas teniendo en cuenta el estado de la cuenta (legalizado). Así mismo saber a qué asesores corresponde cada venta y saber si cumplieron con los pisos mínimos de comision. Tambien se tendrá en cuenta las regionales y las ciudades. El problema más común en la base son la redundancia de datos y para ello se llevará a cabo la normalización de dicha data.

La base de datos se tomó de la empresa Inspira Sac Claro.

Tareas.
- Stiven Polo
  * Buscar los datos que se utilizaran en el proyecto (Los datos se descargaron de la empresa Inspira Sac Claro, se realzaron los cambios necesarios para poderlo subirlo a MySQL Workbench)
  * Convertirlos a achivo CSV
  * Relizara 5 pruebas para la base de datos final

- Santiago Onofre
  * Normalizacion de la tabla 
  * Diseño del reposito
  * Relizara 5 pruebas para la base de  datos final
 
- Alejandro salazar
  * Creacion y validacion del diagrama
  * Ingreso de datos para comprobar en la tabla 
  * Relizara 5 pruebas para la base de  datos final

   

## Diseño de la Base de Datos

### Normalizacion
- Teniendo en cuenta la tabla de ![image](https://github.com/Onhofre/Ventas-de-una-empresa/assets/170147666/a193a744-a328-490a-b5bd-ac1e4dd921ee) se comienza con la eliminar las columnas que no son necesarias para la implementacion de esta base de datos, no se tiene que 
  * Fecha Primer Checklist2
  * Fecha Solución Entregada
  * Fecha Recepción
  * Cust
  * Code1
  * Min1
  * Cust Code2
  * Min2
  * Cust Code3
  * Min3
  * Cust Code4
  * Min4
  * Cust Code5
  * Min5
  * Cust Code6
  * Min6
  * Fecha Consumo Leg AC
  * Codigo Consumo Leg AC
  * Descripcion Consumo Leg AC

-    Normalizacion FN1: Se realiza la validacion y eliminacion de las columnas las cuales tienen elementos repetido, estos elementos los ingreso el la meta data de la base de dayos utilizada.

![image](https://github.com/Onhofre/Ventas-de-una-empresa/assets/170147666/cead7546-1886-4d59-ac2b-e9f033c445e5)


-    Normalizacion FN2:
     * FN2_Asesores: Documento Asesor	|| Nombre Asesor
     * FN2_Clientes: ID_Cuenta ||	O.T	|| Proyecto Especial	|| Proyecto	|| Apellido del Cliente	|| Nombre de Cliente || Tipo de Documento ||	Documento de Cliente ||	Proyectos	|| ID_datospoblacion
     * FN2_Contrato: Contrato ||	Base Legal ||	Fuente	|| Tipo de Venta ||	Origen	|| Documento Asesor
     * FN2_Datos_poblacion: ID_datospoblacion	|| Estrato	|| Distrito	|| GV Descripción 2	|| Población	|| Origen ||	Zona	|| Fuente
     * FN2_Fechas: ID_fecha	|| Fecha de Venta	|| Fecha Estado	|| Fecha Custodia	|| Fecha Digitalizado y Archivado	|| Documento Asesor
     * FN3: ID_Cuenta	|| Documento Asesor	|| ID_fecha	|| Contrato	|| ID_division	|| ID_datospoblacion

![image](https://github.com/Onhofre/Ventas-de-una-empresa/assets/170147666/f6471cf6-0ef1-4b98-82dd-80bbcc366814)

-    Normalizacion FN3:
     * ID_Cuenta: LLave foranea
     * Documento Asesor: LLave foranea
     * ID_fecha: LLave foranea
     * Contrato: LLave foranea
     * ID_division: LLave foranea
     * ID_datospoblacion: LLave foranea

### Diagrama 

![DiagramaBD](https://github.com/Onhofre/Ventas-de-una-empresa/assets/170148837/e863527e-bb9a-4622-8aef-be5e9698b3e0)

### Descripción del Diagrama de la Base de Datos

Este repositorio contiene el diagrama de la base de datos diseñado para gestionar la información relacionada con contratos, asesores, fechas, clientes, divisiones y datos de población. A continuación, se detalla la estructura y las relaciones entre las diferentes tablas.

### Tablas y sus Propósitos

### fn2_contrato
- **Propósito**: Almacenar información relacionada con los contratos.
- **Campos**: 
  - ixContrato: Identificador único del contrato.
  - Base Legal, Fuente, Tipo de Venta, Origen, Documento Asesor: Detalles específicos del contrato.

### fn2_asesores
- **Propósito**: Contener información sobre los asesores.
- **Campos Clave**: 
  - ixDocumento Asesor: Identificador único del asesor.
  - Nombre Asesor: Nombre del asesor.

### fn2_fechas
- **Propósito**: Guardar fechas relevantes relacionadas con los procesos de ventas.
- **Campos**: 
  - ixID_fecha: Identificador único de la fecha.
  - Fecha de Venta, Fecha Estado, Fecha Custodia, Fecha Digitalizado y Archivado: Fechas específicas relacionadas con la venta.
  - Documento Asesor: Relación con el asesor correspondiente.

### fn2_clientes
- **Propósito**: Almacenar información sobre los clientes.
- **Campos**: 
  - ixID_Cuenta: Identificador único del cliente.
  - O.T, Proyecto Especial, Proyecto, Apellido del Cliente, Nombre de Cliente: Detalles específicos del cliente.
  - Tipo de Documento, Documento de Cliente: Información de identificación del cliente.
  - ID_datospoblacion: Relación con la tabla de datos de población.

### fn2_division
- **Propósito**: Contener información sobre las divisiones geográficas o administrativas.
- **Campos**: 
  - ixID_division: Identificador único de la división.
  - División, Estrato, Distrito, GV Descripción 2, Población, Zona: Detalles de la división.

### fn2_datos_poblacion
- **Propósito**: Almacenar datos relacionados con la población.
- **Campos**: 
  - ixID_datospoblacion: Identificador único de los datos de población.
  - Estrato, Distrito, GV Descripción 2, Población, Origen, Zona, Fuente, Tipo de Venta: Detalles específicos de la población.

### fn3
- **Propósito**: Servir como tabla de relación entre cuentas, asesores, contratos, divisiones y datos de población.
- **Campos**: 
  - ixID_Cuenta: Identificador único de la cuenta.
  - Documento Asesor: Relación con el asesor correspondiente.
  - ID_fecha: Relación con la tabla de fechas.
  - Contrato: Relación con la tabla de contratos.
  - ID_division: Relación con la tabla de divisiones.
  - ID_datos_poblacion: Relación con la tabla de datos de población.

### Relaciones entre Tablas

- La tabla `fn3` actúa como una tabla de unión que conecta varias entidades principales: contratos, asesores, fechas, divisiones y datos de población.
- Cada tabla tiene un identificador único (`ixID_...`) que se utiliza como clave primaria para definir relaciones con otras tablas.
- Las relaciones están definidas mediante claves foráneas que aseguran la integridad referencial entre las diferentes entidades:
  - `fn3` utiliza `ixID_Cuenta` como clave primaria y contiene claves foráneas como `Documento Asesor`, `ID_fecha`, `Contrato`, `ID_division`, y `ID_datos_poblacion` para conectar con `fn2_asesores`, `fn2_fechas`, `fn2_contrato`, `fn2_division`, y `fn2_datos_poblacion`, respectivamente.
  - `fn2_contrato` contiene `Documento Asesor` como clave foránea para relacionarse con `fn2_asesores`.
  - `fn2_fechas` contiene `Documento Asesor` como clave foránea para relacionarse con `fn2_asesores`.
  - `fn2_clientes` contiene `ID_datospoblacion` como clave foránea para relacionarse con `fn2_datos_poblacion`.
  - `fn2_division` se relaciona con `fn3` a través de la clave foránea `ID_division`.
  - `fn2_datos_poblacion` se relaciona con `fn3` a través de la clave foránea `ID_datos_poblacion`.

Estas claves foráneas permiten mantener la integridad referencial entre las tablas, asegurando que los datos estén correctamente vinculados y evitando inconsistencias en la base de datos.







## Implementación de la Base de Datos

1. *Obtener todos los contratos con sus respectivos asesores*:
   sql
   SELECT fn2_contrato.ixContrato, fn2_contrato.Base_Legal, fn2_asesores.Nombre_Asesor
   FROM fn2_contrato
   JOIN fn2_asesores ON fn2_contrato.Documento_Asesor = fn2_asesores.ixDocumento_Asesor;
   

2. *Listar todos los clientes y sus proyectos*:
   sql
   SELECT Nombre_Cliente, Apellido_del_Cliente, Proyecto
   FROM fn2_clientes;
   

3. *Encontrar las fechas de venta y custodia para cada contrato*:
   sql
   SELECT fn2_fechas.Fecha_de_Venta, fn2_fechas.Fecha_Custodia, fn2_contrato.ixContrato
   FROM fn2_fechas
   JOIN fn2_contrato ON fn2_fechas.Documento_Asesor = fn2_contrato.Documento_Asesor;
   

4. *Contar el número de clientes por cada tipo de documento*:
   sql
   SELECT Tipo_de_Documento, COUNT(*) AS Numero_de_Clientes
   FROM fn2_clientes
   GROUP BY Tipo_de_Documento;
   

5. *Obtener la lista de divisiones con su descripción y zona*:
   sql
   SELECT Division, GV_Descripcion_2, Zona
   FROM fn2_division;
   

6. *Mostrar todos los asesores y la cantidad de contratos asociados a cada uno*:
   sql
   SELECT fn2_asesores.Nombre_Asesor, COUNT(fn2_contrato.ixContrato) AS Numero_de_Contratos
   FROM fn2_asesores
   JOIN fn2_contrato ON fn2_asesores.ixDocumento_Asesor = fn2_contrato.Documento_Asesor
   GROUP BY fn2_asesores.Nombre_Asesor;
   

7. *Listar todos los contratos y sus datos de población asociados*:
   sql
   SELECT fn2_contrato.ixContrato, fn2_datos_poblacion.Estrato, fn2_datos_poblacion.Distrito
   FROM fn2_contrato
   JOIN fn2_datos_poblacion ON fn2_contrato.Documento_Asesor = fn2_datos_poblacion.ixID_datospoblacion;
   

8. *Obtener los contratos y sus divisiones asociadas*:
   sql
   SELECT fn2_contrato.ixContrato, fn2_division.Division
   FROM fn2_contrato
   JOIN fn3 ON fn2_contrato.ixContrato = fn3.Contrato
   JOIN fn2_division ON fn3.ID_division = fn2_division.ixID_division;
   

9. *Encontrar el asesor con más contratos*:
   sql
   SELECT fn2_asesores.Nombre_Asesor, COUNT(fn2_contrato.ixContrato) AS Numero_de_Contratos
   FROM fn2_asesores
   JOIN fn2_contrato ON fn2_asesores.ixDocumento_Asesor = fn2_contrato.Documento_Asesor
   GROUP BY fn2_asesores.Nombre_Asesor
   ORDER BY Numero_de_Contratos DESC
   LIMIT 1;
   

10. *Listar todos los proyectos especiales de los clientes*:
    sql
    SELECT Nombre_Cliente, Proyecto_Especial
    FROM fn2_clientes
    WHERE Proyecto_Especial IS NOT NULL;
    

11. *Obtener los detalles de los contratos realizados en una fecha específica*:
    sql
    SELECT fn2_contrato.ixContrato, fn2_contrato.Base_Legal, fn2_fechas.Fecha_de_Venta
    FROM fn2_contrato
    JOIN fn3 ON fn2_contrato.ixContrato = fn3.Contrato
    JOIN fn2_fechas ON fn3.ID_fecha = fn2_fechas.ixID_fecha
    WHERE fn2_fechas.Fecha_de_Venta = '2023-01-01';
    

12. *Encontrar las divisiones que tienen una zona específica*:
    sql
    SELECT Division, Estrato, Distrito
    FROM fn2_division
    WHERE Zona = 'Zona 1';
    

13. *Listar todos los contratos y sus clientes asociados*:
    sql
    SELECT fn2_contrato.ixContrato, fn2_clientes.Nombre_Cliente
    FROM fn2_contrato
    JOIN fn3 ON fn2_contrato.ixContrato = fn3.Contrato
    JOIN fn2_clientes ON fn3.ixID_Cuenta = fn2_clientes.ixID_Cuenta;
    

14. *Obtener los datos de población para un cliente específico*:
    sql
    SELECT fn2_clientes.Nombre_Cliente, fn2_datos_poblacion.Estrato, fn2_datos_poblacion.Distrito
    FROM fn2_clientes
    JOIN fn2_datos_poblacion ON fn2_clientes.ID_datospoblacion = fn2_datos_poblacion.ixID_datospoblacion
    WHERE fn2_clientes.Nombre_Cliente = 'Juan Perez';
    

15. *Encontrar todos los clientes y sus asesores asociados*:
    sql
    SELECT fn2_clientes.Nombre_Cliente, fn2_asesores.Nombre_Asesor
    FROM fn2_clientes
    JOIN fn3 ON fn2_clientes.ixID_Cuenta = fn3.ixID_Cuenta
    JOIN fn2_asesores ON fn3.Documento_Asesor = fn2_asesores.ixDocumento_Asesor;



## Pruebas y Validación




## Conclusiones y Futuros Aportes



## Referencias
