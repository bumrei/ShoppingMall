package com.denny.shopmarket.security.dto;

import com.denny.shopmarket.security.vo.MemberVo;
import lombok.*;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import java.time.LocalDateTime;
import java.util.Collection;
import java.util.stream.Collectors;

@Getter
@Setter
//@ToString
public class MemberDTO extends User {

    private String sellerId;
    private String sellerNm;
    private String sellerPw;
    private boolean enabled;
    private LocalDateTime regDate;
    private LocalDateTime modDate;

    public MemberDTO(MemberVo member) {
        super(member.getSellerId(),
                member.getSellerPw(),
                member.getRoleList().stream().map(memberRoleVo ->
                        new SimpleGrantedAuthority(memberRoleVo.getRole()))
                        .collect(Collectors.toList()));

        this.sellerId = member.getSellerId();
        this.sellerPw = member.getSellerPw();
        this.sellerNm = member.getSellerNm();
        this.enabled = member.isEnabled();
        this.regDate = member.getRegDate();
        this.modDate = member.getModDate();
    }

    public MemberDTO(String username, String password, Collection<? extends GrantedAuthority> authorities) {
        super(username, password, authorities);
    }

}
