package com.denny.shopmarket.security.config;

import lombok.extern.log4j.Log4j2;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
@Log4j2
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    {
        log.info("SecurityConfig........................");
        log.info("SecurityConfig........................");
        log.info("SecurityConfig........................");
        log.info("SecurityConfig........................");
        log.info("SecurityConfig........................");
    }//static block

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests().antMatchers("/sample/doAll").permitAll() // doAll 경로는 모두가 접근 가능하게 권한 지정
                                .antMatchers("/sample/doMember").access("hasRole('ROLE_MEMBER')") // doMember 는 ROLE_MEMBER 권한을 가진 사람만 접근 가능
                                .antMatchers("/sample/doAdmin").access("hasRole('ROLE_ADMIN')");  // doAdmin 은 ROLE_ADMIN 권한을 가진 사람만 접근 가능
        http.formLogin(); // 권한 없으면 로그인페이지로 튕김.
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception { // 임시로 MEMBER 권한을 가진 member1 아이디 생성
        auth.inMemoryAuthentication().withUser("member1").password("{noop}member1").roles("MEMBER"); //{noop} 공백 제거
        auth.inMemoryAuthentication().withUser("admin1").password("{noop}admin1").roles("MEMBER", "ADMIN");
    }
}
