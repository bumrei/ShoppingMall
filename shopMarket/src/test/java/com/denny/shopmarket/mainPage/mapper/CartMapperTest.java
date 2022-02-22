package com.denny.shopmarket.mainPage.mapper;

import com.denny.shopmarket.common.config.RootConfig;
import com.denny.shopmarket.mainPage.config.MainPageRootConfig;
import com.denny.shopmarket.mainPage.vo.CartVo;
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
public class CartMapperTest {

    @Autowired CartMapper cartMapper;

    @Test
    public void insertToCartTest() {
        CartVo cartVo = CartVo.builder()
                .itemNo(43)
                .sellerId("admin2")
                .itemNm("This also i bought")
                .price(2000)
                .itemCateB("C")
                .itemCateS("a")
                .quantity(1)
                .cartUser("member1")
                .build();

        int result = cartMapper.insertToCart(cartVo);

        if (result == 1) {
            log.info("성공");
            log.info("성공");
            log.info("성공");
        } else {
            log.info("실패");
            log.info("실패");
            log.info("실패");
            log.info("실패");
        }
    }

    @Test
    public void selectToCart() {
        List<CartVo> list = cartMapper.selectCartList("member1");

        list.forEach(cartVo -> log.info(cartVo));
    }

}
