package kr.shin.server.config;

import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

/**
 * Created by Administrator on 2016-06-01.
 */
@Configuration
@ImportResource("classpath:mybatis/context-mybatis.xml")

public class ModuleConfig {
}
