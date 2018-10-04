package servlet;

import dao.CartDAO;
import impl.CartDAOImpl;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "UpdateAddressInCart", urlPatterns = {"/UpdateAddressInCart"})
public class UpdateAddressInCart extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    
        String email = req.getParameter("email");
        String address = req.getParameter("address");
        String billingaddress = req.getParameter("billingaddress");
        String name = req.getParameter("name");
        
        CartDAO cdao = new CartDAOImpl();
        
        cdao.updateAddressAndBilling(email, address, name, billingaddress);
        
        resp.sendRedirect("Checkout.jsp?email=" + email);
    }
    
    
    
    
}
