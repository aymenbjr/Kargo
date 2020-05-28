package dao;

public class Encryption {
	public static String encrypt(String Password){
		String res="";
		char c;
		for(int i=0;i<Password.length();i++){
			c=Password.charAt(i);
			c += 12*i/4;
			res+=c;
		}
		return res;
	}
	
public static String decrypt(String Password){
	String res="";
	char c;
	for(int i=0;i<Password.length();i++){
		c=Password.charAt(i);
		c -= 12*i/4;
		res+=c;
	}
	return res;
	}

}
