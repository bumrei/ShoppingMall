package com.denny.shopmarket.mainPage.service;

import com.denny.shopmarket.common.dto.UploadResponseDTO;
import com.denny.shopmarket.mainPage.dto.CartDTO;
import com.denny.shopmarket.mainPage.vo.CartVo;
import com.denny.shopmarket.mainPage.vo.ItemAttach;
import lombok.Builder;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

public interface CartService {

    List<CartDTO> getCartList(String cartUser);
    int addToCart(CartDTO cartDTO);


    default CartVo dtoToVo(CartDTO cartDTO) {
        CartVo cartVo = CartVo.builder()
                .cartNo(cartDTO.getCartNo())
                .itemNo(cartDTO.getItemNo())
                .sellerId(cartDTO.getSellerId())
                .itemNm(cartDTO.getItemNm())
                .price(cartDTO.getPrice())
                .itemCateB(cartDTO.getItemCateB())
                .itemCateS(cartDTO.getItemCateS())
                .quantity(cartDTO.getQuantity())
                .cartUser(cartDTO.getCartUser())
                .orderDone(cartDTO.isOrderDone())
                .build();

        List<UploadResponseDTO> filesCart = cartDTO.getFilesCart();
        filesCart.forEach(uploadResponseDTO -> {
            ItemAttach itemAttach = ItemAttach.builder()
                    .uuid(uploadResponseDTO.getUuid())
                    .filename(uploadResponseDTO.getFileName())
                    .image(uploadResponseDTO.isImage())
                    .uploadPath(uploadResponseDTO.getUploadPath())
                    .imageUsage(uploadResponseDTO.getImageUsage())
                    .build();
            cartVo.addAttach(itemAttach);
        });

        return cartVo;
    }

    default CartDTO voToDTO(CartVo cartVo) {

        CartDTO cartDTO = CartDTO.builder()
                .cartNo(cartVo.getCartNo())
                .itemNo(cartVo.getItemNo())
                .sellerId(cartVo.getSellerId())
                .itemNm(cartVo.getItemNm())
                .price(cartVo.getPrice())
                .itemCateB(cartVo.getItemCateB())
                .itemCateS(cartVo.getItemCateS())
                .quantity(cartVo.getQuantity())
                .cartUser(cartVo.getCartUser())
                .orderDone(cartVo.isOrderDone())
                .build();

        List<ItemAttach> attaches = cartVo.getAttachLists();
        List<UploadResponseDTO> uploadResponseDTOList = attaches.stream().map(attach -> {
            UploadResponseDTO uploadResponseDTO = UploadResponseDTO.builder()
                    .uuid(attach.getUuid())
                    .fileName(attach.getFilename())
                    .image(attach.isImage())
                    .uploadPath(attach.getUploadPath())
                    .imageUsage(attach.getImageUsage())
                    .build();
            return uploadResponseDTO;
        }).collect(Collectors.toList());

        cartDTO.setFilesCart(uploadResponseDTOList);

        return cartDTO;
    }

}
