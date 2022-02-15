package com.denny.shopmarket.security.config;

import com.denny.shopmarket.security.handler.CustomLoginSuccessHandler;
import com.denny.shopmarket.security.service.CustomUserDetailsService;
import lombok.extern.log4j.Log4j2;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.rememberme.JdbcTokenRepositoryImpl;
import org.springframework.security.web.authentication.rememberme.PersistentTokenRepository;

import javax.sql.DataSource;

@Configuration
@EnableWebSecurity
@Log4j2
@MapperScan(basePackages = "com.denny.shopmarket.security.mapper")
@ComponentScan(basePackages = "com.denny.shopmarket.security.service")
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private CustomUserDetailsService customUserDetailsService;

    @Autowired
    private DataSource dataSource;

    @Override
    protected void configure(HttpSecurity http) throws Exception {
//        http.authorizeRequests().antMatchers("/sample/doAll").permitAll() // doAll 경로는 모두가 접근 가능하게 권한 지정
//                                .antMatchers("/sample/doMember").access("hasRole('ROLE_MEMBER')") // doMember 는 ROLE_MEMBER 권한을 가진 사람만 접근 가능
//                                .antMatchers("/sample/doAdmin").access("hasRole('ROLE_ADMIN')");  // doAdmin 은 ROLE_ADMIN 권한을 가진 사람만 접근 가능
        http.formLogin().loginPage("/customLogin").loginProcessingUrl("/login"); // 권한 없으면 커스텀 된 로그인페이지로 튕김.

        http.csrf().disable();

        http.rememberMe().tokenRepository(persistentTokenRepository()).key("denny").tokenValiditySeconds(60*60*24*30);
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception { // 임시로 MEMBER 권한을 가진 member1 아이디 생성

        auth.userDetailsService(customUserDetailsService);

//        auth.inMemoryAuthentication().withUser("member1").password("$2a$10$CLLpWwhORJJ9G44OrtlHOOPzzjFORlqg3FoEuD2nx8mobzwIivQzW").roles("MEMBER"); //{noop} 공백 제거
//        auth.inMemoryAuthentication().withUser("admin1").password("$2a$10$W.91DQXzJWG30L0x9KICo.Uq.7/7dLFJ4PISb/MuAy1RSx.T4rv1a").roles("MEMBER", "ADMIN");
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public CustomLoginSuccessHandler customLoginSuccessHandler() {
        return new CustomLoginSuccessHandler();
    }

    @Bean
    public PersistentTokenRepository persistentTokenRepository() {
        JdbcTokenRepositoryImpl repository = new JdbcTokenRepositoryImpl();
        repository.setDataSource(dataSource);
        return repository;
    }

//    @Bean
//    public CustomUserDetailsService customUserDetailsService() {
//        return new CustomUserDetailsService();
//    }
}
