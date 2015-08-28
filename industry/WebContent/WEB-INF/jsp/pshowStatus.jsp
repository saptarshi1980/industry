<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<%@ page import="java.util.Date;import java.text.SimpleDateFormat;" %>
<%@ page errorPage="ShowError.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>New Consumer Data</title>

</head>
<body >
   
   <a href="PowerRedirect"><span>Home</span></a><BR><BR>
   <a href='index.jsp'><span>Logout</span></a><br>
   
    <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://192.168.30.7:3306/dplsw"
        user="remote" password="dgppro1961"
    />
    
    <%
    Date date = new Date();
    SimpleDateFormat sdf = new SimpleDateFormat("dd/mm/yyyy");

    String strDate = sdf.format(date);
    

    
    sdf = new SimpleDateFormat("dd-MM-yyyy");
    strDate = sdf.format(date);
    
    
    %>
    <%!
    String bgcolor="FF6600";
    %>
     
    <sql:query var="listUsers"   dataSource="${myDS}">
        <%
        String conNumber = request.getSession().getAttribute("con_no").toString().trim();
        session.setAttribute("con_no", conNumber);
        
    	%>
        SELECT a.temp_con_no,a.conn_load,a.conn_phase,a.unit_name,a.unit_address1,a.unit_address2,a.unit_pincode,a.unit_landmark,a.unit_landline,a.unit_mobile,a.applicant_fname,a.applicant_lname,a.applicant_address1,a.applicant_address2,a.applicant_pincode,a.applicant_landline,a.applicant_mobile,a.name_ref1,a.address_ref1,a.name_ref2,a.address_ref2,a.entry_date,B.Agreement,B.BOM_prep,B.commercial_clearance,B.clearance_elect,B.connection,B.Demand_note,B.Demand_rate,B.job_cmpl_cert,B.message,B.rcpt_app_form,B.security_deposit,B.site_inspection,B.work_order,B.BOM_ISSUANCE,DATE_FORMAT(B.date_1,'%d-%m-%Y') as date_1,DATE_FORMAT(B.date_2,'%d-%m-%Y') as date_2,DATE_FORMAT(B.date_3,'%d-%m-%Y') as date_3,DATE_FORMAT(B.date_4,'%d-%m-%Y') as date_4,DATE_FORMAT(B.date_5,'%d-%m-%Y') as date_5,DATE_FORMAT(B.date_6,'%d-%m-%Y') as date_6,DATE_FORMAT(B.date_7,'%d-%m-%Y') as date_7,DATE_FORMAT(B.date_8,'%d-%m-%Y') as date_8,DATE_FORMAT(B.date_9,'%d-%m-%Y') as date_9,DATE_FORMAT(B.date_10,'%d-%m-%Y') as date_10,DATE_FORMAT(B.date_11,'%d-%m-%Y') as date_11,DATE_FORMAT(B.date_12,'%d-%m-%Y') as date_12 FROM new_consumer a,con_status b WHERE TRIM(A.temp_con_no)='<%= conNumber%>' AND A.temp_con_no=B.temp_con_no
    </sql:query>
     
