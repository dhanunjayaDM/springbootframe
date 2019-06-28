package com.pg.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class PaymentGateway {
	@Id
	private Integer id;
	
	private Integer mid;
	
	private String encKey;
	private Integer hdnOrderID;
	private Integer trnAmt;
	private String currency;
	private String meTransReqType;
	private String trnRemarks;
	private String recPeriod;
	private String recDay;
	private String noOfRec;
	private String resUrl;
	private Integer cardNo;
	private Integer expDate;
	private Integer cvv;
	private String nameOnCard;
	private String payTypeCode;
	
	
	public PaymentGateway() {
		
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getMid() {
		return mid;
	}
	public void setMid(Integer mid) {
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
	public PaymentGateway(Integer id, Integer mid, String encKey, Integer hdnOrderID, Integer trnAmt, String currency,
			String meTransReqType, String trnRemarks, String recPeriod, String recDay, String noOfRec, String resUrl,
			Integer cardNo, Integer expDate, Integer cvv, String nameOnCard, String payTypeCode) {
		super();
		this.id = id;
		this.mid = mid;
		this.encKey = encKey;
		this.hdnOrderID = hdnOrderID;
		this.trnAmt = trnAmt;
		this.currency = currency;
		this.meTransReqType = meTransReqType;
		this.trnRemarks = trnRemarks;
		this.recPeriod = recPeriod;
		this.recDay = recDay;
		this.noOfRec = noOfRec;
		this.resUrl = resUrl;
		this.cardNo = cardNo;
		this.expDate = expDate;
		this.cvv = cvv;
		this.nameOnCard = nameOnCard;
		this.payTypeCode = payTypeCode;
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
	public String getRecPeriod() {
		return recPeriod;
	}
	public void setRecPeriod(String recPeriod) {
		this.recPeriod = recPeriod;
	}
	public String getRecDay() {
		return recDay;
	}
	public void setRecDay(String recDay) {
		this.recDay = recDay;
	}
	public String getNoOfRec() {
		return noOfRec;
	}
	public void setNoOfRec(String noOfRec) {
		this.noOfRec = noOfRec;
	}
	public String getResUrl() {
		return resUrl;
	}
	public void setResUrl(String resUrl) {
		this.resUrl = resUrl;
	}
	public Integer getCardNo() {
		return cardNo;
	}
	public void setCardNo(Integer cardNo) {
		this.cardNo = cardNo;
	}
	public Integer getExpDate() {
		return expDate;
	}
	public void setExpDate(Integer expDate) {
		this.expDate = expDate;
	}
	public Integer getCvv() {
		return cvv;
	}
	public void setCvv(Integer cvv) {
		this.cvv = cvv;
	}
	public String getNameOnCard() {
		return nameOnCard;
	}
	public void setNameOnCard(String nameOnCard) {
		this.nameOnCard = nameOnCard;
	}
	public String getPayTypeCode() {
		return payTypeCode;
	}
	public void setPayTypeCode(String payTypeCode) {
		this.payTypeCode = payTypeCode;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cardNo == null) ? 0 : cardNo.hashCode());
		result = prime * result + ((currency == null) ? 0 : currency.hashCode());
		result = prime * result + ((cvv == null) ? 0 : cvv.hashCode());
		result = prime * result + ((encKey == null) ? 0 : encKey.hashCode());
		result = prime * result + ((expDate == null) ? 0 : expDate.hashCode());
		result = prime * result + ((hdnOrderID == null) ? 0 : hdnOrderID.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((meTransReqType == null) ? 0 : meTransReqType.hashCode());
		result = prime * result + ((mid == null) ? 0 : mid.hashCode());
		result = prime * result + ((nameOnCard == null) ? 0 : nameOnCard.hashCode());
		result = prime * result + ((noOfRec == null) ? 0 : noOfRec.hashCode());
		result = prime * result + ((payTypeCode == null) ? 0 : payTypeCode.hashCode());
		result = prime * result + ((recDay == null) ? 0 : recDay.hashCode());
		result = prime * result + ((recPeriod == null) ? 0 : recPeriod.hashCode());
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
		if (cardNo == null) {
			if (other.cardNo != null)
				return false;
		} else if (!cardNo.equals(other.cardNo))
			return false;
		if (currency == null) {
			if (other.currency != null)
				return false;
		} else if (!currency.equals(other.currency))
			return false;
		if (cvv == null) {
			if (other.cvv != null)
				return false;
		} else if (!cvv.equals(other.cvv))
			return false;
		if (encKey == null) {
			if (other.encKey != null)
				return false;
		} else if (!encKey.equals(other.encKey))
			return false;
		if (expDate == null) {
			if (other.expDate != null)
				return false;
		} else if (!expDate.equals(other.expDate))
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
		if (nameOnCard == null) {
			if (other.nameOnCard != null)
				return false;
		} else if (!nameOnCard.equals(other.nameOnCard))
			return false;
		if (noOfRec == null) {
			if (other.noOfRec != null)
				return false;
		} else if (!noOfRec.equals(other.noOfRec))
			return false;
		if (payTypeCode == null) {
			if (other.payTypeCode != null)
				return false;
		} else if (!payTypeCode.equals(other.payTypeCode))
			return false;
		if (recDay == null) {
			if (other.recDay != null)
				return false;
		} else if (!recDay.equals(other.recDay))
			return false;
		if (recPeriod == null) {
			if (other.recPeriod != null)
				return false;
		} else if (!recPeriod.equals(other.recPeriod))
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
				+ ", trnRemarks=" + trnRemarks + ", recPeriod=" + recPeriod + ", recDay=" + recDay + ", noOfRec="
				+ noOfRec + ", resUrl=" + resUrl + ", cardNo=" + cardNo + ", expDate=" + expDate + ", cvv=" + cvv
				+ ", nameOnCard=" + nameOnCard + ", payTypeCode=" + payTypeCode + "]";
	}
	
	
	
	
}
