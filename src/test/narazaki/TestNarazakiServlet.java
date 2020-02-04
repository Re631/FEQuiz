package test.narazaki;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TemplateServlet
 */
@WebServlet("/tset/testNarazakikServlet")
public class TestNarazakiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestNarazakiServlet() {
        super();
    }//const

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, 
	IOException {
		
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<title>hello world</title> ");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>hello</h1>");
		out.println("日本語文字表示のテスト<p>");
		out.println("First Servlet<p>");
		out.println("</body></html>");
	}//doGet
}//class
