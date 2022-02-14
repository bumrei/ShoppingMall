package com.denny.shopmarket.security.mapper;

import com.denny.shopmarket.security.vo.MemberVo;

public interface MemberMapper {

    MemberVo findBySellerId(String sellerId);

}
