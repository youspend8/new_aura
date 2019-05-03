package com.bitcamp.aura.manager.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class FileUpload {
	
	public static final String PATH = "/src/main/resources/static/files/";
	
	public void uploadFiles(MultipartFile[] multipartFiles) {
		Arrays.asList(multipartFiles).forEach(file -> upload(file));
	}
	
	public void upload(MultipartFile multipartFile) {
		File file = new File(new StringBuilder()
								.append(new File("").getAbsolutePath())
								.append(PATH)
								.append(System.currentTimeMillis() + "_")
								.append(multipartFile.getOriginalFilename()).toString());

		File path = new File(PATH);
		if (!path.isDirectory()) {
			path.mkdirs();
		}
		
		try (FileOutputStream fos = new FileOutputStream(file)) {
			byte[] b = multipartFile.getBytes();
			fos.write(b);
			fos.flush();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
