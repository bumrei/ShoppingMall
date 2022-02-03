package com.denny.shopmarket.mainPage.mapper;

import com.denny.shopmarket.common.config.RootConfig;
import com.denny.shopmarket.mainPage.config.MainPageRootConfig;
import lombok.extern.log4j.Log4j2;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@Log4j2
@ExtendWith(SpringExtension.class)
@ContextConfiguration( classes = {MainPageRootConfig.class, RootConfig.class} )
public class TimeMapperTest {

    @Autowired
    TimeMapper timeMapper;

    @Test
    @DisplayName("DB - Spring 연결 확인")
    public void getTimetest() {
        log.info("================");
        log.info("================");
        log.info(timeMapper.getTime());
        log.info("================");
        log.info("================");
    }

    @Test
    @DisplayName("DB - MyBatis - Spring 연결 확인")
    public void getTimetest2() {
        log.info("================");
        log.info("================");
        log.info(timeMapper.getTime2());
        log.info("================");
        log.info("================");
    }

}
