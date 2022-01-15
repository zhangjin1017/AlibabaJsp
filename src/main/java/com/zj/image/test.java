package com.zj.image;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

public class test {
	public static void main(String[] args) throws IOException {
		VerifyCode code = new VerifyCode();
		BufferedImage image = code.createImage();
		ImageIO.write(image,"jpg",new File("D:/image.jpg"));
	}
}