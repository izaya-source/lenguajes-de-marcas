<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes" doctype-system="about:legacy-compat"/>
    <xsl:template match ="/">
        <html lang="es">
            <head>
                <meta charset="UTF-8"/>
                <title>Guía de razas WoW</title>
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
                    .faccion {
                        margin-bottom: 24px;
                    }
                    .fichas {
                        flex: 1 1 240px;
                        background: #232a3b;
                        border: 1px solid #54617b;
                        border-radius: 12px;
                        padding: 16px;    
                    }
                    .raza img {
                        display: block;
                        max-width: 100%;
                        max-height: 180px;
                        object-fit: contain;
                    }
                    .emblema {
                        width: 56px;
                        height: auto;
                        margin-bottom: 12px;
                    }
                </style>
            </head>
            <body>
                <main>
                    <h1>Guía de razas del WoW</h1>
                    <p>Explora las razas de la Alianza y la Horda.</p>
                    <xsl:for-each select="/guia/faccion">
                        <section class="faccion">
                            <h2><xsl:value-of select="@nombre"/></h2>
                            <img class="emblema" src="{@emblema}" alt="Emblema de la facción {@nombre}"/>
                                <div class="fichas">
                                    <xsl:for-each select="raza">
                                        <xsl:sort select="nombre" data-type="text" order="ascending"/>
                                            <article class="raza">
                                                <h3><xsl:value-of select="nombre"/></h3>
                                                <p><strong>Ciudad o asentamiento: </strong> <xsl:value-of select="asentamiento"/></p>
                                                <p><strong>Profesión de ejemplo: </strong> <xsl:value-of select="profesión"/></p>
                                                <img src="{imagen}" alt="Ilustración de la raza {nombre}"/>
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