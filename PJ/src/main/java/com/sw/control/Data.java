package com.sw.control;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.URL;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.cxf.helpers.IOUtils;
import org.apache.cxf.io.CachedOutputStream;
import org.json.simple.JSONObject;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Servlet implementation class Data
 */
public class Data extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Data() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String addr = "http://openapi.data.go.kr/openapi/service/rest/Covid19/getCovid19InfStateJson?serviceKey=";
		String serviceKey = "fzow753TeXaIpPFHh%2FXbhv7sJ9ts8XnX6lOmPgHelIKpA3fktEo1QMDuRcCaLOazcQMudfnQ0r7AJ59MOChqdw%3D%3D";
		String parameter = "";
		
		Date today = new Date(); //날짜
		SimpleDateFormat date = new SimpleDateFormat("yyyyMMdd");
		int day = Integer.parseInt(date.format(today));
		int hour = today.getHours();
		
		PrintWriter out = response.getWriter();
		parameter += "&" + "pageNo=1";
		parameter += "&" + "numOfRows=10";

		if(hour < 10) { //오전 10시 이후부터 당일 api 데이터 호출 가능
			parameter += "&" + "startCreateDt=" + (day-2);
			parameter += "&" + "endCreateDt=" + (day-1);
		} else {
			parameter += "&" + "startCreateDt=" + (day-1);
			parameter += "&" + "endCreateDt=" + day;
		}
		System.out.println(hour);
		
		addr = addr + serviceKey + parameter;
		URL url = new URL(addr);
		System.out.println(addr);	//api주소
		
		InputStream in = url.openStream();
//		CachedOutputStream bos = new CachedOutputStream();
		ByteArrayOutputStream bos1 = new ByteArrayOutputStream();
		IOUtils.copy(in, bos1);
		in.close();
		bos1.close();

		String mbos = bos1.toString("UTF-8");
		System.out.println("mbos: " + mbos + "\n");
		
		byte[] b = mbos.getBytes("UTF-8");
		String s = new String (b, "UTF-8");
		out.println(s);
		
//		JSONObject json = new JSONObject();
//		json.put("data", s);
//		System.out.println("json: " + json + "\n");
	}

}
