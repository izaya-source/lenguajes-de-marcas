<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes" doctype-system="about:legacy-compat"/>
    <xsl:template match ="/">
        <html lang="es">
            <head>
                <meta charset="UTF-8"/>
                <title>DISNEY +</title>
                <style>
                    body {
                        background: #0f172a;
                        color: #cbd5e1;
                        font-family: 'Courier New', Courier, monospace;  
                    }
                    main {
                        max-width: 900px;
                        margin: 0 auto;
                        padding: 20px;
                    }
                    .categoria {
                        margin-bottom: 24px;
                    }
                    .fichas {
                        flex: 1 1 240px;
                        background: #232a3b;
                        border: 1px solid #54617b;
                        border-radius: 12px;
                        padding: 16px;
                          
                    }
                    .pelicula img {
                        display: block;
                        max-width: 100%;
                        max-height: 180px;
                        object-fit: contain;
                    }
                </style>
            </head>
            <body>
                <main>
                    <h1>Cartelera de películas.</h1>
                    <p>Explora un nuevo universo de películas.</p>
                    <xsl:for-each select="/cartelera/categoria">
                        <section class="pelicula">
                            <h2 style="font-size: 30px; color:#38bdf8;"><xsl:value-of select="@nombre"/></h2>
                                <div class="fichas">
                                    <xsl:for-each select="pelicula">
                                        <xsl:sort select="titulo" data-type="text" order="ascending"/>
                                            <article style="margin-bottom: 40px;" class="pelicula">
                                                <h3 style="font-size: 28px; color:#38bdf8;"><xsl:value-of select="titulo"/></h3>
                                                <p><strong>Duración: </strong> <xsl:value-of select="duracion"/>&#160;<xsl:value-of select="duracion/@unidad"/></p>
                                                <p><strong>Sinopsis: </strong> <xsl:value-of select="sinopsis"/></p>
                                                <p><strong>Reparto: </strong></p>
                                                <xsl:for-each select= "reparto/interprete">
                                                    <p style="font-family: 'Courier New', Courier, monospace; color:#60a5fa;"> 
                                                        Intérprete: <xsl:value-of select ="."/><br/>
                                                        Rol: <xsl:value-of select="@rol"/>
                                                    </p>
                                                </xsl:for-each>
                                                <img src="{cartel}" alt="Ilustración del cartel de la película{cartel}"/>
                                                <xsl:if test="position() != last()">
                                                <hr style="border: 0; height: 2px; background-color: #54617b; margin: 30px 0;"/>
                                                </xsl:if>
                                            </article>
                                    </xsl:for-each>
                                </div>
                        </section>
                    </xsl:for-each>
                </main>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>