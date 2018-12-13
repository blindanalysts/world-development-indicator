analyse <-function(df, value,,value2,country){
  subset_df <- subset(df,(IndicatorName==value))
  analysis_df <- subset_df %>% filter(CountryCode == country)
  country_name = analysis_df$CountryName[1]
  Indicator_name = analysis_df$IndicatorName[1]
  
  
  subset_df2 <- subset(df,(IndicatorName==value2))
  analysis_df2 <- subset_df2 %>% filter(CountryCode == country)
  
  
  
  plt<-plot_ly(x=analysis_df$Year,y=analysis_df$Value,type = 'scatter',mode='markers') %>%
    layout(
      title =Indicator_name)
  return (plt)
}




analysis_df <-function(df, value,country){
  subset_df <- subset(df,(IndicatorName==value))
  analysis_df <- subset_df %>% filter(CountryCode == country)

  return (analysis_df)
}