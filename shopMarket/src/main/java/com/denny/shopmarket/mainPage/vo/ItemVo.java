package com.denny.shopmarket.mainPage.vo;

import com.denny.shopmarket.common.dto.UploadResponseDTO;
import lombok.*;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Getter
@AllArgsConstructor
@NoArgsConstructor
@Builder
@ToString
public class ItemVo {

    private int itemNo;
    private int sellerNo;
    private String itemNm;
    private String itemCateB;
    private String itemCateS;
    private LocalDateTime regDate;
    private LocalDateTime modDate;
    private String itemStatus;
    private int imageCnt;
    private int price;

    @Builder.Default
    private List<ItemAttach> attachList = new ArrayList<>();

    public void setItemNo(int itemNo) {
        this.itemNo = itemNo;
    }

    public void addAttach(ItemAttach attach) {
        attachList.add(attach);
    }


}
