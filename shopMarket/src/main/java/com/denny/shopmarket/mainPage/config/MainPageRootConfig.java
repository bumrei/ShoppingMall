package com.denny.shopmarket.mainPage.config;

import lombok.extern.log4j.Log4j2;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Log4j2
@Configuration
@ComponentScan( basePackages = "com.denny.shopmarket.mainPage.service" )
@MapperScan(basePackages = "com.denny.shopmarket.mainPage.mapper")
public class MainPageRootConfig {
    {
        log.info("MainPageRootConfig.............");
        log.info("MainPageRootConfig.............");
        log.info("MainPageRootConfig.............");
        log.info("MainPageRootConfig.............");
        log.info("MainPageRootConfig.............");
    }
}
