package com.example.book.springboot.config.auth;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

// Annotation이 생성될 수 있는 위치를 지정
@Target(ElementType.PARAMETER)
// Annotation이 유지되는 시점을 설정(라이프 사이클)
@Retention(RetentionPolicy.RUNTIME)
public @interface LoginUser {
}
