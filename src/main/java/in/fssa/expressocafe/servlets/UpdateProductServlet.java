package in.fssa.expressocafe.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.expressocafe.exception.ServiceException;
import in.fssa.expressocafe.exception.ValidationException;
import in.fssa.expressocafe.model.Category;
import in.fssa.expressocafe.model.Product;
import in.fssa.expressocafe.service.ProductService;

/**
 * Servlet implementation class UpdateBookServlet
 */
@WebServlet("/product/update")
public class UpdateProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProductServlet() {
        super();
    }

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */

		
		protected void doPost(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			
			int productId = Integer.parseInt(request.getParameter("id"));
			String name = request.getParameter("name");
			String description = request.getParameter("description");
			int cateId = Integer.parseInt(request.getParameter("category"));
			
			ProductService productService = new ProductService();
			Product product = new Product();
			Category cate = new Category();
			cate.setCategoryId(cateId);
			product.setName(name);
			product.setDescription(description);
			product.setProduct_id(productId);
			product.setCategory(cate);
			
			PrintWriter out = response.getWriter();
			
			try {
				productService.updateProduct(product);
				out.println("Product updated successfully");
				response.sendRedirect(request.getContextPath()+ "/getProducts");
				
			} catch (ServiceException e) {
				e.printStackTrace();
				out.println(e.getMessage());
				throw new ServletException(e);
			} catch (ValidationException e) {
				e.printStackTrace();
				out.println(e.getMessage());
				throw new ServletException(e);
			}
		}
		
		
	

}
