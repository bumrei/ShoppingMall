package com.denny.shopmarket.mainPage.controller;

import com.denny.shopmarket.mainPage.dto.CartDTO;
import com.denny.shopmarket.mainPage.service.CartService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@Log4j2
@RequiredArgsConstructor
@RequestMapping("/cart")
public class CartController {

    private final CartService cartService;

    @GetMapping("/list/{cartUser}")
    public List<CartDTO> getCartLists(@PathVariable(name="cartUser") String cartUser) {

        log.info("============= CartController getCartLists ==============");
        log.info("============= CartController getCartLists ==============");

        return cartService.getCartList(cartUser);
    }

    @PostMapping("")
    public int addToCartList(@RequestBody CartDTO cartDTO) {

        log.info("============= CartController addToCartList ==============");
        log.info("============= CartController addToCartList ==============");
        log.info("============= CartController addToCartList ==============");
        log.info("============= CartController addToCartList ==============");
        log.info("============= CartController addToCartList ==============");

        log.info("cartDTO = " + cartDTO);

        int result = cartService.addToCart(cartDTO);

        return result;
    }
}
