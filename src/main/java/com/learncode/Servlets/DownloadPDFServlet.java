package com.learncode.Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.learncode.Dao.PaymentDao;
import com.learncode.Entity.Payment;
import com.learncode.helper.ConnectionProvider;


@WebServlet("/DownloadPDFServlet")
public class DownloadPDFServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public DownloadPDFServlet() {
        super();
        
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/pdf");
        
        
        
        
        
        String CardOwner= request.getParameter("CardName");
        
        response.setHeader("Content-Disposition", "attachment; filename=\"" + CardOwner + "_payment_details.pdf\"");
        
        PaymentDao paymentDao = new PaymentDao(ConnectionProvider.getConnection());
          
        
        Payment payment = paymentDao.getPaymentbYName(CardOwner);
                  
         String CardOwnerName = payment.getCardOwnerName();
         String CardNumber = payment.getCardNumber();
         String CardDate= payment.getExpiryDate();
         String CardCvv= payment.getCVV();
         
        
        System.out.println(payment);
        
        Document document = new Document();

        try {
        	
            
            PdfWriter.getInstance(document, response.getOutputStream());

            document.open();

           Paragraph paragraph = new Paragraph();
           
           paragraph.add("Thanks For Using Your Learncode Website ");

           paragraph.setAlignment(Element.ALIGN_CENTER); // Align center
           paragraph.setSpacingAfter(10); // Add some spacing after paragraph
          
           
           
           
            	
           document.add(paragraph);
           
            PdfPTable table = new PdfPTable(2); 

            
            
            table.addCell("CardOwnerName");
            table.addCell(CardOwnerName);

            table.addCell("CardNumber");
            table.addCell(CardNumber);

            table.addCell("CardExpiryDate");
            table.addCell(CardDate);

            
            table.addCell("Card Cvv");
            table.addCell(CardCvv);

            
            
            document.add(table);

            
            paragraph.add("Thanks For Buying Your Great Course ");

            paragraph.setAlignment(Element.ALIGN_CENTER); // Align center
            paragraph.setSpacingAfter(20); // Add some more spacing after paragraph
            document.add(paragraph);

            document.close();
            
            
            
        } catch (Exception e) {
            e.printStackTrace();
        } 
        
        
        
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
