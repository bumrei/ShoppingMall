package com.denny.shopmarket.common.dto;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@ToString
public class UploadResponseDTO {

    private String uuid;
    private String fileName;
    private boolean image; // 이미지 여부
    private String uploadPath;
    private String imageUsage;

    // 썸네일 파일
    public String getThumbnail() {
        return uploadPath+"/s_" + uuid + "_" + fileName;
    }

    // 웹, 데이터 베이스에 올라간 파일 다운로드
    public String getFileLink() {
        return uploadPath + "/" + uuid + "_" + fileName;
    }
}
