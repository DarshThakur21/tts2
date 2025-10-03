package com.yash.smt.config;


import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import java.util.List;

@EnableWebMvc
@Configuration
@ComponentScan(basePackages = "com.yash.smt.*")
public class WebMvcConfig  implements WebMvcConfigurer {

        @Bean
        public InternalResourceViewResolver viewResolver() {
            InternalResourceViewResolver resolver = new InternalResourceViewResolver();
            resolver.setPrefix("/WEB-INF/views/");
            resolver.setSuffix(".jsp");
            return resolver ;
        }

    @Override
    public void configureMessageConverters(List<HttpMessageConverter<?>> converters) {
        converters.add(new MappingJackson2HttpMessageConverter());
    }

    @Bean
    public ObjectMapper objectMapper() {
        return new ObjectMapper();
    }






}
