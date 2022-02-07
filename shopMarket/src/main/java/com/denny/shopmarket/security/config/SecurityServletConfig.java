package com.denny.shopmarket.security.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan(basePackages = "com.denny.shopmarket.security.controller") // 지방 정부 등록 완료
public class SecurityServletConfig {
}
