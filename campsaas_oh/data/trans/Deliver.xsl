<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
                xmlns:q0="http://ws.apache.org/axis2/xsd/dc">
    <xsl:output method="xml" indent="yes"/>
    <xsl:param name="CM-DC.sendLocation.Req"/>
    <xsl:param name="EP1-DC.orderDelivery.Req"/>
    <xsl:template match="/">
        <soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/">
            <soapenv:Header/>
            <soapenv:Body>
                <q0:deliver xmlns:q0="http://ws.apache.org/axis2/xsd/dc">
                    <q0:content>
                        <xsl:value-of
                                select="$CM-DC.sendLocation.Req/soapenv:Envelope/soapenv:Body/q0:sendLocation/q0:content"/>
                        <xsl:value-of
                                select="$EP1-DC.orderDelivery.Req/soapenv:Envelope/soapenv:Body/q0:orderDelivery/q0:content"/>
                    </q0:content>
                </q0:deliver>
            </soapenv:Body>
        </soapenv:Envelope>
    </xsl:template>
</xsl:stylesheet>