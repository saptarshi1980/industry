package domain;

public class BillInfo {

	
	private String partyCode=null;
	private String billMonthWord=null;
	private String billMonth=null;
	private String billAmt=null;
	private String dueDate=null;
	
	
	public String getPartyCode() {
		return partyCode;
	}
	public void setPartyCode(String partyCode) {
		this.partyCode = partyCode;
	}
	public String getBillMonthWord() {
		return billMonthWord;
	}
	public void setBillMonthWord(String billMonthWord) {
		this.billMonthWord = billMonthWord;
	}
	public String getBillMonth() {
		return billMonth;
	}
	public void setBillMonth(String billMonth) {
		this.billMonth = billMonth;
	}
	public String getBillAmt() {
		return billAmt;
	}
	public void setBillAmt(String billAmt) {
		this.billAmt = billAmt;
	}
	public String getDueDate() {
		return dueDate;
	}
	public void setDueDate(String dueDate) {
		this.dueDate = dueDate;
	}
	
}
