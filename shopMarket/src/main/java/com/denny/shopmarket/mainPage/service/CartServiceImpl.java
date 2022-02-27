package com.denny.shopmarket.mainPage.service;

import com.denny.shopmarket.mainPage.dto.CartDTO;
import com.denny.shopmarket.mainPage.mapper.CartMapper;
import com.denny.shopmarket.mainPage.vo.CartVo;
import com.sun.org.apache.xpath.internal.operations.Bool;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@Log4j2
@RequiredArgsConstructor
public class CartServiceImpl implements CartService{

    private final CartMapper cartMapper;


    @Override
    public List<CartDTO> getCartList(String cartUser) {

        log.info("============= CartService getCartList =============");
        log.info("============= CartService getCartList =============");

        List<CartDTO> dtoList = cartMapper.selectCartList(cartUser).stream().map(cartVo -> voToDTO(cartVo)).collect(Collectors.toList());

        log.info("Service dtoCartList = " + dtoList);

        return dtoList;
    }

    @Override
    public int addToCart(CartDTO cartDTO) {

        log.info("============= CartService addToCart =============");
        log.info("============= CartService addToCart =============");

        log.info("cartDTO " + cartDTO);

        CartVo cartOne = cartMapper.selectOne(dtoToVo(cartDTO));

        log.info("cartOne " + cartOne);
        log.info("cartOne " + cartOne);
        log.info("cartOne " + cartOne);
        log.info("cartOne " + cartOne);


        if (cartOne == null) {
            int result = cartMapper.insertToCart(dtoToVo(cartDTO));
            log.info(result);
            return result;
        } else {
            return 3;
        }

    }
}
