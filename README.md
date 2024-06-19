# ProyectoPAR
---

## OBJETIVOS
### Objetivo General
Diseñar, desarrollar e implementar una base de datos relacional eficiente y funcional.

### Objetivos Específicos
* Investigar y analizar el problema y requisitos.
* Diseñar el esquema de la base de datos.
* Implementar la base de datos en MySQL.
* Realizar pruebas y validar la base de datos.

## Tema Seleccionado
El tema seleccionado para este proyecto es la gestión de ventas y comisiones de una empresa prestadora de servicios. 

## Almacenamiento del Proyecto
El proyecto será almacenado y gestionado en GitHub, utilizando el lenguaje Markdown para la documentación.

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

### Ingreso de datos:

Creamos la DB

![image](https://github.com/Onhofre/Ventas-de-una-empresa/assets/170147666/afaa0674-be9b-4045-8872-8f039be4e9ab)

Los datos los ingresamos por workbench, ya que se tenian normalizada las tablas se subieron de manera directamas no por consola

* Paso 1
  
![image](https://github.com/Onhofre/Ventas-de-una-empresa/assets/170147666/1cab2b3c-673e-4b4c-842f-26a7cfdfbafb)

* Paso 2

![image](https://github.com/Onhofre/Ventas-de-una-empresa/assets/170147666/c778a016-67cd-47a2-8a54-31b272db688a)

* Paso 3
  
![image](https://github.com/Onhofre/Ventas-de-una-empresa/assets/170147666/46de3fdc-b855-4a1c-a534-adc40e029a69)

* Paso 4

![image](https://github.com/Onhofre/Ventas-de-una-empresa/assets/170147666/33e8f87f-f3d0-4cc5-80d5-78fe54aa5edf)

* Paso 5

![image](https://github.com/Onhofre/Ventas-de-una-empresa/assets/170147666/ea6871d0-00b4-415c-a773-beada0f74972)

* Paso 6

Se realiza el mismo proceso con cada una de las tablas que se necesitan ingresar

![image](https://github.com/Onhofre/Ventas-de-una-empresa/assets/170147666/ed4de08d-ac7c-43a5-8ce7-c6d8b8ffde99)

### Creacion del diagrama

Para crear el diagrama y dar las llaves, se realizo por medio de Workbeanch 

![image](https://github.com/Onhofre/Ventas-de-una-empresa/assets/170147666/83b68d1e-7d3f-488e-b8ea-e20429f2d997)

* Paso 1

![image](https://github.com/Onhofre/Ventas-de-una-empresa/assets/170147666/52481867-dbd3-4af4-8162-cc5583e40b4c)

* Paso 2

![image](https://github.com/Onhofre/Ventas-de-una-empresa/assets/170147666/0a8ec1b4-178a-4d8e-ab13-15786b0c7e0d)

 * Paso 3: Seleccionamos el BD del cual queremos el digrama

![image](https://github.com/Onhofre/Ventas-de-una-empresa/assets/170147666/8ea29170-2b7b-479c-98fc-cae75c1deafb)

* Paso 4
  
![image](https://github.com/Onhofre/Ventas-de-una-empresa/assets/170147666/7b65b628-f471-4b40-867a-8d1405a94907)

* Paso 5

![image](https://github.com/Onhofre/Ventas-de-una-empresa/assets/170147666/4a4d87d8-ab95-45ff-a009-f2db145e7181)

* Paso 6: Para dar la llave primaria a la columna que necesitemos

![image](https://github.com/Onhofre/Ventas-de-una-empresa/assets/170147666/c87893b3-70b0-4520-a2c7-c4f7f54ecc33)

* Paso 7: para dar llave foranea a la columna que necesitemos

![image](https://github.com/Onhofre/Ventas-de-una-empresa/assets/170147666/f1f4f4a9-5e5d-4dd1-8f91-762e5edfb3d0)


## Pruebas y Validación

1. Listar todos los asesores:
   ```sql
   SELECT * FROM fn2_asesores;
   ```

2. Buscar contratos por tipo de venta específico:
   ```sql
   SELECT Contrato, Tipo_de_Venta FROM fn2_contrato WHERE Tipo_de_Venta = 'Venta Directa';
   ```

3. Contar el número de contratos por origen:
   ```sql
   SELECT Origen, COUNT(*) AS Total_Contratos FROM fn2_contrato GROUP BY Origen;
   ```

4. Obtener detalles de población por estrato y distrito:
   ```sql
   SELECT Estrato, Distrito, PoblaciÃ³n FROM fn2_datos_poblacion;
   ```

5. Listar las fechas de venta y sus estados:
   ```sql
   SELECT Fecha_de_Venta, Fecha_Estado FROM fn2_fechas;
   ```

6. Encontrar fechas de venta para un asesor específico:
   ```sql
   SELECT Fecha_de_Venta FROM fn2_fechas WHERE Documento_Asesor = 12345;
   ```

7. Buscar contratos por fecha de custodia:
   ```sql
   SELECT ï»¿Contrato, Fecha_Custodia FROM fn2_contrato JOIN fn2_fechas ON fn2_contrato.Documento_Asesor = fn2_fechas.Documento_Asesor WHERE Fecha_Custodia >= '2023-01-01';
   ```

8. Contar el número de ventas por estado:
   ```sql
   SELECT Fecha_Estado, COUNT(*) AS Total_Ventas FROM fn2_fechas GROUP BY Fecha_Estado;
   ```

9. Contar el número de ventas por fecha:
   ```sql
   SELECT Fecha_de_Venta, COUNT(*) AS Total_Ventas FROM fn2_fechas GROUP BY Fecha_de_Venta;
   ```

10. Buscar contratos por tipo de legalización y origen:
    ```sql
    SELECT Contrato, Base_Legal, Origen FROM fn2_contrato WHERE Base_Legal = 'Legalizado' AND Origen = 'Online';
    ```

11. Obtener detalles de asesor por documento específico:
    ```sql
    SELECT * FROM fn2_asesores WHERE Documento_Asesor = 56789;
    ```

12. Listar clientes y sus proyectos especiales:
    ```sql
    SELECT Nombre_Cliente, Proyecto_Especial FROM fn2_clientes WHERE Proyecto_Especial IS NOT NULL;
    ```

13. Encontrar asesores con más contratos asignados:
    ```sql
    SELECT Nombre_Asesor, COUNT(fn2_contrato.Contrato) AS Total_Contratos FROM fn2_asesores JOIN fn2_contrato ON fn2_asesores.Documento_Asesor = fn2_contrato.Documento_Asesor GROUP BY Nombre_Asesor ORDER BY Total_Contratos DESC;
    ```

14. Buscar clientes por tipo de documento y contarlos:
    ```sql
    SELECT Tipo_de_Documento, COUNT(*) AS Total_Clientes FROM fn2_clientes GROUP BY Tipo_de_Documento;
    ```

15. Listar todos los contratos con sus fechas de custodia y digitalización:
    ```sql
    SELECT fn2_contrato.Contrato, fn2_fechas.Fecha_Custodia, fn2_fechas.Fecha_Digitalizado_y_Archivado FROM fn2_contrato JOIN fn2_fechas ON fn2_contrato.Documento_Asesor = fn2_fechas.Documento_Asesor;
    ```
    
## Conclusiones y Futuros Aportes

* Eficiencia en la Normalización: La normalización efectiva ha eliminado redundancias, asegurando la coherencia de los datos y facilitando su gestión.

* Diseño Estructurado: El diseño organizado de la base de datos garantiza relaciones claras entre contratos, asesores, fechas, clientes, divisiones y datos de población.

* Implementación Exitosa: La implementación en MySQL Workbench facilitó el ingreso de datos y la creación del diagrama, preparando la base de datos para uso operativo.

## Referencias
