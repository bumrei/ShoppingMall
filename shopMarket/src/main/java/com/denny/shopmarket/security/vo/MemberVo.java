package com.denny.shopmarket.security.vo;

import lombok.*;

import java.time.LocalDateTime;
import java.util.List;

@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class MemberVo {

    private String sellerId;
    private String sellerNm;
    private String sellerPw;
    private boolean enabled;
    private LocalDateTime regDate;
    private LocalDateTime modDate;

    private List<MemberRoleVo> roleList;

}
