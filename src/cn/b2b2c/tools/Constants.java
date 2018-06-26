package cn.b2b2c.tools;

public class Constants {
	public final static String USER_SESSION = "userSession";
	public final static String SYS_MESSAGE = "message";
	public final static int pageSize = 5;
	
	/**
     * json 格式返回数据的 status 标示说明
     */
    public static interface ReturnResult{
        public static int SUCCESS=1;
        public static int FAIL=-1;
    }
    /**
     * 前后台用户
     */
    public static interface  UserType{
        public static int PRE=0;
        public static int BACKEND=1;
    }
}
