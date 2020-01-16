package bean.data;

import java.sql.ResultSet;
import java.sql.SQLException;

/*
 * テーブル情報を保持
 */
public class Category {

	/*
	 * フィールド
	 */
	private int id;

	private String name;


	/*
	 * メソッド
	 */
	public Category(ResultSet rs) throws SQLException {

		init(
			rs.getInt("id"),
			rs.getString("name")
		);
	}//const

	public Category(int id, String name) {

		init(id, name);
	}//const


	private void init(int id, String name){

		this.id = id;

		this.name = name;
	}//init


	/*
	 * ゲッター
	 */
	public int getID() {
		return id;
	}

	public String getName() {
		return name;
	}

}// class