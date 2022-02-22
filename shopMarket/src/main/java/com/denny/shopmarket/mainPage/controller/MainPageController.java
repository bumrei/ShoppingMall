package com.denny.shopmarket.mainPage.controller;

import com.denny.shopmarket.common.dto.UploadResponseDTO;
import com.denny.shopmarket.mainPage.dto.ItemDTO;
import com.denny.shopmarket.mainPage.service.MainPageService;
import com.denny.shopmarket.mainPage.service.TimeService;
import com.denny.shopmarket.mainPage.vo.ItemVo;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Log4j2
@Controller
@RequiredArgsConstructor
@RequestMapping("/mainPage")
public class MainPageController {

    private final TimeService timeService;
    private final MainPageService mainPageService;

    @GetMapping("/time")
    public void getTime(Model model) {
        log.info("============= MainPageController getTime ===============");
        log.info("============= MainPageController getTime ===============");

        String time = timeService.getNow();

        model.addAttribute("time", time);
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping("/itemRegister")
    public void getItemRegister() {

    }

    @PostMapping("/itemRegister")
    public String postRegister(ItemDTO itemDTO, RedirectAttributes redirectAttributes) {

        log.info("=====================");
        log.info("=====================");
        log.info("ItemDTO = " + itemDTO);
        log.info("=====================");
        log.info("=====================");


        int imageCount = itemDTO.getFiles().size();

        log.info("=====================");
        log.info("이미지 수 " + imageCount);
        log.info("=====================");

        itemDTO.setImageCnt(imageCount);

        int result = mainPageService.registerItem(itemDTO);

        redirectAttributes.addFlashAttribute("result", result);

        return "redirect:/mainPage/itemList";
    }

    @GetMapping("/homeMainPage")
    public void getMainPage() {

    }

    @GetMapping("/itemList")
    public void getItemList(HttpServletRequest request, Model model) {

        log.info("====== MainPageController getItemList ======");
        log.info("====== MainPageController getItemList ======");

        String searchInfo = request.getParameter("shopSearch");

        List<ItemDTO> itemDTOList = mainPageService.getList();

        for (ItemDTO itemDTO : itemDTOList) {
            List<UploadResponseDTO> files = itemDTO.getFiles();
            String thumbnail;
            for (UploadResponseDTO dto : files) {
                thumbnail = dto.getThumbnail();
                itemDTO.setItemThumbnail(thumbnail);
            }
            log.info("============ controller Before =============");
            log.info(itemDTO);
        }


        model.addAttribute("itemDTOList", itemDTOList);
        model.addAttribute("searchInfo", searchInfo);
    }

    @GetMapping("/itemReadPage")
    public void getItemReadPage(@ModelAttribute ItemDTO itemDTO, Model model) {

        log.info("====== MainPageController getItemReadPage ======");
        log.info("====== MainPageController getItemReadPage ======");

        log.info("item Name = " + itemDTO.getItemNo());

        ItemDTO productInfo = mainPageService.getRead(itemDTO.getItemNo());

        log.info("productInfo in Controller = " + productInfo);

        List<UploadResponseDTO> dtoList = productInfo.getFiles();

        log.info("dtoList = " + dtoList);

        int itemImageCount =0;
        int explanationCount =0;

        for (UploadResponseDTO dto : dtoList) {

            int j = 0;
            int k = 0;

            log.info("dto = " + dto);
            log.info("dto = " + dto.getImageUsage());
            log.info("===================");

            if (dto.getImageUsage().equals("item") ) {
                itemImageCount += 1;
            } else if(dto.getImageUsage().equals("explanation") ) {
                explanationCount += 1;
            }
        }

        log.info("itemImageCount = " + itemImageCount);
        log.info("explanationCount = " + explanationCount);

        model.addAttribute("productInfo", productInfo);
        model.addAttribute("itemImageCount", itemImageCount);
        model.addAttribute("explanationCount", explanationCount);

    }

    @GetMapping("/itemCart")
    public void getItemBasket() {

    }

    @GetMapping("/cumtomerService")
    public void getCustomerService() {

    }

    @GetMapping("/myInformation")
    public void getMyInformation() {

    }

}
