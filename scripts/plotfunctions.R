
country_region_distribution <- function(df){
  df[(df$Region)==NULL] <- "Others"
  region_df <-df %>% 
    group_by(Region) %>%
    summarise (n =n())
  
  p <- plot_ly(region_df, labels = ~Region, values = ~n, type = 'pie',source = "source") %>%
    layout(title = 'Region Wise Distribution of Countries',
           hoverinfo = "text",
           text = region_df$Region,
           xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
           yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
  return(p)
}