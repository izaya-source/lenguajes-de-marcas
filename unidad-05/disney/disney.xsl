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
                        background: #141826;
                        color: #f5f2e9;
                        font-family: Arial, sans-serif;
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
                    <h1>Cartelera de películas</h1>
                    <p>Explora un nuevo universo de películas</p>
                    <xsl:for-each select="/cartelera/categoria">
                        <section class="pelicula">
                            <h2><xsl:value-of select="@nombre"/></h2>
                                <div class="fichas">
                                    <xsl:for-each select="pelicula">
                                        <xsl:sort select="titulo" data-type="text" order="ascending"/>
                                            <article class="pelicula">
                                                <h3><xsl:value-of select="titulo"/></h3>
                                                <p><strong>Duración: </strong> <xsl:value-of select="duracion"/></p>
                                                <p><strong>Sinopsis: </strong> <xsl:value-of select="sinopsis"/></p>
                                                <p><strong>Reparto: </strong>
                                                    <p>Intérprete: 
                                                        <xsl:for-each select= "interprete"><p><xsl:value-of select="interprete"/></p></xsl:for-each>
                                                    </p>
                                                    <p>Rol: <xsl:value-of select="@rol"/></p>
                                                </p>
                                                <img src="{cartel}" alt="Ilustración del cartel de la película{cartel}"/>
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