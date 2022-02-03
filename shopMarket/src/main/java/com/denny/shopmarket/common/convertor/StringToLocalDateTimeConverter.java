package com.denny.shopmarket.common.convertor;

import lombok.extern.log4j.Log4j2;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Component
@Log4j2
public class StringToLocalDateTimeConverter implements Converter<String, LocalDateTime> { // org.conveter.springfame ~~~~~~
    // String to LocalDateTime 으로 converter 해주기.

    @Override
    public LocalDateTime convert(String source) {

        log.info("--------------------------------------");
        log.info("converter : " + source);

        Pattern pattern = Pattern.compile("^((19|20)\\d\\d)?([- /.])?(0[1-9]|1[012])([- /.])?(0[1-9]|[12][0-9]|3[01])$");
        Matcher matcher = pattern.matcher(source);

        if (matcher.find()) { // 만약 너가 날짜만 주면 시간은 00시 00 분 00 초 로 하는것이고
            return LocalDateTime.parse(
                    source + "T00:00:00", DateTimeFormatter.ISO_LOCAL_DATE_TIME); // source 를 DateTimeFormatter 로 바꿔준다.
        }
        // 만약 너가 시간을 주면 현재 시간을 return 할 것이다. 라는 뜻
        return LocalDateTime.now();

    }
}


