

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Statement;

import domain.BillInfo;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;

/**
 * Servlet implementation class ForwardServlet
 */
@WebServlet("/InfoHandler.dpl")
public class InfoHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InfoHandler() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*System.out.println("========== At DPL Bill Payment Portal.........Ready To Dispatch Consumer's Request To Bill Desk Portal ============");
		String name=request.getParameter("name").toString();
		String amt= request.getParameter("amt").toString();
		String msg=name+"|"+amt;
		
		Cookie loginCookie = new Cookie("user",request.getSession().getId());
        loginCookie.setMaxAge(30*60);
        response.addCookie(loginCookie);
		request.getSession().setAttribute("msg", msg);
		response.sendRedirect("ForwardToGateway.dpl");*/
		
		//request.getRequestDispatcher("gateway.jsp").forward(request, response);
       
		Connection conn=new ConnDB().make_connection();
		String consNo=request.getParameter("con_id").toString();
		ArrayList<BillInfo> al=new ArrayList<BillInfo>();
		//String query="SELECT party_code,DATE_FORMAT(STR_TO_DATE(bill_month,'%y%m'),'%M-%Y') AS bill_month_word,bill_month,bill_amt,date_format(due_date,'%d-%m-%Y') as due_date FROM v_bill_info WHERE party_code='"+consNo+"' and due_date>=CURDATE()";
		
		String query="SELECT a.party_code,DATE_FORMAT(STR_TO_DATE(a.bill_month,'%y%m'),'%M-%Y') AS bill_month_word,a.bill_month,a.bill_amt,DATE_FORMAT(a.due_date,'%d-%m-%Y') AS due_date FROM v_bill_info a  WHERE a.party_code='"+consNo+"' AND a.due_date>=CURDATE() AND a.bill_month NOT IN (SELECT a.bill_month FROM v_bill_info a,TRANSACTION b WHERE b.consumer_no='"+consNo+"' AND b.consumer_no=a.party_code AND DATE_FORMAT(STR_TO_DATE(a.bill_month,'%y%m'),'%Y-%m')=DATE_FORMAT(b.bill_month,'%Y-%m') AND b.billdesk_status='0300' ) ";
		int counter=0;
		try{
			
			ResultSet rs=conn.createStatement().executeQuery(query);
			while(rs.next()){
				BillInfo billInfo=new BillInfo();
				billInfo.setPartyCode(rs.getString(1));
				billInfo.setBillMonthWord(rs.getString(2));
				billInfo.setBillMonth(rs.getString(3));
				billInfo.setBillAmt(rs.getString(4));
				billInfo.setDueDate(rs.getString(5));
				al.add(billInfo);
				counter++;
			}
			
						
		}catch(SQLException ex){
			ex.printStackTrace();
		}finally{
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if(counter>0)
		{	
		request.setAttribute("al", al);
		request.getRequestDispatcher("gateway.jsp").forward(request, response);
		}else{
			response.sendRedirect("index.jsp");
		}
		
	}
  

}
