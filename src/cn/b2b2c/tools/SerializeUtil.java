package cn.b2b2c.tools;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.List;

import cn.b2b2c.pojo.ProductCategory;

/**
 * @author Administrator
 *
 */

public class SerializeUtil {
	// 序列化:
	// 把对象转化为对象数组 ,然后转换为字节数组
	// 把对象转换为字节数组
	public static byte[] serialize(Object object) {

		ObjectOutputStream oos = null; // 对象输出流
		ByteArrayOutputStream baos = null; // 字节数组输出流
		try {

			baos = new ByteArrayOutputStream();
			// 对象输出流
			oos = new ObjectOutputStream(baos); // 字节数组
			oos.writeObject(object);
			//
			byte[] bytes = baos.toByteArray();// 字节数组

			return bytes;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}

	/***
	 * 从字节数组转换为对象
	 * 
	 * @param bytes
	 * @return
	 */

	public static Object unserialize(byte[] bytes) {
		ByteArrayInputStream bais = null;
		try {
			// (1)转换字节流对象:
			bais = new ByteArrayInputStream(bytes);
			// (2)把字节流转换对象
			ObjectInputStream ois = new ObjectInputStream(bais); // 对象输入流 ,能把流转换为对象
			return ois.readObject();
		} catch (Exception e) {
			e.printStackTrace();

		}
		return null;
	}
	//

	public static byte[] serializeList(List<Object> value) {

		ObjectOutputStream oos = null; // 对象输出流
		ByteArrayOutputStream baos = null; // 字节数组输出流
		try {

			baos = new ByteArrayOutputStream();
			// 对象输出流
			oos = new ObjectOutputStream(baos); // 字节数组

			// 把列表写入(***)
			for (Object object1 : value) {
				oos.writeObject(object1); // 把对象写入对象输出流
			}

			//
			//byte[] bytes = baos.toByteArray();// 字节数组
			
			return baos.toByteArray();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;

	}
	
	public static byte[] serializeListPro(List<ProductCategory> value) {

		ObjectOutputStream oos = null; // 对象输出流
		ByteArrayOutputStream baos = null; // 字节数组输出流
		try {

			baos = new ByteArrayOutputStream();
			// 对象输出流
			oos = new ObjectOutputStream(baos); // 字节数组

			// 把列表写入(***)
			for (ProductCategory object1 : value) {
				oos.writeObject(object1); // 把对象写入对象输出流
			}

			//
			//byte[] bytes = baos.toByteArray();// 字节数组
			
			return baos.toByteArray();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;

	}
	

	///////////////
	public static List<Object> unserializeList(byte[] bytes) {
		ByteArrayInputStream bais = null;
		List<Object> list = new ArrayList<Object>();

		try {
			// (1)转换字节流对象
			bais = new ByteArrayInputStream(bytes);
			// (2)把字节流转换对象
			ObjectInputStream ois = new ObjectInputStream(bais); // 对象输入流 ,能把流转换为对象

			while (true) {
				Object obj = ois.readObject(); // (1)***读取对象
				list.add(obj); // (2)***把对象加入列表
			}			
			// return list ;
		} catch (EOFException e1) {
			return list; // （3）***&返回列表

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}
	
	public static List<ProductCategory> unserializeListPro(byte[] bytes) {
		ByteArrayInputStream bais = null;
		List<ProductCategory> list = new ArrayList<ProductCategory>();

		try {
			// (1)转换字节流对象
			bais = new ByteArrayInputStream(bytes);
			// (2)把字节流转换对象
			ObjectInputStream ois = new ObjectInputStream(bais); // 对象输入流 ,能把流转换为对象

			while (true) {
				ProductCategory obj = (ProductCategory) ois.readObject(); // (1)***读取对象
				list.add(obj); // (2)***把对象加入列表
			}			
			 //return list ;
		} catch (EOFException e1) {
			return list; // （3）***&返回列表

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}

}
