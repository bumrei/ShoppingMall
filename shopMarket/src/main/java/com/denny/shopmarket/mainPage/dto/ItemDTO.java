package com.denny.shopmarket.mainPage.dto;

import com.denny.shopmarket.common.dto.UploadResponseDTO;
import lombok.*;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@ToString
public class ItemDTO {

    private int itemNo;
    private String sellerId;
    private String itemNm;
    private String itemCateB;
    private String itemCateS;
    private LocalDateTime regDate;
    private LocalDateTime modDate;
    private String itemStatus;
    private int imageCnt;
    private int price;
    private String itemThumbnail;

    @Builder.Default
    private List<UploadResponseDTO> files = new ArrayList<>();

}
