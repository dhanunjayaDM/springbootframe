package net.viralpatel.springbootjspexample;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table
public class PaymentGateway {
	@Id
	private Integer id;
	
	private String mid;
	
	private String encKey;
	private Integer hdnOrderID;
	private Integer trnAmt;
	private String currency;
	private String meTransReqType;
	private String trnRemarks;
//	private String recPeriod;
//	private String recDay;
//	private String noOfRec;
	private String resUrl;
//	private Long cardNo;
//	@Temporal(TemporalType.DATE)
//	private Date expDate;
//	private Integer cvv;
//	private String nameOnCard;
//	private String payTypeCode;
	
	
	public PaymentGateway() {
		
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getEncKey() {
		return encKey;
	}
	public void setEncKey(String encKey) {
		this.encKey = encKey;
	}
	public Integer getHdnOrderID() {
		return hdnOrderID;
	}
	public void setHdnOrderID(Integer hdnOrderID) {
		this.hdnOrderID = hdnOrderID;
	}
	public Integer getTrnAmt() {
		return trnAmt;
	}
	public void setTrnAmt(Integer trnAmt) {
		this.trnAmt = trnAmt;
	}
	public PaymentGateway(Integer id, String mid, String encKey, Integer hdnOrderID, Integer trnAmt, String currency,
			String meTransReqType, String trnRemarks, String resUrl) {
		super();
		this.id = id;
		this.mid = mid;
		this.encKey = encKey;
		this.hdnOrderID = hdnOrderID;
		this.trnAmt = trnAmt;
		this.currency = currency;
		this.meTransReqType = meTransReqType;
		this.trnRemarks = trnRemarks;
		//this.recPeriod = recPeriod2;
		//this.recDay = recDay2;
		//this.noOfRec = noOfRec2;
		this.resUrl = resUrl;
		//this.cardNo = cardNo;
		//this.expDate = expDate;
	//	this.cvv = cvv;
	//	this.nameOnCard = nameOnCard;
	//	this.payTypeCode = payTypeCode;
	}
	public String getCurrency() {
		return currency;
	}
	public void setCurrency(String currency) {
		this.currency = currency;
	}
	public String getMeTransReqType() {
		return meTransReqType;
	}
	public void setMeTransReqType(String meTransReqType) {
		this.meTransReqType = meTransReqType;
	}
	public String getTrnRemarks() {
		return trnRemarks;
	}
	public void setTrnRemarks(String trnRemarks) {
		this.trnRemarks = trnRemarks;
	}
//	public String getRecPeriod() {
//		return recPeriod;
//	}
//	public void setRecPeriod(String recPeriod) {
//		this.recPeriod = recPeriod;
//	}
//	public String getRecDay() {
//		return recDay;
//	}
//	public void setRecDay(String recDay) {
//		this.recDay = recDay;
//	}
//	public String getNoOfRec() {
//		return noOfRec;
//	}
//	public void setNoOfRec(String noOfRec) {
//		this.noOfRec = noOfRec;
//	}
	public String getResUrl() {
		return resUrl;
	}
	public void setResUrl(String resUrl) {
		this.resUrl = resUrl;
	}
//	public Long getCardNo() {
//		return cardNo;
//	}
//	public void setCardNo(Long cardNo) {
//		this.cardNo = cardNo;
//	}
//	public Date getExpDate() {
//		return expDate;
//	}
//	public void setExpDate(Date expDate) {
//		this.expDate = expDate;
//	}
//	public Integer getCvv() {
//		return cvv;
//	}
//	public void setCvv(Integer cvv) {
//		this.cvv = cvv;
//	}
//	public String getNameOnCard() {
//		return nameOnCard;
//	}
//	public void setNameOnCard(String nameOnCard) {
//		this.nameOnCard = nameOnCard;
//	}
//	public String getPayTypeCode() {
//		return payTypeCode;
//	}
//	public void setPayTypeCode(String payTypeCode) {
//		this.payTypeCode = payTypeCode;
//	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		
		result = prime * result + ((currency == null) ? 0 : currency.hashCode());
	
		result = prime * result + ((encKey == null) ? 0 : encKey.hashCode());
	
		result = prime * result + ((hdnOrderID == null) ? 0 : hdnOrderID.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((meTransReqType == null) ? 0 : meTransReqType.hashCode());
		result = prime * result + ((mid == null) ? 0 : mid.hashCode());
		result = prime * result + ((resUrl == null) ? 0 : resUrl.hashCode());
		result = prime * result + ((trnAmt == null) ? 0 : trnAmt.hashCode());
		result = prime * result + ((trnRemarks == null) ? 0 : trnRemarks.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		PaymentGateway other = (PaymentGateway) obj;
		
		if (currency == null) {
			if (other.currency != null)
				return false;
		} else if (!currency.equals(other.currency))
			return false;
	
		if (encKey == null) {
			if (other.encKey != null)
				return false;
		} else if (!encKey.equals(other.encKey))
			return false;
	
		if (hdnOrderID == null) {
			if (other.hdnOrderID != null)
				return false;
		} else if (!hdnOrderID.equals(other.hdnOrderID))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (meTransReqType == null) {
			if (other.meTransReqType != null)
				return false;
		} else if (!meTransReqType.equals(other.meTransReqType))
			return false;
		if (mid == null) {
			if (other.mid != null)
				return false;
		} else if (!mid.equals(other.mid))
			return false;
		
		if (resUrl == null) {
			if (other.resUrl != null)
				return false;
		} else if (!resUrl.equals(other.resUrl))
			return false;
		if (trnAmt == null) {
			if (other.trnAmt != null)
				return false;
		} else if (!trnAmt.equals(other.trnAmt))
			return false;
		if (trnRemarks == null) {
			if (other.trnRemarks != null)
				return false;
		} else if (!trnRemarks.equals(other.trnRemarks))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "PaymentGateway [id=" + id + ", mid=" + mid + ", encKey=" + encKey + ", hdnOrderID=" + hdnOrderID
				+ ", trnAmt=" + trnAmt + ", currency=" + currency + ", meTransReqType=" + meTransReqType
				+ ", trnRemarks=" + trnRemarks + ", recPeriod=" + ", resUrl=" + resUrl  + "]";
	}
	
	
	
	
}
