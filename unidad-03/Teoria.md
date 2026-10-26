| DTD | XSD |
| --- | --- |
| Sintaxis propia | Etiquetas en xml|
| Texto #PCDATA | xs: string; xs: date; xs: decimal |
| * ? + | minOccurs maxOccurs |
| Enumeraciones basicas | Enumeraciones minimos, maximos, patrones |
| Pocos atributos | Muchos tipos para elementos y atributos |

```
xmllint --noout --schema carta.xsd carta-xsd.xml 
```
El archivo que queremos validar con el archivo con las reglas de ese archivo con xmllint, nos tenemos que asegurar de entrar dentro de la carpeta donde tenemos los archivos.
```
xmllint --noout --dtdvalid carta.dtd carta.xml
```
Para validad un documento.dtd 