<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
                xmlns:qlnv="http://tempuri.org/nhanvien.xsd">

  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <style>
          table{
            border-collapse: collapse;
            width: 80%;
            margin-top: 20px;
            margin-left: 100px;
          }
          th, td{
            border: 1px solid black;
            padding: 8px;
            text-align: center;
          }
          th{
            background-color: yellow;
          }
          h2{
            text-align: center;
          }
        </style>  
        <title>Danh Sach Nhan Vien</title>
      </head>
      
      <body>
        <h2>Danh Sach Nhan Vien</h2>
        <table>
          <tr>
            <th>Ma Nhan Vien</th>  
            <th>Ho Ten</th>
            <th>So Dien Thoai</th>
            <th>Dia Chi</th>
            <th>Ngay Sinh</th>
            <th>Gioi Tinh</th>
          </tr>
          <xsl:for-each select="qlnv:QLNV/qlnv:nhanvien">
            <tr>
              <td><xsl:value-of select="@manv"/></td>
              <td><xsl:value-of select="qlnv:hoten"/></td>
              <td><xsl:value-of select="qlnv:sdt"/></td>
              <td><xsl:value-of select="qlnv:diachi"/></td>
              <td><xsl:value-of select="qlnv:ngaysinh"/></td>
              <td><xsl:value-of select="qlnv:gioitinh"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
    
  </xsl:template>

</xsl:stylesheet>