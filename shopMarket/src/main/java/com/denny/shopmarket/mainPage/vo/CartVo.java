package com.denny.shopmarket.mainPage.vo;

import lombok.*;

import java.util.ArrayList;
import java.util.List;

@Getter
@AllArgsConstructor
@NoArgsConstructor
@Builder
@ToString
public class CartVo {

    private int cartNo;
    private int itemNo;
    private String sellerId;
    private String itemNm;
    private int price;
    private String itemCateB;
    private String itemCateS;
    private int quantity;
    private String cartUser;
    private boolean orderDone;

    @Builder.Default
    private List<ItemAttach> attachLists = new ArrayList<>();

    public void setItemNo(int itemNo) {
        this.itemNo = itemNo;
    }

    public void addAttach(ItemAttach attach) {
        attachLists.add(attach);
    }

}
