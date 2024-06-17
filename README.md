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

- La tabla "fn3" actúa como una tabla de unión que conecta varias entidades principales: contratos, asesores, fechas, divisiones y datos de población.
- Cada tabla tiene un identificador único (ixID_...) que se utiliza para definir relaciones con otras tablas.
- Las relaciones están definidas mediante claves foráneas que aseguran la integridad referencial entre las diferentes entidades.






## Implementación de la Base de Datos

![image](https://github.com/Onhofre/Ventas-de-una-empresa/assets/170147666/ec51b0b2-5633-44eb-a079-b50ddcb1f87b)



## Pruebas y Validación




## Conclusiones y Futuros Aportes



## Referencias
