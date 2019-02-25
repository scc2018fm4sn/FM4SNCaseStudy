<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
                xmlns:q0="http://ws.apache.org/axis2/xsd/co" xmlns:ax21="http://ws.apache.org/axis2/xsd">
    <xsl:output method="xml" indent="yes"/>
    <xsl:param name="Analyze.doneMsg"/>
    <xsl:template match="/">
        <soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/">
            <soapenv:Header/>
            <soapenv:Body>
                <q1:orderTow xmlns:q1="http://ws.apache.org/axis2/xsd/tts">
                    <content>
                        <xsl:value-of
                                select="$Analyze.doneMsg/soapenv:Envelope/soapenv:Body/q0:analyzeResponse/q0:return/ax21:orderTow/content"/>
                    </content>
                </q1:orderTow>
            </soapenv:Body>
        </soapenv:Envelope>
    </xsl:template>
</xsl:stylesheet>