<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:php="http://php.net/xsl">
  
    <xsl:param name="rijec" />

    <xsl:template match="/">
            
        <xsl:choose>
                
            <xsl:when test="$rijec = ''">
                <div class="starter-template">Za pretraživanje rječničke baze upišite riječ ili početno slovo u okvir za pretraživanje i kliknite na gumb "TRAŽI"!</div>
            </xsl:when>
            
            <xsl:when test="*/*/RIJEC[starts-with(GL,$rijec)]">
                
                
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th style="text-align:left">Riječ</th>
                            <th style="text-align:left">Izgovor</th>
                            <th style="text-align:left">Prijevod</th>
                            <th style="text-align:left">Opis</th>
                            <th style="text-align:left">Dijalekt</th>
                        </tr>   
                    </thead>
                    <tbody>
                        <xsl:for-each select="*/*/RIJEC[starts-with(GL,$rijec)]">  
                        
                            <tr>
                                <td>
                                    <xsl:value-of select="GL" />
                                </td>
                                <td>
                                    <xsl:value-of select="IZGOVOR" />
                                </td>
                                <td>
                                    <xsl:value-of select="PRIJEVOD" />
                                </td>
                                <td>
                                    <xsl:value-of select="OPIS" />
                                </td>
                                <td>
                                    <xsl:value-of select="DIJALEKT" />
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </xsl:when>
            <xsl:otherwise>
                <div class="starter-template">Unešena riječ ne postoji u bazi riječi!</div>
            </xsl:otherwise>
                
        </xsl:choose>
            
    </xsl:template>

</xsl:stylesheet>