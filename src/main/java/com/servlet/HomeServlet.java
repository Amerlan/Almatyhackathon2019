package com.servlet;

import com.controller.Converter;
import com.datapack.Data;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import java.io.IOException;

@WebServlet(name = "HomeServlet", value = "/home")
public class HomeServlet extends HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        response.setHeader("Cache-Control", "private, no-store, no-cache, must-revalidate");
        String path = request.getParameter("path");
        Data data =  Converter.fromJson(path);
        request.setAttribute("data", data);
        request.getRequestDispatcher("/index.jsp").forward(request,response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        response.setHeader("Cache-Control", "private, no-store, no-cache, must-revalidate");
        if (request.getAttribute("data") == null)  {
            request.getRequestDispatcher("/send.jsp").forward(request, response);
        }
        else
            request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
