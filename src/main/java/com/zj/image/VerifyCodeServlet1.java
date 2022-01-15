package com.zj.image;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.IOException;

@WebServlet(urlPatterns="/VerifyCodeServlet1.do")
public class VerifyCodeServlet1 extends HttpServlet {
 
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		VerifyCode code = new VerifyCode();
		BufferedImage image = code.createImage();
//		request.getSession().setAttribute("session_vcode",code.getText());
		ImageIO.write(image,"jpg",response.getOutputStream());
//		VerifyCode.output(image,response.getOutputStream());
	}
 
}