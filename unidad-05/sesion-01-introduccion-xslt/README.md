# Investigación inicial
Investiga y responde las siguientes preguntas en el archivo README.md
## Preguntas 
### 1. ¿ Qué significan las siglas XSLT?

Extensible Stylesheet Language Transformations.

### 2. ¿ Para qué se utiliza XSLT?

Los documentos XSLT contienen instrucciones para traducir un archivo de entrada XML a otro formato.

### 3. ¿Qué relación existe entre XML, XPath y XSLT?

Tienen una relación de dependencia y colaboración: juntos forman el ecosistema estándar para almacenar, buscar y transformar datos.

### 4. ¿Qué tipos de documentos se pueden generar mediante una transformación XSLT?

El resultado puede ser de nuevo XML, pero también HTML o texto.

### 5. ¿Qué es una hoja de estilos XSLT?

Los documentos XSLT se denominan hojas de estilo, contiene el código fuente del programa.(Reglas de transformación que se van a aplicar al documento inicial)

### 6. ¿Qué función tiene un procesador XSLT?

El procesador XSLT es el programa de ordenador que aplica al documento inicial las reglas de transformación incluidas en la hoja de estilo XSLT y genera el documento final.

### 7. ¿Qué extensión suelen utilizar los archivos XSLT?

principalmente 2 extensiones: **.xsl** o **.xslt**.

### 8. ¿Qué es una plantilla en XSLT?

Una secuencia de comandos XSLT consta de uno o más conjuntos de reglas denominadas plantillas. Cada plantilla es un segmento de código que contiene reglas que se aplican cuando se hace coincidir un nodo especificado. Tiene dos tipos: denominadas y sin nombre. (o coincidencia)

### 9. ¿Para qué sirve el elemento xsl:stylesheet?

Sirve para definir el documento como una hoja de estilo XSLT, declarar el espacio de nombres(namespace) y agrupar las reglas de transformación.

### 10. ¿Para qué sirve xsl:template?

Este elemento sirve para crear plantillas.

### 11. ¿Qué función tiene xsl:value-of?

La instrucción xsl:value-of extrae contenido del nodo seleccionado y lo muestra como texto en el documento resultante de la tranformación. 

### 12. ¿Para qué se utiliza xsl:for-each?

Este elemento selecciona un cojunto de nodos y procesa cada uno de ellos de la misma manera. Se usa para iterar a través de un conjunto de nodos o para cambiar el nodo actual. 

### 13. ¿Qué función tiene xsl:output?

Nos indicará el tipo de documento al que vamos a transformar el documento XML de entrada.

### 14. Qué diferencia existe entre los atributos match y select?

La diferencia principal es que match define un patrón para interceptar nodos, mientras que select ejecuta una consulta para extraer nodos específicos.

### 15. ¿Por qué es necesario utilizar XPath dentro de XSLT?

Utiliza Xpath para seleccionar y calcular información durante la transformación.

### 16. ¿Cuál es la diferencia entre utilizar CSS y utilizar XSLT sobre un documento XML?

Se diferencia principalmente en qué hacen con los datos y cómo funcionan. CSS se centra en la presentación y el diseño visual mientras que XSLT se utiliza para transformar y mostrar el contenido XML en otros formatos como HTML.

### 17. Busca un ejemplo sencillo de una hoja XSLT que genere HTML a partir de XML. Incluye el código y explica brevemente qué hace.

```XML
<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="persona.xsl"?>

<persona>
  <nombre>Ana</nombre>
</persona>
```
El elemento stylesheet indica que debe utilizar la hoja persona.xsl para transformar el documento.

```XSLT
<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet
    version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="UTF-8"/>

  <xsl:template match="/">
    <html lang="es">
      <head>
        <title>Saludo</title>
      </head>

      <body>
        <h1>Hola</h1>
        <p>
          <xsl:value-of select="persona/nombre"/>
        </p>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
```
xsl:output method="html" indica que el resultado que se genere será HTML.

```HTML
Hola
Ana
```
Así se transforma XML en HTML con XSLT.


## WEBGRAFÍA
[Definición XSLT](https://techterms.com/es/definition/xslt)

[Tipos documentos generados tras transformación XSLT](https://www.2im.de/es/glossar/xslt-transformation.html)

[Función del procesador XSLT](https://www.mclibre.org/consultar/xml/lecciones/xml-xslt.html)

[Definición plantilla](https://networkingdocs.hpe.com/documentation/mx/es/software/junos/automation-scripting/topics/concept/junos-script-automation-xslt-templates-overview.html)

[IA de google](gemini.google.com.)

[Función de xsl:value-of](https://www.mclibre.org/consultar/xml/lecciones/xml-xslt.html)

[Xsl:for-each](https://developer.mozilla.org/es/docs/Web/XML/XSLT/Reference/Element/for-each)

[Funcion de xsl:output](https://www.ticarte.com/contenido/que-es-el-lenguaje-de-transformacion-xslt)

[Xpath en XSLT](https://www.arimetrics.com/glosario-digital/xpath)


