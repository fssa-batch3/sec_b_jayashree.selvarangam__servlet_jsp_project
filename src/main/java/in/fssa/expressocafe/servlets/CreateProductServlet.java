package in.fssa.expressocafe.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import in.fssa.expressocafe.exception.ServiceException;

import in.fssa.expressocafe.exception.ValidationException;
import in.fssa.expressocafe.model.Category;
import in.fssa.expressocafe.model.Price;
import in.fssa.expressocafe.model.Product;
import in.fssa.expressocafe.model.SizeEnum;
import in.fssa.expressocafe.service.ProductService;

/**
 * Servlet implementation class CreateProductServlet
 */
@WebServlet("/createproduct")
public class CreateProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateProductServlet() {
        super();

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductService productService = new ProductService();
        PrintWriter out = response.getWriter();
        Gson gson = new Gson();
        
        String productName = request.getParameter("name");
        String productDescription = request.getParameter("description");
        Integer categoryId = Integer.parseInt(request.getParameter("categoryId"));
		
        Product newProduct = new Product();
        newProduct.setName(productName);
        newProduct.setDescription(productDescription);
        
        List<Price> priceList = new ArrayList<>();

        if (request.getParameter("large-price") != null) {
            double largePrice = Double.parseDouble(request.getParameter("large-price"));
            Price Lprice = new Price();
            Lprice.setPrice(largePrice);
            Lprice.setSize(SizeEnum.LARGE);
            priceList.add(Lprice);
        }

        if (request.getParameter("medium-price") != null) {
            double mediumPrice = Double.parseDouble(request.getParameter("medium-price"));
            Price Mprice = new Price();
            Mprice.setPrice(mediumPrice);
            Mprice.setSize(SizeEnum.MEDIUM);
            priceList.add(Mprice);
        }

        if (request.getParameter("small-price") != null) {
            double smallPrice = Double.parseDouble(request.getParameter("small-price"));
            Price Sprice = new Price();
            Sprice.setPrice(smallPrice);
            Sprice.setSize(SizeEnum.SMALL);
            priceList.add(Sprice);
        }
        
        Category cate1 = new Category();
        cate1.setCategoryId(categoryId);
        
        newProduct.setCategory(cate1);
        newProduct.setPriceList(priceList);
        try {
            productService.createProduct(newProduct);
            response.sendRedirect(request.getContextPath()+"/getProducts");
        } 
        catch (ServiceException e) {
			e.printStackTrace();
			out.println(e.getMessage());
			String getError = e.getMessage();
			response.sendRedirect("newproduct?error=" + getError);

		} 
        catch (ValidationException e) {
			e.printStackTrace();
			out.println(e.getMessage());
			String getError = e.getMessage();
			response.sendRedirect("newproduct?error=" + getError);

		}
    }


}
