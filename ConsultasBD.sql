#Listar todos los asesores:
SELECT * FROM fn2_asesores;

#Buscar contratos por tipo de venta específico:
SELECT ï»¿Contrato, Tipo_de_Venta FROM fn2_contrato WHERE Tipo_de_Venta = 'Venta Directa';

#Contar el número de contratos por origen:
SELECT Origen, COUNT(*) AS Total_Contratos FROM fn2_contrato GROUP BY Origen;

#Obtener detalles de población por estrato y distrito:
SELECT Estrato, Distrito, PoblaciÃ³n FROM fn2_datos_poblacion;

#Listar las fechas de venta y sus estados:
SELECT Fecha_de_Venta, Fecha_Estado FROM fn2_fechas;

#Encontrar fechas de venta para un asesor específico:
SELECT Fecha_de_Venta FROM fn2_fechas WHERE Documento_Asesor = 12345;

#Buscar contratos por fecha de custodia:
SELECT ï»¿Contrato, Fecha_Custodia FROM fn2_contrato JOIN fn2_fechas ON fn2_contrato.Documento_Asesor = fn2_fechas.Documento_Asesor WHERE Fecha_Custodia >= '2023-01-01';

#Contar el número de ventas por estado:
SELECT Fecha_Estado, COUNT(*) AS Total_Ventas FROM fn2_fechas GROUP BY Fecha_Estado;

#Contar el número de ventas por fecha:
SELECT Fecha_de_Venta, COUNT(*) AS Total_Ventas FROM fn2_fechas GROUP BY Fecha_de_Venta;

#Buscar contratos por tipo de legalización y origen:
SELECT ï»¿Contrato, Base_Legal, Origen FROM fn2_contrato WHERE Base_Legal = 'Legalizado' AND Origen = 'Online';

#Obtener detalles de asesor por documento específico:
SELECT * FROM fn2_asesores WHERE ï»¿Documento_Asesor = 56789;

#Listar clientes y sus proyectos especiales:
SELECT Nombre_de_Cliente, Proyecto_Especial FROM fn2_clientes WHERE Proyecto_Especial IS NOT NULL;

#Encontrar asesores con más contratos asignados:
SELECT Nombre_Asesor, COUNT(fn2_contrato.Contrato) AS Total_Contratos FROM fn2_asesores JOIN fn2_contrato ON fn2_asesores.Documento_Asesor = fn2_contrato.Documento_Asesor GROUP BY Nombre_Asesor ORDER BY Total_Contratos DESC;

#Buscar clientes por tipo de documento y contarlos:
SELECT Tipo_de_Documento, COUNT(*) AS Total_Clientes FROM fn2_clientes GROUP BY Tipo_de_Documento;

#Listar todos los contratos con sus fechas de custodia y digitalización:
SELECT fn2_contrato.Contrato, fn2_fechas.Fecha_Custodia, fn2_fechas.Fecha_Digitalizado_y_Archivado FROM fn2_contrato JOIN fn2_fechas ON fn2_contrato.Documento_Asesor = fn2_fechas.Documento_Asesor;