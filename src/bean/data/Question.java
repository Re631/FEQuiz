package bean.data;

import java.sql.ResultSet;
import java.sql.SQLException;

/*
 * テーブル情報を保持
 */
public class Question {

	/*
	 * フィールド
	 */
	private int id;

	private String text;
	private String keyword;

	private int categoryID;


	/*
	 * メソッド
	 */
	public Question(ResultSet rs) throws SQLException {

		init(
			rs.getInt("id"),
			rs.getString("text"),
			rs.getString("keyword"),
			rs.getInt("category_id")
		);
	}//const

	public Question(int id, String text, String keyword, int categoryID) {

		init(id, text, keyword, categoryID);
	}//const


	private void init(int id, String text, String keyword, int categoryID) {

		this.id = id;

		this.text = text;
		this.keyword = keyword;

		this.categoryID = categoryID;
	}//init


	/*
	 * ゲッター
	 */
	public int getId() {
		return id;
	}

	public String getText() {
		return text;
	}

	public String getKeyword() {
		return keyword;
	}

	public int getCategoryID() {
		return categoryID;
	}
}// class