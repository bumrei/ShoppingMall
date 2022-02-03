package com.denny.shopmarket.mainPage.vo;

import lombok.*;

@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class ItemAttach {

    private String uuid;
    private int itemNo;
    private String filename;
    private boolean image; // 이미지 여부
    private String uploadPath;
    private String imageUsage;

    public void setItemNo(int itemNo) {
        this.itemNo = itemNo;
    }

}
