package com.denny.shopmarket.mainPage.mapper;

import com.denny.shopmarket.common.dto.PageRequestDTO;
import com.denny.shopmarket.mainPage.vo.CartVo;
import com.denny.shopmarket.mainPage.vo.ItemAttach;
import com.denny.shopmarket.mainPage.vo.ItemVo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface MainPageMapper {

    int insertItem(ItemVo itemVo);

    int insertItemAttach(ItemAttach itemAttach);

    List<ItemVo> selectList(PageRequestDTO pageRequestDTO);

    ItemVo select(int itemNo);

    List<Map<String, Object>> selectCode(HashMap<String, Object> codeFinder);

    int selectCount(PageRequestDTO pageRequestDTO);



}
