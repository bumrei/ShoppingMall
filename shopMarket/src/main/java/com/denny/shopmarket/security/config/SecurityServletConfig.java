package com.denny.shopmarket.security.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;

@Configuration
@ComponentScan(basePackages = "com.denny.shopmarket.security.controller") // 지방 정부 등록 완료
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class SecurityServletConfig {
}
