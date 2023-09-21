package in.fssa.expressocafe.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.expressocafe.exception.ServiceException;
import in.fssa.expressocafe.exception.ValidationException;
import in.fssa.expressocafe.model.DeliveryAddresses;
import in.fssa.expressocafe.service.DeliverAddressService;

/**
 * Servlet implementation class EditAddressServlet
 */
@WebServlet("/edit_address")
public class EditAddressServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditAddressServlet() {
        super();
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer addressId = Integer.parseInt(request.getParameter("address_id"));
		Integer userId = Integer.parseInt(request.getParameter("user_id"));
		DeliverAddressService d = new DeliverAddressService();
		DeliveryAddresses dA = null;
		
		 try {
			dA = d.findAddressById(addressId);
		} catch (ValidationException | ServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("editAddress",dA);
		request.setAttribute("addressId", addressId);
		request.setAttribute("userId", userId);
		RequestDispatcher rd = request.getRequestDispatcher("/editAddress.jsp");
		rd.forward(request,response);
	}

	

}
