package in.fssa.expressocafe.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.expressocafe.exception.ServiceException;
import in.fssa.expressocafe.model.Category;
import in.fssa.expressocafe.model.Product;
import in.fssa.expressocafe.service.CategoryService;
import in.fssa.expressocafe.service.ProductService;

/**
 * Servlet implementation class GetAllCategories
 */
@WebServlet("/GetAllCategories")
public class GetAllCategories extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetAllCategories() {
        super();

    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		CategoryService cateService = new CategoryService();
		try {
			
		List<Category> cateList = cateService.getAllCategories();
		request.setAttribute("cateList", cateList);
		RequestDispatcher rd = request.getRequestDispatcher("headers.jsp");
		rd.forward(request, response);
		
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		
	}

}


