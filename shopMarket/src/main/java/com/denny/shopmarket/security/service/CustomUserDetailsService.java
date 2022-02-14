package com.denny.shopmarket.security.service;

import com.denny.shopmarket.security.mapper.MemberMapper;
import com.denny.shopmarket.security.vo.MemberVo;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Log4j2
@RequiredArgsConstructor
@Service
public class CustomUserDetailsService implements UserDetailsService {

    private final MemberMapper memberMapper;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        log.warn("--------------------------CustomUserDetailsService----------------------------");
        log.warn("--------------------------CustomUserDetailsService----------------------------");
        log.warn("username = " + username);
        log.warn("--------------------------CustomUserDetailsService----------------------------");
        log.warn("--------------------------CustomUserDetailsService----------------------------");

        MemberVo memberVo = memberMapper.findBySellerId(username);

        log.info(memberVo);

        if (memberVo == null) {
            throw new UsernameNotFoundException("NOT EXIST");
        }

        String[] authorities = memberVo.getRoleList().stream().map(memberRole -> memberRole.getRole()).toArray(String[]::new);

        User result = (User) org.springframework.security.core.userdetails.User.builder() // User 로 다운 케스팅
                .username(username)
                .password(memberVo.getSellerPw())
                .accountExpired(false) // 이 계정 다된 계정이야?
                .accountLocked(false)  // 이 계정 잠긴 계정이야?
                .authorities(authorities) // 이 계정 권한이 뭐야?
                .build();

        return result;

    }
}
