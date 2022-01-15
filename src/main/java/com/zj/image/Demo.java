package com.zj.image;

import org.junit.Test;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

public class Demo {
    @Test
    public void fun1() throws IOException {
        BufferedImage bufferedImage = new BufferedImage(70, 35, BufferedImage.TYPE_INT_RGB);
        Graphics2D graphics = (Graphics2D) bufferedImage.getGraphics();
        graphics.setColor(Color.white);
        graphics.fillRect(0, 0, 70, 35);
        graphics.setColor(Color.red);
        graphics.drawString("Hello", 5, 35 - 5);
        ImageIO.write(bufferedImage, "JPEG", new FileOutputStream("D:/xxx.jpg"));
    }

    @Test
    public void fun2() throws IOException {
        VerifyCode code = new VerifyCode();
        BufferedImage image = code.createImage();
        System.out.println(code.getText());
        ImageIO.write(image, "jpg", new File("D:/image.jpg"));
    }

}
