package com.denny.shopmarket.mainPage.dto;

import com.denny.shopmarket.common.dto.UploadResponseDTO;
import com.denny.shopmarket.mainPage.vo.ItemAttach;
import lombok.*;

import java.util.ArrayList;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@ToString
public class CartDTO {

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
    private List<UploadResponseDTO> filesCart = new ArrayList<>();

}
