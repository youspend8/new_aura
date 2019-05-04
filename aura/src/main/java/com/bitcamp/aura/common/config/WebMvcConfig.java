package com.bitcamp.aura.common.config;

import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.context.annotation.Bean;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

@Configurable
public class WebMvcConfig {
	@Bean
	public CommonsMultipartResolver multipartResolver() {
		
		return new CommonsMultipartResolver();
	}
}
