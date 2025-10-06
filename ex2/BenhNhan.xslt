<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:msxsl="urn:schemas-microsoft-com:xslt"
                xmlns:bv="http://tempuri.org/BenhNhan.xsd"
                exclude-result-prefixes="msxsl">

  <xsl:output method="html" indent="yes"/>
  <xsl:template match="/" >
    <html>
      
      <head>
        <style>
          h2{
          text-align: center;
          color: red;
          }
          table{
            border-collapse: collapse;
            width: 90%;
            margin: 0 auto;
            box-shadow: 10%;
          }
          th, td{
            border: 1px solid;
            padding: 10px;
            text-align: center;
          }
          th{
            background-color: yellow;
          }
        </style>  
      </head>  
      
      <body>
        <h2>Danh Sach Benh Nhan </h2>
        
        <table>
          <tr>
            <th>Khoa</th> 
            <th>Phong</th> 
            <th>Ma Benh Nhan</th> 
            <th>Ho Ten</th> 
            <th>Ngay Nhap Vien</th> 
            <th>So Ngay Dieu Tri</th> 
            <th>So Tien Phai Tra</th> 
          </tr>
          <xsl:for-each select="bv:BV/bv:Khoa/bv:BenhNhan">
            <tr>
              <td><xsl:value-of select="../bv:TenKhoa"/></td>  
              <td><xsl:value-of select="../bv:Phong"/></td>  
              <td><xsl:value-of select="@MaBenhNhan"/></td>  
              <td><xsl:value-of select="bv:HoTen"/></td>  
              <td><xsl:value-of select="bv:NgayNhapVien"/></td>  
              <td><xsl:value-of select="bv:SoNgayDieuTri"/></td> 
              <td><xsl:value-of select="bv:SoNgayDieuTri*150000"/></td>
            </tr>
          </xsl:for-each>
          <tfoot>
            <tr>
              <td colspan="6">Tổng số tiền điều trị</td>
              <td>
                <xsl:value-of 
                  select="sum(/bv:BV/bv:Khoa/bv:BenhNhan/bv:SoNgayDieuTri) *150000"/>
              </td>
            </tr>
          </tfoot>
        </table>
      </body>
    </html>
  </xsl:template>

  

</xsl:stylesheet>