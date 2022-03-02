package com.denny.shopmarket.mainPage.mapper;

import com.denny.shopmarket.common.config.RootConfig;
import com.denny.shopmarket.mainPage.config.MainPageRootConfig;
import com.denny.shopmarket.mainPage.vo.CartVo;
import com.denny.shopmarket.mainPage.vo.ItemVo;
import lombok.extern.log4j.Log4j2;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Log4j2
@ExtendWith(SpringExtension.class)
@ContextConfiguration( classes = {MainPageRootConfig.class, RootConfig.class} )
public class MainPageMapperTest {

    @Autowired MainPageMapper mainPageMapper;


    @Test
    public void insertTest() {
        // sellerId, itemNm, itemCateB, itemCateS
        ItemVo itemVo = ItemVo.builder()
                .sellerId("1")
                .itemNm("테스트")
                .itemCateB("cateB2")
                .itemCateS("cateS3")
                .build();

        int result = mainPageMapper.insertItem(itemVo);


        log.info("===================");
        log.info("===================");

        log.info("성공 여부 " + result);

        int itemNo = itemVo.getItemNo();

        log.info("등록된 Item 번호 " + itemNo);

        log.info("===================");
        log.info("===================");
    }

    @Test
    public void selectListTest() {
        List<ItemVo> list = mainPageMapper.selectList();

        for (ItemVo itemVo : list) {
            log.info("=========================");
            log.info(itemVo);
        }

    }

    @Test
    public void selectTest() {
        int itemNo = 48;

        ItemVo itemVo = mainPageMapper.select(itemNo);

        log.info(itemVo);
    }

    @Test
    public void selectCodeTest() {
        HashMap<String, Object> hashmap = new HashMap<>();

        hashmap.put("code_lvl", 1);
        hashmap.put("parent_code", null);

        List<Map<String, Object>> strings = mainPageMapper.selectCode(hashmap);

//        for (int i = 0; i < strings.size(); i++) {
//            String s = strings.get(i);
//            log.info(s);
//        }
        log.info(strings);




    }



}
