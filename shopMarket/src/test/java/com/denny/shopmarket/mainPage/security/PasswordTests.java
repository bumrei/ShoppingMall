package com.denny.shopmarket.mainPage.security;

import com.denny.shopmarket.common.config.RootConfig;
import com.denny.shopmarket.security.config.SecurityConfig;
import lombok.extern.log4j.Log4j2;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@Log4j2
@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = {RootConfig.class, SecurityConfig.class})
public class PasswordTests {

    @Autowired
    PasswordEncoder passwordEncoder;

    @Test
    public void testEncode() {
        String str = "admin1";
        String enStr = passwordEncoder.encode(str);

        log.info("The Password will be = " + enStr);
    }

    @Test
    public void testDecode() {
        String str ="$2a$10$CLLpWwhORJJ9G44OrtlHOOPzzjFORlqg3FoEuD2nx8mobzwIivQzW";

        boolean match = passwordEncoder.matches("member1", str);

        log.info(match);
    }

    @Test
    public void insertMember() {
        String query = "insert into tbl_member (sellerId, sellerNm, sellerPw) values('v1', 'v2', 'v3');";

        for (int i = 0; i < 10; i++) {
            String sellerId = "member" + i;
            String sellerPw = passwordEncoder.encode(sellerId);
            String sellerNm = "일반 유저" + i;

            String result = query;

            result = result.replace("v1", sellerId);
            result = result.replace("v3", sellerPw);
            result = result.replace("v2", sellerNm);

            System.out.println(result);

        }

    }

    @Test
    public void insertAdmin() {
        String query = "insert into tbl_member (sellerId, sellerNm, sellerPw) values('v1', 'v2', 'v3');";

        for (int i = 0; i < 10; i++) {
            String sellerId = "admin" + i;
            String sellerPw = passwordEncoder.encode(sellerId);
            String sellerNm = "관리자" + i;

            String result = query;

            result = result.replace("v1", sellerId);
            result = result.replace("v3", sellerPw);
            result = result.replace("v2", sellerNm);

            System.out.println(result);

        }
    }

    @Test
    public void insertMemberRole() {
        String sql = "insert into tbl_member_role (sellerId, role) values('%s', '%s');";

        for (int i = 0; i < 10; i++) {
            String result = String.format(sql, "member" + i, "ROLE_MEMBER");

            System.out.println(result);
        }
    }

    @Test
    public void insertAdminRole() {
        String sql = "insert into tbl_member_role (sellerId, role) values('%s', '%s');";

        for (int i = 0; i < 10; i++) {
            String result = String.format(sql, "admin" + i, "ROLE_MEMBER");
            String result2 = String.format(sql, "admin" + i, "ROLE_ADMIN");

            System.out.println(result);
            System.out.println(result2);
        }
    }
}
