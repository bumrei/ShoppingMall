package com.denny.shopmarket.common.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class PageRequestDTO {

    @Builder.Default
    private int page = 1;

    @Builder.Default
    private int size = 10;

    private String bigCategory;
    private String searchWords;

    public int getSkip() {
        // 1 - 0  skip
        // 2 - 10 skip
        // 3 - 20 skip
        return (page - 1) * size;
    }


}
