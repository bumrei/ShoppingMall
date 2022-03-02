package com.denny.shopmarket.mainPage.controller;

import com.denny.shopmarket.mainPage.service.MainPageService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@Log4j2
@RequiredArgsConstructor
public class CommonController {

    private final MainPageService mainPageService;



    @PostMapping("/code/select")
    public List<String> optionValues(@RequestBody HashMap<String, Object> codeFinder) {
        log.info("============= CommonController optionValues REST ==============");
        log.info("============= CommonController optionValues REST ==============");

        List<String> codeInfo = new ArrayList<>();
        List<Map<String, Object>> codeLists = mainPageService.getCodeList(codeFinder);

        for (Map<String, Object> codeList : codeLists) {
            log.info(codeList.get("code_kor"));
            codeInfo.add(codeList.get("code_kor").toString());
        }

        return codeInfo;
    }

}
