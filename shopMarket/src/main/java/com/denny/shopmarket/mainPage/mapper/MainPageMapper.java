package com.denny.shopmarket.mainPage.mapper;

import com.denny.shopmarket.mainPage.vo.CartVo;
import com.denny.shopmarket.mainPage.vo.ItemAttach;
import com.denny.shopmarket.mainPage.vo.ItemVo;

import java.util.List;

public interface MainPageMapper {

    int insertItem(ItemVo itemVo);

    int insertItemAttach(ItemAttach itemAttach);

    List<ItemVo> selectList();

    ItemVo select(int itemNo);

}