<div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>DPL-Consumer Details</h2></caption>
            <tr>
                <th>Temp Connection No</th>
                <th>Load</th>
                <th>Phase</th>
                <th>Name of the Unit</th>
                <th>Address1</th>
                <th>Address2</th>
                <th>Pin Code</th>
                <th>Land Mark</th>
                <th>Land Line </th>
                <th>Mobile</th>
                <th>Applicant First Name</th>
                <th>Applicant Second Name</th>
                <th>Applicant Address</th>
                <th>Applicant Address</th>
                <th>Applicant Pin Code</th>
                <th>Applicant Land Line</th>
                <th>Applicant Mobile</th>
                <th>Referee Name</th>
                <th>Referee Address</th>
                <th>Referee Name</th>
                <th>Referee Address</th>
                <th>Entry Date and Time</th>
           </tr>
            <c:forEach var="user" items="${listUsers.rows}">
                <tr>
                    <td><c:out value="${user.temp_con_no}" /></td>
                    <td><c:out value="${user.conn_load}" /></td>
                    <td><c:out value="${user.conn_phase}" /></td>
                    <td><c:out value="${user.unit_name}" /></td>
                    
                    
                    <td><c:out value="${user.unit_address1}" /></td>
                    <td><c:out value="${user.unit_address2}" /></td>
                    <td><c:out value="${user.unit_pincode}" /></td>
                    <td><c:out value="${user.unit_landmark}" /></td>
                    
                    
                    <td><c:out value="${user.unit_landline}" /></td>
                    <td><c:out value="${user.unit_mobile}" /></td>
                    <td><c:out value="${user.applicant_fname}" /></td>
                    <td><c:out value="${user.applicant_lname}" /></td>
                    
                    
                    <td><c:out value="${user.applicant_address1}" /></td>
                    <td><c:out value="${user.applicant_address2}" /></td>
                    <td><c:out value="${user.applicant_pincode}" /></td>
                    <td><c:out value="${user.applicant_landline}" /></td>
                    
                    <td><c:out value="${user.applicant_mobile}" /></td>
                    <td><c:out value="${user.name_ref1}" /></td>
                    <td><c:out value="${user.address_ref1}" /></td>
                    <td><c:out value="${user.name_ref2}" /></td>
                    <td><c:out value="${user.address_ref2}" /></td>
                    <td><c:out value="${user.entry_date}" /></td>
                </tr>
            
        </table>
        <p align="left"><strong>Change the Status of the Customer according to the options available below:</strong></p>
        <form name="form1" method="" action="">
       
        <p align="left"></p>
        <table width="1181" height="621" border="1" align="left" cellpadding="2">
          <tr>
            <td width="167"><div align="center">Sr No </div></td>
            <td colspan="2"><div align="center">Phases</div></td>
            <td width="167"><div align="center">Current Status </div></td>
            <td width="159">As on Date </td>
          </tr>
          
          <tr >
          
            <tr >
            <td>1</td>
            <td colspan="2">Receipt of Completed Application form with all Requisite Document</td>
            <c:if test = "${user.rcpt_app_form == 'Completed'}">      
			   <% bgcolor="green"; %>
			</c:if> 
            <td bgcolor=<%=bgcolor %>>
             <c:out value="${user.rcpt_app_form}" /></td>
            <td><c:out value="${user.date_1}" /></td>
          </tr>
          <% bgcolor="FF6600"; %>
          <tr>
            <td>2</td>
            <td colspan="2">Site Inspection </td>
            <c:if test = "${user.site_inspection == 'Completed'}">      
			   <% bgcolor="green"; %>>
			</c:if> 
            <td bgcolor=<%=bgcolor %>><c:out value="${user.site_inspection}" /></td>
            <td><c:out value="${user.date_2}" /></td>
          </tr>
          
          
            <tr>
            <td>3</td>
            <td colspan="2">Commercial Clearance </td>
            <% bgcolor="FF6600"; %>
            <c:if test = "${user.commercial_clearance == 'Completed'}">      
			   <% bgcolor="green"; %>>
			</c:if> 
            <td bgcolor=<%=bgcolor %>><c:out value="${user.commercial_clearance}" /></td>
            <td><c:out value="${user.date_comm}" /></td>
          </tr>
          
          <tr>
            <td>3</td>
            <td colspan="2">Preparartion of BOM </td>
            <% bgcolor="FF6600"; %>
            <c:if test = "${user.bom_prep == 'Completed'}">      
			   <% bgcolor="green"; %>>
			</c:if> 
            <td bgcolor=<%=bgcolor %>><c:out value="${user.bom_prep}" /></td>
            <td><c:out value="${user.date_3}" /></td>
          </tr>
          <%-- <tr>
            <td>4</td>
            <td colspan="2">Issuance of BOM </td>
            <% bgcolor="FF6600"; %>
            <c:if test = "${user.bom_ISSUANCE == 'Completed'}">      
			   <% bgcolor="green"; %>>
			</c:if> 
            <td bgcolor=<%=bgcolor %>><c:out value="${user.BOM_ISSUANCE}" /></td>
            <td><c:out value="${user.date_4}" /></td>
          </tr> --%>
          <tr>
            <td>4</td>
            <td colspan="2">Job Completion Certificate received ? </td>
            <% bgcolor="FF6600"; %>
            <c:if test = "${user.job_cmpl_cert == 'Completed'}">      
			   <% bgcolor="green"; %>>
			</c:if>
            <td bgcolor=<%=bgcolor %>><c:out value="${user.job_cmpl_cert}" /></td>
            <td><c:out value="${user.date_5}" /></td>
          </tr>
          <tr>
            <td>5</td>
            <td colspan="2">Issuance of Demand rate for Supervision Charges &amp; Service Charges </td>
            <% bgcolor="FF6600"; %>
            <c:if test = "${user.demand_rate == 'Completed'}">      
			   <% bgcolor="green"; %>>
			</c:if>
            <td bgcolor=<%=bgcolor %>><c:out value="${user.demand_rate}" /></td>
            <td><c:out value="${user.date_6}" /></td>
          </tr>
          <tr>
            <td>6</td>
            <td colspan="2">Issuance of Demand Note for Security Deposit </td>
           <% bgcolor="FF6600"; %>
            <c:if test = "${user.demand_note == 'Completed'}">      
			   <% bgcolor="green"; %>>
			</c:if>
            <td bgcolor=<%=bgcolor %>><c:out value="${user.demand_note}" /></td>
            <td><c:out value="${user.date_7}" /></td>
          </tr>
          <tr>
            <td>7</td>
            <td colspan="2">Receipt of Security Deposit </td>
             <% bgcolor="FF6600"; %>
            <c:if test = "${user.security_deposit == 'Completed'}">      
			   <% bgcolor="green"; %>>
			</c:if>
            <td bgcolor=<%=bgcolor %>><c:out value="${user.security_deposit}" /></td>
            <td><c:out value="${user.date_8}" /></td>
          </tr>
          <tr>
            <td>8</td>
            <td colspan="2">Agreement</td>
             <% bgcolor="FF6600"; %>
            <c:if test = "${user.agreement == 'Completed'}">      
			   <% bgcolor="green"; %>>
			</c:if>
            <td bgcolor=<%=bgcolor %>><c:out value="${user.agreement}" /></td>
            <td><c:out value="${user.date_9}" /></td>
          </tr>
          <tr>
            <td>9</td>
            <td colspan="2">Clearance from Electrical Inspector(For HT Consumer only) </td>
            <% bgcolor="FF6600"; %>
            <c:if test = "${user.clearance_elect == 'Completed'}">      
			   <% bgcolor="green"; %>>
			</c:if>
            <td bgcolor=<%=bgcolor %>><c:out value="${user.clearance_elect}" /></td>
            <td><c:out value="${user.date_10}" /></td>
          </tr>
          <tr>
            <td>10</td>
            <td colspan="2">Issuance of Work Order </td>
            <% bgcolor="FF6600"; %>
            <c:if test = "${user.work_order == 'Completed'}">      
			   <% bgcolor="green"; %>>
			</c:if>
            <td bgcolor=<%=bgcolor %>><c:out value="${user.work_order}" /></td>
            <td><c:out value="${user.date_11}" /></td>
          </tr>
          <tr>
            <td>11</td>
            <td colspan="2">Connection</td>
            <% bgcolor="FF6600"; %>
            <c:if test = "${user.connection == 'Completed'}">      
			   <% bgcolor="green"; %>>
			</c:if>
            <td bgcolor=<%=bgcolor %>><c:out value="${user.connection}" /></td>
            <td><c:out value="${user.date_12}" /></td>
          </tr>
          <tr>
            <td height="85">13</td>
            <td width="240">Message to the Consumer, if any </td>
             <td  colspan="3"><c:out value="${user.message}" /></td>
          </tr>
          <tr>
          </c:forEach>
            <td colspan="5"><label>
              <div align="center"> <br>
              
                <br>
            </div></label></td>
          </tr>
  </table>
  </form>
        <p align="left">&nbsp;</p>
        <p align="left">&nbsp; </p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
</div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
 </form>
</body>
</html>