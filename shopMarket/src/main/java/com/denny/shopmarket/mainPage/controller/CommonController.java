package com.denny.shopmarket.mainPage.controller;

import com.denny.shopmarket.common.dto.PageRequestDTO;
import com.denny.shopmarket.common.dto.UploadResponseDTO;
import com.denny.shopmarket.mainPage.dto.ItemDTO;
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
    public List<Map<String, Object>> optionValues(@RequestBody HashMap<String, Object> codeFinder) {
        log.info("============= CommonController optionValues REST ==============");
        log.info("============= CommonController optionValues REST ==============");

        //List<String> codeInfo = new ArrayList<>();
        List<Map<String, Object>> codeLists = mainPageService.getCodeList(codeFinder);

//        for (Map<String, Object> codeList : codeLists) {
//            log.info(codeList.get("code_kor"));
//            codeInfo.add(codeList.get("code_kor").toString());
//        }

        return codeLists;
    }

    @PostMapping("/itemSearch")
    public List<ItemDTO> getItemSearchList(@RequestBody PageRequestDTO pageRequestDTO) {

        log.info(pageRequestDTO);

        List<ItemDTO> itemDTOList = mainPageService.getList(pageRequestDTO);

        for (ItemDTO itemDTO : itemDTOList) {
            List<UploadResponseDTO> files = itemDTO.getFiles();
            String thumbnail;
            for (UploadResponseDTO dto : files) {
                thumbnail = dto.getThumbnail();
                itemDTO.setItemThumbnail(thumbnail);
            }
            log.info("============ RESTcontroller getItemSearchList REST=============");
            log.info(itemDTO);
        }

        return itemDTOList;
    }

}
