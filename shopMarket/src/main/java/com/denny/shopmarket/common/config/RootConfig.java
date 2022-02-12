package com.denny.shopmarket.common.config;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;

@Configuration
public class RootConfig {

    // service 와 mapper 설정해주는 곳 - 그래서 MyBatis 를 여기다가 설정한다.

    @Bean // db 데이터를 받아 MyBatis 에 연결시켜 실행
    public SqlSessionFactory sqlSessionFactory() throws Exception {

        SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
        sqlSessionFactoryBean.setDataSource(dataSource());
        return sqlSessionFactoryBean.getObject();
    }

    @Bean // db 와 연결하고 그 데이터를 MyBatis에게 전송 하는 역할?
    public DataSource dataSource() {

        HikariConfig config = new HikariConfig();
        config.setDriverClassName("com.mysql.cj.jdbc.Driver");
        config.setJdbcUrl("jdbc:mysql://15.164.231.126:3306/TESTDB");
        config.setUsername("testuser");
        config.setPassword("testuser");

        HikariDataSource dataSource = new HikariDataSource(config);

        return dataSource;
    }



}
