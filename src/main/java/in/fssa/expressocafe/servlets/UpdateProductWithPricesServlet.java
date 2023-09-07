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

import in.fssa.expressocafe.exception.ServiceException;
import in.fssa.expressocafe.exception.ValidationException;
import in.fssa.expressocafe.model.Category;
import in.fssa.expressocafe.model.Price;
import in.fssa.expressocafe.model.Product;
import in.fssa.expressocafe.model.SizeEnum;
import in.fssa.expressocafe.service.ProductService;

/**
 * Servlet implementation class UpdateProductWithPricesServlet
 */
@WebServlet("/update_with_prices")
public class UpdateProductWithPricesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProductWithPricesServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int productId = Integer.parseInt(request.getParameter("productId"));
		String name = request.getParameter("name");
		String description = request.getParameter("description");
		Integer categoryId = Integer.parseInt(request.getParameter("categoryId"));
        Product newProduct = new Product();
        newProduct.setName(name);
        newProduct.setDescription(description);
        newProduct.setProduct_id(productId);
        List<Price> priceList = new ArrayList<>();

        if (request.getParameter("largePrice") != null) {
            double largePrice = Double.parseDouble(request.getParameter("largePrice"));
            System.out.print(largePrice);
            Price Lprice = new Price();
            Lprice.setPrice(largePrice);
            Lprice.setSize(SizeEnum.LARGE);
            priceList.add(Lprice);
        }

        if (request.getParameter("mediumPrice") != null) {
            double mediumPrice = Double.parseDouble(request.getParameter("mediumPrice"));
            System.out.print(mediumPrice);

            Price Mprice = new Price();
            Mprice.setPrice(mediumPrice);
            Mprice.setSize(SizeEnum.MEDIUM);
            priceList.add(Mprice);
        }

        if (request.getParameter("smallPrice") != null) {
            double smallPrice = Double.parseDouble(request.getParameter("smallPrice"));
            System.out.print(smallPrice);
            Price Sprice = new Price();
            Sprice.setPrice(smallPrice);
            Sprice.setSize(SizeEnum.SMALL);
            priceList.add(Sprice);
        }
        
        Category cate1 = new Category();
        cate1.setCategoryId(categoryId);
        
        newProduct.setCategory(cate1);
        newProduct.setPriceList(priceList);
      
		
		PrintWriter out = response.getWriter();
		ProductService productService= new 	ProductService();
		try {
			productService.updateProductWithPrices(newProduct);
			out.println("Product updated successfully");
			response.sendRedirect(request.getContextPath()+ "/getProducts");
			
		} catch (ServiceException e) {
			e.printStackTrace();
			out.println(e.getMessage());
			request.setAttribute("ERRORDETAILS", e.getMessage());
			RequestDispatcher rd = request.getRequestDispatcher("edit_product_with_prices?productId=" +productId );
			rd.forward(request, response);
		} catch (ValidationException e) {
			e.printStackTrace();
			out.println(e.getMessage());
			request.setAttribute("ERRORDETAILS", e.getMessage());
			RequestDispatcher rd = request.getRequestDispatcher("edit_product_with_prices?productId=" +productId );
			rd.forward(request, response);
		}
	}


}
