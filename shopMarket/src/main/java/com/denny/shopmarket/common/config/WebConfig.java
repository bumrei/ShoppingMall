package com.denny.shopmarket.common.config;

import com.denny.shopmarket.mainPage.config.MainPageRootConfig;
import com.denny.shopmarket.mainPage.config.MainPageServletConfig;
import lombok.extern.log4j.Log4j2;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import javax.servlet.Filter;
import javax.servlet.MultipartConfigElement;
import javax.servlet.ServletRegistration;

@Log4j2
public class WebConfig extends AbstractAnnotationConfigDispatcherServletInitializer {
    @Override
    protected Class<?>[] getRootConfigClasses() {
        log.info("------------ RootConfig 설정 확인 -----------");
        log.info("------------ RootConfig 설정 확인 -----------");

        return new Class[] {RootConfig.class, MainPageRootConfig.class};
    }

    @Override
    protected Class<?>[] getServletConfigClasses() {

        log.info("-------- ServletConfig 설정 확인 ----------");
        log.info("-------- ServletConfig 설정 확인 ----------");

        return new Class[] {ServletConfig.class, MainPageServletConfig.class};
    }

    @Override
    protected String[] getServletMappings() {
        return new String[] {"/"}; // 모든애들을 다 받는다.
    }

    @Override
    protected Filter[] getServletFilters() {

        CharacterEncodingFilter utf8filter = new CharacterEncodingFilter();
        utf8filter.setEncoding("UTF-8");
        utf8filter.setForceEncoding(true);
        return new Filter[]{utf8filter}; // post 방식에만 해당.
    }

    @Override
    protected void customizeRegistration(ServletRegistration.Dynamic registration) {
        registration.setInitParameter("throwExceptionIfNoHandlerFound", "true");

        MultipartConfigElement multipartConfigElement = new
                MultipartConfigElement("C:\\Users\\bumre\\Personal Project\\upload\\temp", 1024 * 1024 * 10, 1024 * 1024 * 20, 1024 * 1024 * 1);

        registration.setMultipartConfig(multipartConfigElement);
    }

}
