package com.denny.shopmarket.mainPage.mapper;

import com.denny.shopmarket.mainPage.vo.CartVo;

import java.util.List;

public interface CartMapper {

    List<CartVo> selectCartList(String cartUser);

    int insertToCart(CartVo cartVo);

    CartVo selectOne(CartVo cartVo);
}
