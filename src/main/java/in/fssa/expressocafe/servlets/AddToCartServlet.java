package in.fssa.expressocafe.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.fssa.expressocafe.DAO.SizeDAO;
import in.fssa.expressocafe.exception.PersistanceException;
import in.fssa.expressocafe.exception.ServiceException;
import in.fssa.expressocafe.exception.ValidationException;
import in.fssa.expressocafe.model.Cart;
import in.fssa.expressocafe.model.Category;
import in.fssa.expressocafe.model.Price;
import in.fssa.expressocafe.model.Product;
import in.fssa.expressocafe.model.Size;
import in.fssa.expressocafe.service.ProductService;

/**
 * Servlet implementation class AddToCartServlet
 */
@WebServlet("/add_to_cart_servlet")
public class AddToCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			/* response.setContentType("text/html;charset=UTF-8"); */
				
				if(request.getParameter("product_id")==null&&request.getParameter("size_id")==null&&request.getParameter("category_id")==null) {
					
					
					
					
		            RequestDispatcher re = request.getRequestDispatcher("/addtocartview.jsp");
		            re.forward(request, response);
				}
				else {
				PrintWriter out = response.getWriter();
//	        	out.print("add to cart servlet");
			
	            List<Cart> cartList = new ArrayList<>();
	            int id = Integer.parseInt(request.getParameter("product_id"));
	            int sizeId = Integer.parseInt(request.getParameter("size_id"));
	            int cateId = Integer.parseInt(request.getParameter("category_id"));
	             String auth = (String) request.getSession().getAttribute("loggedUser");
	             ProductService prod = new ProductService();
	             Product pro = new Product();
	             Size s = new Size();
	             try { 
					pro = prod.getProductWithProductIdAndSizeId(id, sizeId);
		            SizeDAO size = new SizeDAO();
					s = size.getSizeById(sizeId);
				} catch (ValidationException | ServiceException e) {
					e.printStackTrace();
				}catch (PersistanceException e) {
					e.printStackTrace();
				}
	             
	         	Price price1 = new Price(); 
	         	price1.setPrice(pro.getPrice());
	         	price1.setPriceId(pro.getPriceObj().getPriceId());
	             
	         	Category catego = new Category();
	         	catego.setCategoryId(cateId);
	            Cart cm = new Cart();
	            cm.setProduct_id(id);
	            cm.setCategory(catego);
	            cm.setSizeId(sizeId);
	            cm.setName(pro.getName());
	            
	            cm.setPrice(pro.getPriceObj().getPrice());
	            
	            cm.setPriceObj(price1);
	           
	            cm.setSizeName(s.getSizeName());
	            cm.setQuantity(1);
	            cm.setEmail(auth);
	            
	          HttpSession session = request.getSession();
	          List<Cart> cart_list = (List<Cart>) session.getAttribute("cart_list");
	            
	            if (cart_list == null) {
	                cartList.add(cm);
	                session.setAttribute("cart_list", cartList);
					/* response.sendRedirect("index.jsp"); */
	            } else {
	                cartList = cart_list;

	                boolean exist = false;
	                for (Cart c : cart_list){
	                    if (c.getProduct_id() == id && c.getSizeId()== sizeId){
	                        exist = true;
	                        out.println("<h3 style='color:crimson; text-align: center'>Item Already in Cart. <a href='cart.jsp'>GO to Cart Page</a></h3>");
	                    }
	                }
	                if (!exist) {
	                    cartList.add(cm);
	                    System.out.println(cartList);
	                  
						/* response.sendRedirect("index.jsp"); */
	                }
	            }
	            
	            RequestDispatcher re = request.getRequestDispatcher("/addtocartview.jsp");
	            re.forward(request, response);
				}
	            
	        }
}
	