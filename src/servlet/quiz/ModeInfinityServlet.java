package servlet.quiz;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.data.Answer;
import bean.data.Question;

/**
 * Servlet implementation class TemplateServlet
 */
@WebServlet("/quiz/ModeInfinity")
public class ModeInfinityServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModeInfinityServlet() {
        super();
    }//const

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}//doGet

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ArrayList<Question> questionList = new ArrayList<>();
		ArrayList<Answer> answerList = new ArrayList<>();

		questionList.add(new Question(101, "これが問題です", "これは問題のキーワードです", 101));
		answerList.add(new Answer(101, 0, "これは解答0です", false));
		answerList.add(new Answer(101, 1, "これは解答1です", false));
		answerList.add(new Answer(101, 2, "これは解答2です", true));
		answerList.add(new Answer(101, 3, "これは解答3です", false));

		Question question =  new Question(101, "これが問題です", "これは問題のキーワードです", 101);


		request.setAttribute("question", question);
		request.setAttribute("answer", answerList);




		request.getRequestDispatcher("../quiz/mode-infinity.jsp").forward(request, response);
	}//doPost
}//class
