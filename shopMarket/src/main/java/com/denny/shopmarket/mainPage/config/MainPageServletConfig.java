package com.denny.shopmarket.mainPage.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@EnableWebMvc
@ComponentScan( basePackages = "com.denny.shopmarket.mainPage.controller" )
public class MainPageServletConfig implements WebMvcConfigurer {
}
