package com.denny.shopmarket.mainPage.service;

import com.denny.shopmarket.common.dto.UploadResponseDTO;
import com.denny.shopmarket.mainPage.dto.ItemDTO;
import com.denny.shopmarket.mainPage.vo.ItemAttach;
import com.denny.shopmarket.mainPage.vo.ItemVo;

import java.util.List;
import java.util.stream.Collectors;

public interface MainPageService {

    int registerItem(ItemDTO itemDTO);

    List<ItemDTO> getList();

    ItemDTO getRead(int itemNo);



    default ItemVo dtoToVo(ItemDTO itemDTO) {

        ItemVo itemVo = ItemVo.builder()
                .sellerNo(itemDTO.getSellerNo())
                .itemNo(itemDTO.getItemNo())
                .itemNm(itemDTO.getItemNm())
                .itemCateB(itemDTO.getItemCateB())
                .itemCateS(itemDTO.getItemCateS())
                .regDate(itemDTO.getRegDate())
                .modDate(itemDTO.getModDate())
                .itemStatus(itemDTO.getItemStatus())
                .imageCnt(itemDTO.getImageCnt())
                .price(itemDTO.getPrice())
                .build();

        // Vo 는 객체 하나씩 List 에 넣는 방식이다.
        List<UploadResponseDTO> files = itemDTO.getFiles();
        files.forEach(uploadResponseDTO -> {
            ItemAttach itemAttach = ItemAttach.builder()
                    .uuid(uploadResponseDTO.getUuid())
                    .filename(uploadResponseDTO.getFileName())
                    .image(uploadResponseDTO.isImage())
                    .uploadPath(uploadResponseDTO.getUploadPath())
                    .imageUsage(uploadResponseDTO.getImageUsage())
                    .build();

            itemVo.addAttach(itemAttach);
        });

        return itemVo;
    }

    default ItemDTO voToDto(ItemVo itemVo) {

        ItemDTO itemDTO = ItemDTO.builder()
                .sellerNo(itemVo.getSellerNo())
                .itemNo(itemVo.getItemNo())
                .itemNm(itemVo.getItemNm())
                .itemCateB(itemVo.getItemCateB())
                .itemCateS(itemVo.getItemCateS())
                .regDate(itemVo.getRegDate())
                .modDate(itemVo.getModDate())
                .itemStatus(itemVo.getItemStatus())
                .imageCnt(itemVo.getImageCnt())
                .price(itemVo.getPrice())
                .build();

        // DTO 는 해당 객체 타입의 List 를 아예 싹 만들어서 통체로 넘겨버린다.
        List<ItemAttach> attachList = itemVo.getAttachList();
        List<UploadResponseDTO> uploadResponseDTOList = attachList.stream().map(attach -> {
            UploadResponseDTO uploadResponseDTO = UploadResponseDTO.builder()
                    .uuid(attach.getUuid())
                    .fileName(attach.getFilename())
                    .image(attach.isImage())
                    .uploadPath(attach.getUploadPath())
                    .imageUsage(attach.getImageUsage())
                    .build();
            return uploadResponseDTO;
        }).collect(Collectors.toList());

        itemDTO.setFiles(uploadResponseDTOList);

        return itemDTO;
    }
}
