<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
                xmlns:bv="http://tempuri.org/BenhNhan.xsd"
               >
  
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  
  <!-- Mẫu gốc -->
  <xsl:template match="/">
    <html>
      <head>
        <title>Danh sách bệnh nhân</title>
        <style>
          body {
          font-family: Arial, sans-serif;
          margin: 30px;
          background-color: #f7f9fb;
          }
          h1 {
          color: #003366;
          text-align: center;
          text-transform: uppercase;
          }
          h2 {
          color: #004080;
          border-bottom: 1px solid #004080;
          padding-bottom: 4px;
          }
          table {
          width: 100%;
          border-collapse: collapse;
          margin-bottom: 30px;
          background: #fff;
          }
          th, td {
          border: 1px solid #999;
          padding: 8px;
          text-align: center;
          }
          th {
          background-color: #d9e2f3;
          }
          tr:nth-child(even) {
          background-color: #f2f2f2;
          }
          .info-line {
          display: flex;
          gap: 20px;
          font-weight: bold;
          margin: 10px 0;
          }
        </style>
      </head>
      
      <body>
        <h1>DANH SÁCH BỆNH NHÂN</h1>
        
        <!-- Duyệt qua từng Khoa -->
        <xsl:for-each select="bv:BV/bv:Khoa">
          <div class="info-line">
            <div>Mã khoa: <xsl:value-of select="@MaKhoa"/></div>
            <div>Khoa: <xsl:value-of select="bv:TenKhoa"/></div>
            <div>Phòng: <xsl:value-of select="bv:Phong"/></div>
          </div>
          
          <table>
            <tr>
              <th>Mã bệnh nhân</th>
              <th>Họ tên</th>
              <th>Ngày nhập viện</th>
              <th>Số ngày điều trị</th>
              <th>Số tiền</th>
            </tr>
            
            <xsl:for-each select="bv:BenhNhan">
              <tr>
                <td><xsl:value-of select="@MaBenhNhan"/></td>
                <td><xsl:value-of select="bv:HoTen"/></td>
                <td><xsl:value-of select="bv:NgayNhapVien"/></td>
                <td><xsl:value-of select="bv:SoNgayDieuTri"/></td>
                <td>
                  <xsl:value-of select="bv:SoNgayDieuTri * 150000"/>
                </td>
              </tr>
            </xsl:for-each>
          </table>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
