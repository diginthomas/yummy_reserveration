package com.groupd.booking;


import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;

import java.io.IOException;

@WebFilter("/*") // Intercept all requests
public class StaticResourceFilter implements Filter {


    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest request = (HttpServletRequest) req;
        String uri = request.getRequestURI();

        System.out.println("\nFiltering: " + uri);  // DEBUG line

        if (uri.startsWith(request.getContextPath() + "/assets/")) {
            chain.doFilter(req, res); // Allow static file
            return;
        }

        chain.doFilter(req, res); // Normal flow
    }



}