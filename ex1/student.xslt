
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
                xmlns:bvdk="http://tempuri.org/student.xsd"
  >
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <style>
          table { border-collapse: collapse; width: 80%; margin-top: 20px; }
          th, td { border: 1px solid black; padding: 8px; text-align: center; }
          th { background-color: #f2f2f2ff; }
          h2 { color: #333; }
        </style>
        <title>Danh sach lop hoc</title>
      </head>

      <body>
        <h2>Danh sach Sinh vien</h2>
        <table border="1px">
          <tr>
            <th>Ma SV</th>  
            <th>Ho Ten</th>  
            <th>Gioi Tinh</th>  
            <th>Trinh Do</th>  
            <th>Ngay Sinh</th>  
            <th>Diem</th>
            <th>Xep Loai</th>
          </tr>  
          <xsl:for-each select="bvdk:QLSV/bvdk:SinhVien">
            <tr>
              <td><xsl:value-of select="@masv"/></td>
              <td><xsl:value-of select="bvdk:HoTen"/></td>
              <td><xsl:value-of select="bvdk:GioiTinh"/></td>
              <td><xsl:value-of select="bvdk:TrinhDo"/></td>
              <td><xsl:value-of select="bvdk:NgaySinh"/></td>
              <td><xsl:value-of select="bvdk:Diem"/></td>
              <td>
                <xsl:choose>
                  <xsl:when test="bvdk:Diem &gt;= 8">Giỏi</xsl:when>
                  <xsl:when test="bvdk:Diem &gt;= 7">Khá</xsl:when>
                  <xsl:otherwise>Trung Bình</xsl:otherwise>
                </xsl:choose>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
    
  </xsl:template>

</xsl:stylesheet>