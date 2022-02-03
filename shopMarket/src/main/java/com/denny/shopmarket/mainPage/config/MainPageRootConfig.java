package com.denny.shopmarket.mainPage.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan( basePackages = "com.denny.shopmarket.mainPage.service" )
@MapperScan(basePackages = "com.denny.shopmarket.mainPage.mapper")
public class MainPageRootConfig {
}
