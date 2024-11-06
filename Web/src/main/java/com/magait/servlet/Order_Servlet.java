package com.magait.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/Order")
public class Order_Servlet extends HttpServlet {

	private final String RED = "\033[91m";
	private final String GREEN = "\033[92m";
	private final String END = "\033[0m";

	// Get방식으로 호출하면 반드시 doGet이 호출됨
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println(RED + "[OrderServlet] Get Called" + END);

		response.setContentType("text/html; charset=UTF-8");
		// ramen, price, location을 입력으로 받는다고 가정
		String food = request.getParameter("ramen");
		int price = Integer.parseInt(request.getParameter("price"));
		String loc = request.getParameter("location");

		System.out.println(food+ ":" + price + ":" + loc);

		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("<h1>주문내역</h1>");
		out.println("<hr>");
		out.print("<h2>라면 : " + food + "개");

		if (loc.equals("너네집")) {
			out.println("<h2>너네집 이니까공</h2>");
		}

		else if (loc.equals("융프라우")) {
			out.println("<h2>" + price * 10 + "원 입니다.</h2>");
		}

		else {
			out.println("<h2>안팔어</h2>");
		}

		out.println("</body></html>");

	}

}
