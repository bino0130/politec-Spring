package pkg;

import java.util.Arrays;
import java.util.Base64;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class Decryption {

	public static void main(String[] args) {
		String key="12345678901234567890123456789012";
		
		System.out.println(encrypt(key, "안녕 하이 헬로우"));
		
		System.out.println(decrypt(key, "WgupzdhmUQGqNRpluLcdS9/83MH/ASsFotkjpGvF/mI="));
	}
	
	public static String encrypt(String key, String text) {
	    String cipherText = "";
	    try {
	        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
	        byte[] ivBytes = Arrays.copyOfRange(key.getBytes("UTF-8"), 0, cipher.getBlockSize());
	        IvParameterSpec ivspec = new IvParameterSpec(ivBytes);
	        cipher.init(Cipher.ENCRYPT_MODE, new SecretKeySpec(key.getBytes("UTF-8"), "AES"), ivspec);
	        byte[] encryptedBytes = cipher.doFinal(text.getBytes("UTF-8"));
	        cipherText = new String(Base64.getEncoder().encode(encryptedBytes), "UTF-8");
	    } catch (Exception e) {
	        cipherText = "";
	        e.printStackTrace();
	    }
	    return cipherText;
	}


	public static String decrypt(String key, String encryptedText) {
		String plainText = "";
		try {
			Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
			IvParameterSpec ivspec = new IvParameterSpec(Arrays.copyOfRange(key.getBytes("UTF-8"), 0, cipher.getBlockSize()));
			cipher.init(Cipher.DECRYPT_MODE, new SecretKeySpec(key.getBytes("UTF-8"), "AES"), ivspec);
			plainText = new String(cipher.doFinal(Base64.getDecoder().decode(encryptedText.getBytes("UTF-8"))), "UTF-8");
		} catch (Exception e) {
			plainText = "";
			e.printStackTrace();
		}
		
		return plainText;
	}
}
