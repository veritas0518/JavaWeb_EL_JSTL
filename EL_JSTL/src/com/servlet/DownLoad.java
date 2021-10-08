package com.servlet;

import org.apache.commons.io.IOUtils;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Base64;

import static javax.xml.crypto.dsig.Transform.BASE64;

/**
 * @ClassName: DownLoad
 * @Description:
 * @Author: TianXing.Xue
 * @Date: 2021/9/4 12:30
 **/

public class DownLoad extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //1.获取要下载的文件名
        String downLoadFileName = "img1.jpg";
        //2.读取要下载的文件内容（通过ServletContext对象可以读取）
        ServletContext servletContext = getServletContext();

        String mimeType = servletContext.getMimeType("/file/" + downLoadFileName);
        System.out.println("下载的文件类型"+mimeType);
        //4.再回传前，通过响应头告诉客户端返回的数据类型
        resp.setContentType(mimeType);

        //5.还要告诉客户端收到的数据时用于下载的（还是使用响应头）
        //Content-Disposition响应头，表示收到的数据怎么处理
        //attachment表示附件，表示下载使用
        //filename  表示指定下载的文件名
        //url编码是把汉字转换成为xx%xx的格式
        resp.setHeader("Content-Disposition","attachment; filename="+ URLEncoder.encode("中国.jpg","UTF-8"));
        /**
         *  '/'斜杠被服务器解析表示地址为http://ip:port/工程名/     映射到代码的web目录
         */
        InputStream resourceAsStream = servletContext.getResourceAsStream("/file/" + downLoadFileName);
        //获取响应的输出流
        OutputStream outputStream = resp.getOutputStream();
        //3.把下载文件内容回传给客户端
        //读取输入流中全部的数据，复制给输出流，输出给客户端
        IOUtils.copy(resourceAsStream,outputStream);
    }
}
