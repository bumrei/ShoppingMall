package com.denny.shopmarket.mainPage.mapper;

import com.denny.shopmarket.common.config.RootConfig;
import com.denny.shopmarket.mainPage.config.MainPageRootConfig;
import com.denny.shopmarket.mainPage.vo.ItemVo;
import lombok.extern.log4j.Log4j2;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.List;

@Log4j2
@ExtendWith(SpringExtension.class)
@ContextConfiguration( classes = {MainPageRootConfig.class, RootConfig.class} )
public class MainPageMapperTest {

    @Autowired MainPageMapper mainPageMapper;

    @Test
    public void insertTest() {
        // sellerNo, itemNm, itemCateB, itemCateS
        ItemVo itemVo = ItemVo.builder()
                .sellerNo(1)
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

}
