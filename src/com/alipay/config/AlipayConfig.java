package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016091500516852";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQC4z2MMcYbJGChVxquieHT3BVN9eAOtkYXVsNxycqx+RW+Gfeg96Rd1BSMKPjhxCl230li1cNqEI9WLBelPj/MgpSm0zgk0lgJwdIRRUjDrOzxVppYXSbOf049+SI4/qsfaMkXvC15AFJ4HvekkCioGLtFsPcSvk65ViMcjamL0JsPSNPfHPKSjBLb+xdw+ebLxS6JAwntGnu81CBv+vvC30MsSx5aBX8nmKAvkzK7P1zpBwqabJuvnMnRn5IUdrOfDcnqfNf+CddwzwG7K0AI5+37xWobDl/aVwFRYJvJUxoh5bI6AkZrTjmoeW8h9DpMnnvKagwUswaOZm/MVWMfRAgMBAAECggEAbFBP0tkuj+lyqmMX8M78blJWznBqZ22krMtNSF5hLlhvtrlQRgi40MLD+Jri5Y2Xw8aqaxzLVSrTWvmJ9jF94yIpwWgICSPqJhKEAk1TkmpTQDe0O83cUs3hibfodvQW0ZEpX6KgCJqMzCjH3XF/k8QYxYGmJuk9AbB6Vg1iFYkrwPmItXl4bFBqNjXb/5F8POzk5xWZQTz3Egp0g31FaFB5QdkvUH1YiKqtkOrWjW5s3AmZvYKLQ06MDFtHIWFPo0zZj9HF/EKHjCiORpe9nLuxJBhl/FSKUvdYBvBrmztdQk2rH/EUTdMA07jMUJqFzp/+dCsaatYB4Nb9WwzSgQKBgQDZ9M//Qjq8E9St7e+U9s4Kgo3um+IP7NCK8EtDy+7ANuuwWEqktlBU3r26mZReI5pmQqNTjDA/obVTXKx8yibPdMUNJSuAWK4bj9eHG0csRG/XxJDPNp/ExuLRuelwidorJ71y6Cph/2Yqnf3mNCwuc0Q48zR7u8Fy4xVghv03qQKBgQDZEXcx3wlA/baYzCk9+sK7tG9xeYm00cYEugfBMQdKBQV1dnMSmaRl8IGrf+xuh6dpaGzaN0ICFw/oko+7rNgiKtfxtFmqAVIau3MbK9lETPQ9bjoxnuUJAjbQTXwnWhRdOl0o3HNnYkjqSsh+9F4QqlhRkqlqfWhzovcJBK+H6QKBgQDU0/yDOi3WV9r21/95y6KYmrFzjR4rBMkC0u/7zNhfM4HkGeMRgcFhjntgCfXaExQCxRFtVNgMWqCQPU9lL5TEQTblxiT7WBzzZvtDv7w5Gr7Hx/bLkIBkiv0TZGHx9XpnZ4/T86bnOJiQBuTV9J4r4Xx9y+a06DtXLy1Bq675uQKBgAnvur0VsJ7A/nLQJbMon3FoORHAtoUIdUASI/i7/dFtmWpfGbVoQxZHhCgNmw0UOJ2iohj7HpJp69iBnQLCTsKBo5D06IXXuaJvoj1ELJXrz+JgAVn0JBfdehTe9yf1/6ik207biIza+ut+sN7e4M9yfMh/JjIxu25Pr29CP6bBAoGBALVsfrOJvGf6InAJttFdJQdPMeFDd6Ic+WoeZMd1s7snDd8wBzzYxiqq7Qmj7vnjI01lChVS+lEZ4x1t+6g3Qvt4Kik3IMzuD2f8LF93+8CKvKdYfk86IR0aO9/24znikqu+NygzJbEuc+NOM4DajxcrQq5OOMXRdXUs2MjFmjt4";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAuM9jDHGGyRgoVcaronh09wVTfXgDrZGF1bDccnKsfkVvhn3oPekXdQUjCj44cQpdt9JYtXDahCPViwXpT4/zIKUptM4JNJYCcHSEUVIw6zs8VaaWF0mzn9OPfkiOP6rH2jJF7wteQBSeB73pJAoqBi7RbD3Er5OuVYjHI2pi9CbD0jT3xzykowS2/sXcPnmy8UuiQMJ7Rp7vNQgb/r7wt9DLEseWgV/J5igL5Myuz9c6QcKmmybr5zJ0Z+SFHaznw3J6nzX/gnXcM8BuytACOft+8VqGw5f2lcBUWCbyVMaIeWyOgJGa045qHlvIfQ6TJ57ymoMFLMGjmZvzFVjH0QIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://localhost:8080/B2b2c/notify_url.jsp";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://localhost:8080/B2b2c/car/return_url.view";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

