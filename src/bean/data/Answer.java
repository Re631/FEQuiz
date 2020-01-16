package bean.data;

import java.sql.ResultSet;
import java.sql.SQLException;

/*
 * テーブル情報を保持
 */
public class Answer {

	/*
	 * フィールド
	 */
	private int questionID;
	private int number;

	private String text;
	private boolean bool;


	/*
	 * メソッド
	 */
	public Answer(ResultSet rs) throws SQLException {

		init(
			rs.getInt("question_id"),
			rs.getInt("number"),
			rs.getString("text"),
			rs.getBoolean("bool")
		);
	}//const

	public Answer(int questionID, int number, String text, boolean bool) {

		init(questionID, number, text, bool);
	}//const


	private void init(int questionID, int number, String text, boolean bool) {

		this.questionID = questionID;
		this.number = number;

		this.text = text;

		this.bool = bool;
	}//init


	/*
	 * ゲッター
	 */
	public int getQuestionID() {
		return questionID;
	}

	public int getNumber() {
		return number;
	}

	public String getText() {
		return text;
	}

	public boolean isBool() {
		return bool;
	}
}// class