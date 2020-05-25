package com.filter;

import javax.servlet.*;
import java.io.IOException;

public class CharacterEncodingFilter implements Filter {

    protected String encoding = null;   //定义编码格式
    protected FilterConfig filterConfig = null;    //定义过滤器

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {  //初始化
        this.filterConfig  = filterConfig;
        this.encoding = filterConfig.getInitParameter("encoding");   //获取指定的编码格式
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        //执行过滤业务
        if (encoding != null){
            servletRequest.setCharacterEncoding(encoding);    //设置请求编码
            servletResponse.setContentType("text/html;charset=" + encoding);    //设置响应对象的内容类型
        }
        filterChain.doFilter(servletRequest, servletResponse);
    }

    @Override
    public void destroy() {
        this.encoding = null;
        this.filterConfig = null;
    }
}
