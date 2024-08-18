package com.bdm.api.bmonz.member.web;

import io.swagger.v3.oas.annotations.Operation;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@Slf4j
public class MemberController {

    @Operation(summary = "BMONZ 회원가입", description = "신규 계정을 생성한다.")
    @PostMapping("/signup")
    public ResponseEntity<?> signup() {

        log.info("signup test");
        return new ResponseEntity<>("signup BMONZ", HttpStatus.OK);
    }

    @Operation(summary = "BMONZ 로그인", description = "로그인 한다.")
    @PostMapping("/login")
    public ResponseEntity<?> login() {

        log.info("login test");
        return new ResponseEntity<>("login BMONZ", HttpStatus.OK);
    }
}
