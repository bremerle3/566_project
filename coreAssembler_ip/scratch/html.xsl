<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<!-- NOTE
     /project/linuxlab/synopsys/coreTools/auxx/dware/docbook-xsl-ns will be replaced with the actual path into the tool image which
     points to the appropriate DocBook files.
  -->
<xsl:import href="/project/linuxlab/synopsys/coreTools/auxx/dware/docbook-xsl-ns/html/onechunk.xsl"/>
<xsl:param name="html.stylesheet" select="'html.css'"/>
<xsl:param name="admon.graphics" select="1"/>
<xsl:param name="admon.graphics.path" select="'/project/linuxlab/synopsys/coreTools/auxx/dware/docbook-xsl-ns/images/'"/>
<xsl:param name="xref.with.number.and.title" select="0"/>
<xsl:param name="html.cellpadding" select="4"/>
<xsl:param name="generate.toc" select="'book toc'"/>
</xsl:stylesheet>
