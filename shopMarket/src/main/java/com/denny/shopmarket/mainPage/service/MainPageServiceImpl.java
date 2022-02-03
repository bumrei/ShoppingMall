package com.denny.shopmarket.mainPage.service;

import com.denny.shopmarket.common.dto.UploadResponseDTO;
import com.denny.shopmarket.mainPage.dto.ItemDTO;
import com.denny.shopmarket.mainPage.mapper.MainPageMapper;
import com.denny.shopmarket.mainPage.vo.ItemAttach;
import com.denny.shopmarket.mainPage.vo.ItemVo;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@Log4j2
@RequiredArgsConstructor
public class MainPageServiceImpl implements MainPageService{

    private final MainPageMapper mainPageMapper;

    @Override
    public int registerItem(ItemDTO itemDTO) {

        log.info("========= MainPageServiceImpl registerItem =========");
        log.info("========= MainPageServiceImpl registerItem =========");

        ItemVo itemVo = dtoToVo(itemDTO);

        log.info(itemVo.getImageCnt());

        int result = mainPageMapper.insertItem(itemVo);

        if(result == 0) {
            log.info("------- 상품 판매 등록 싱패 X -------");
            log.info("------- 상품 판매 등록 실패 X -------");
            return 0;
        } else if(result == 1) {
            log.info("------- 상품 판매 등록 성공 O -------");
            log.info("------- 상품 판매 등록 성공 O -------");
        }

        int itemNo = itemVo.getItemNo();

        itemVo.getAttachList().forEach(itemAttach -> {
            itemAttach.setItemNo(itemNo);
            mainPageMapper.insertItemAttach(itemAttach);
        });

        return itemNo;
    }

    @Override
    public List<ItemDTO> getList() {

        log.info("========== MainPageServiceImpl getList =========");
        log.info("========== MainPageServiceImpl getList =========");

        List<ItemDTO> itemDTOList = mainPageMapper.selectList().stream().map(itemVo -> voToDto(itemVo)).collect(Collectors.toList());

        return itemDTOList;
    }

    @Override
    public ItemDTO getRead(int itemNo) {

        log.info("========== MainPageServiceImpl getRead =========");
        log.info("========== MainPageServiceImpl getRead =========");

        return voToDto(mainPageMapper.select(itemNo));
    }
}
