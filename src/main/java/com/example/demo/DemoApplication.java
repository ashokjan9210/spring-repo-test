package com.example.demo;

import java.util.concurrent.TimeUnit;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.http.CacheControl;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.resource.CssLinkResourceTransformer;
import org.springframework.web.servlet.resource.VersionResourceResolver;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

@SpringBootApplication(scanBasePackages = {"com.example.demo"})
public class DemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
	}

	
	
	@Bean 
	  public CommonsMultipartResolver commonsMultipartResolver() 
	  { 
	 final  CommonsMultipartResolver commonsMultipartResolver = new  CommonsMultipartResolver();
	  return commonsMultipartResolver; 
	  }
	 
	
	/*
	 * @Bean(name = "dataSource", destroyMethod = "close") public HikariDataSource
	 * dataSource() { final HikariConfig hikariConfig = new HikariConfig();
	 * 
	 * 
	 * hikariConfig.setDriverClassName("org.postgresql.Driver");
	 * //hikariConfig.setJdbcUrl("jdbc:postgresql://10.199.62.68:5432/kprdb");
	 * hikariConfig.setJdbcUrl("jdbc:postgresql://localhost:5432/testdb"); // for
	 * production hikariConfig.setUsername("postgres");
	 * hikariConfig.setPassword("postgres"); //hikariConfig.setPassword("kpr");//
	 * for production //hikariConfig.setMaximumPoolSize(5);
	 * //hikariConfig.setConnectionTestQuery("SELECT 1 ");
	 * //hikariConfig.setPoolName("springHikariCP");
	 * hikariConfig.addDataSourceProperty("dataSource.cachePrepStmts", "true");
	 * hikariConfig.addDataSourceProperty("dataSource.prepStmtCacheSize", "250");
	 * hikariConfig.addDataSourceProperty("dataSource.prepStmtCacheSqlLimit",
	 * "2048"); hikariConfig.addDataSourceProperty("dataSource.useServerPrepStmts",
	 * "true");
	 * 
	 * return new HikariDataSource(hikariConfig); }
	 */
		
	/*
	 * @Bean public JdbcTemplate jdbcTemplate() {
	 * 
	 * return new JdbcTemplate(dataSource()); }
	 * 
	 * @Bean public SimpleJdbcCall jdbcCall() { return new
	 * SimpleJdbcCall(dataSource()); }
	 * 
	 * @Bean public NamedParameterJdbcTemplate namedParameterJdbcTemplate() { return
	 * new NamedParameterJdbcTemplate(dataSource()); }
	 */
	  
	  
	  
		@Bean
		public static PropertySourcesPlaceholderConfigurer propertyConfigInDev() {
			return new PropertySourcesPlaceholderConfigurer();
		}
		
	  
	/*
	 * @Bean public LocaleResolver localeResolver() { CookieLocaleResolver
	 * localeResolver = new CookieLocaleResolver(); return localeResolver; }
	 */
	
	
	
	
	/**
	 * Configure TilesConfigurer.
	 
*/
	
	 @Bean 
	  public TilesConfigurer tilesConfigurer() { final TilesConfigurer
	  tilesConfigurer = new TilesConfigurer(); tilesConfigurer.setDefinitions(new
	  String[] { "/WEB-INF/views/tiles/tiles.xml"});
	  tilesConfigurer.setCheckRefresh(true); return tilesConfigurer; }
	  
	 
	
	
	  @Bean
	   public TilesViewResolver tilesViewResolver() 
	  {
		  TilesViewResolver tilesViewResolver = new TilesViewResolver(); 
		  return tilesViewResolver;
	  }
	  
	 
	  /* 
	 * @Bean public UrlBasedViewResolver viewResolver() { UrlBasedViewResolver
	 * tilesViewResolver = new UrlBasedViewResolver();
	 * tilesViewResolver.setViewClass(TilesView.class); return tilesViewResolver; }
	 */

	
	// resource handler 
	
	/*
	 * @Override public void addResourceHandlers(ResourceHandlerRegistry registry) {
	 * registry .addResourceHandler("/resources/**")
	 * .addResourceLocations("/resources/") .setCachePeriod(3600)
	 * .resourceChain(true) .addResolver(new GzipResourceResolver())
	 * .addResolver(new PathResourceResolver()); }
	 */
	
	
		public void addResourceHandlers(ResourceHandlerRegistry registry) {
	    registry .addResourceHandler("/resources/**") .addResourceLocations("/resources/")
	    .setCacheControl(CacheControl.maxAge(365,TimeUnit.DAYS)).resourceChain(false)
	      .addResolver(new VersionResourceResolver().addContentVersionStrategy("/**"))
	      .addTransformer(new CssLinkResourceTransformer());
	}
	
	
	
	
	
	
	
	
}
