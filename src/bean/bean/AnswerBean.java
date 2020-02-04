package bean.bean;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bean.data.Answer;
import global.GlobalDB;

/*
 *
 */
public class AnswerBean implements Serializable {

	/*
	 * フィールド
	 */
	// クラス名
	private static final String CLASS_NAME = Thread.currentThread().getStackTrace()[1].getClassName();

	//SQL
	public static final String SQL = ""
			+ " SELECT question_id, number, text, bool"
			+ " FROM answer"
			+ " ORDER BY question_id, number ASC";

	// テーブル情報
	private ArrayList<Answer> array = null;

	//エラー情報
	private boolean isException = false;
	private String message = null;


	/*
	 * メソッド
	 */
	public AnswerBean() {
		this.init(AnswerBean.SQL);
	}//const

	public AnswerBean(String sql) {
		this.init(sql);
	}//const


	private void init(String sql) {

		/*
		 * DB接続処理
		 */

		try {
			Class.forName("org.postgresql.Driver");
			ResultSet rs = null;

			try (
					Connection con = DriverManager.getConnection(GlobalDB.RUN_DB_URL, GlobalDB.RUN_DB_ROLE_NAME, GlobalDB.RUN_DB_PASSWORD);
					PreparedStatement pstmt1 = con.prepareStatement(sql.toString(), ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);) {
				/*
				 * DB接続後
				 */
				//問い合わせ実行
				rs = pstmt1.executeQuery();

				//データ取出し
				array = new ArrayList<Answer>(1000);
				while (rs.next()) {
					array.add(new Answer(rs));
				}//while
				array.trimToSize();

			} catch (SQLException e) {
				System.out.println("発生場所:" + CLASS_NAME);
				System.out.println("メッセージ:" + e.getMessage());
				System.out.println("SQLステート:" + e.getSQLState());
				System.out.println("SQLに誤りがあるか、コネクションが確立していません。");

				this.setIsException("データベースサーバーに接続が失敗したか、データの取得に失敗しました。<br />" + CLASS_NAME);
			} finally {
			} //try

		} catch (ClassNotFoundException e) {
			System.out.println("発生場所:" + CLASS_NAME);
			System.out.println("メッセージ:" + e.getMessage());
			System.out.println("JDBCドライバが見つかりません");

			this.setIsException("データベースサーバー用のドライバがありません。<br />" + CLASS_NAME);
		}finally {
		}// try
	}//init


	/*
	 * セッター
	 */
	private void setIsException(String message) {
		this.isException = true;
		this.message = message;
	}//private method


	/*
	 * ゲッター
	 */
	public ArrayList<Answer> getArray() {
		return array;
	}

	public static String getClassName() {
		return CLASS_NAME;
	}

	public boolean isException() {
		return isException;
	}

	public String getMessage() {
		return message;
	}

}//class
