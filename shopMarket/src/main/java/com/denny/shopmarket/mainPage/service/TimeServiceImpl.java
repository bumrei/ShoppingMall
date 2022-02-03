package com.denny.shopmarket.mainPage.service;

import com.denny.shopmarket.mainPage.mapper.TimeMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

@Service
@Log4j2
@RequiredArgsConstructor
public class TimeServiceImpl implements TimeService {

    private final TimeMapper timeMapper;

    @Override
    public String getNow() {

        log.info("============= TimeServiceImpl getNow ===============");
        log.info("============= TimeServiceImpl getNow ===============");

        if(timeMapper.getTime2().equals("") || timeMapper.getTime2() == null) {
            return "시간 출력 실패";
        } else {
            return timeMapper.getTime2();
        }

    }
}
