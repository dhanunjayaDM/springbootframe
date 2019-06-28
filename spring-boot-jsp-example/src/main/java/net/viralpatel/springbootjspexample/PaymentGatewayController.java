package net.viralpatel.springbootjspexample;


import java.text.ParseException;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PaymentGatewayController 
{
	@Autowired
	private PaymentGatewayService paymentGatewayService;
	
	@GetMapping("/meTrnReq")
	public String meTrnCardReq(Model model) {
		model.addAttribute("pg",new PaymentGateway());
		return "meTrnReq";
	}
	@PostMapping("/meTrnCardReq")
	public String PgReq(HttpServletRequest req,HttpServletResponse res) throws ParseException {
		System.out.println("///controller: begin///");
		Integer id=Integer.parseInt(req.getParameter("id"));
		String mid=req.getParameter("mid");
		String encKey= req.getParameter("encKey");
		Integer hdnOrderID=Integer.parseInt(req.getParameter("hdnOrderID"));
		Integer trnAmt=Integer.parseInt(req.getParameter("trnAmt"));
		String currency=req.getParameter("currency");
		String meTransReqType=req.getParameter("meTransReqType");
		String trnRemarks=req.getParameter("trnRemarks");
		/*String  recPeriod=req.getParameter("recPeriod");
		String  recDay=req.getParameter("recDay");
		String  noOfRec=req.getParameter("noOfRec");*/
		String resUrl=req.getParameter("resUrl");
//		Long  cardNo=Long.parseLong(req.getParameter("cardNo"));
//		Date expDate=new SimpleDateFormat("dd/MM/yy").parse(req.getParameter("expDate"));
//		//Date  expDate=req.getParameter("expDate");
//		Integer  cvv=Integer.parseInt(req.getParameter("cvv"));
//		String nameOnCard= req.getParameter("nameOnCard");
//		String  payTypeCode=req.getParameter("payTypeCode");
		PaymentGateway paymentGateway=new PaymentGateway(id, mid, encKey, hdnOrderID, trnAmt, currency, meTransReqType, trnRemarks, resUrl);
		paymentGatewayService.createPayment(paymentGateway);
		System.out.println("///controller: end///");
		return "meTrnPay";
	}
	
	@GetMapping("/")
    public ModelAndView show() {
       // model.addAttribute("pg", new PaymentGateway());
		System.out.println("//controller://");
        return new ModelAndView("transType");
    }
	
	
	@GetMapping("/meTrnStatusReq")
    public ModelAndView pgstatusReq(HttpServletRequest req,HttpServletResponse res) {
       // model.addAttribute("pg", new PaymentGateway());
		System.out.println("//controller://  meTrnStatusReq");
        return new ModelAndView("meTrnStatusReq");
    }
	
	
	@PostMapping("/meTrnStatusSuccess")
    public ModelAndView pgTrnStatusSuccess(HttpServletRequest req,HttpServletResponse res) {
       // model.addAttribute("pg", new PaymentGateway());
		System.out.println("//controller://  meTrnStatusSuccess");
        return new ModelAndView("meTrnStatusSuccess");
    }
	
	
	@GetMapping("/meTrnCancelReq")
    public ModelAndView pgcancelreq(HttpServletRequest req,HttpServletResponse res) {
       // model.addAttribute("pg", new PaymentGateway());
		System.out.println("//controller://   meTrnCancelReq");
        return new ModelAndView("meTrnCancelReq");
    }
	
	@PostMapping("/meTrnCancelSuccess")
    public ModelAndView pgcancelsuccess(HttpServletRequest req,HttpServletResponse res) {
       // model.addAttribute("pg", new PaymentGateway());
		System.out.println("//controller://  meTrnCancelSuccess");
        return new ModelAndView("meTrnCancelSuccess");
    }
	
	
	@GetMapping("/meTrnRefundReq")
    public ModelAndView pgRefundReq(HttpServletRequest req,HttpServletResponse res) {
       // model.addAttribute("pg", new PaymentGateway());
		System.out.println("//controller://  meTrnRefundReq");
        return new ModelAndView("meTrnRefundReq");
    }
	
	@PostMapping("/meTrnRefundSuccess")
    public ModelAndView pgRefundSuccess(HttpServletRequest req,HttpServletResponse res) {
       // model.addAttribute("pg", new PaymentGateway());
		System.out.println("//controller://  meTrnRefundSuccess");
        return new ModelAndView("meTrnRefundSuccess");
    }
	
	@GetMapping("/meTrnResKey")
    public ModelAndView pgTrnResKey(HttpServletRequest req,HttpServletResponse res) {
       // model.addAttribute("pg", new PaymentGateway());
		System.out.println("//controller://  meTrnStatusReq");
        return new ModelAndView("meTrnResKey");
    }
	
	
	@PostMapping("/meTrnSuccess")
    public ModelAndView pgTrnSuccess(HttpServletRequest req,HttpServletResponse res) {
       // model.addAttribute("pg", new PaymentGateway());
		System.out.println("//controller://  meTrnStatusSuccess");
        return new ModelAndView("meTrnSuccess");
    }


}
