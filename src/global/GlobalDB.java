package global;

public class GlobalDB {

	//DB接続プロパティ
	public static final String RUN_DB_HOST = "10.22.112.210";
	public static final String RUN_DB_PORT = "5432";
	public static final String RUN_DB_NAME = "teamd";

	public static final String RUN_DB_URL = "jdbc:postgresql://" + RUN_DB_HOST + ":" + RUN_DB_PORT + "/" + RUN_DB_NAME;

	public static final String RUN_DB_ROLE_NAME = "postgres";
	public static final String RUN_DB_PASSWORD = "1111";


}//class