# Load datasets for main and words
#df = read.csv("./myApp/proj_files/base_df.csv", stringsAsFactors = F)
#wine_words_filtered = read.csv("./myApp/proj_files/wine_words_filtered.csv", stringsAsFactors = F)

# Define server logic required to draw a histogram
shinyServer(
    function(input, output, session) {
        # DATA SET TAB
        # input province1
        observe({
            if (input$province1 == "All") {
                province1_choices <- df
                
                if ((input$region1 == "All") & (input$variety1 == "All") & (input$rating1 == "All")) {
                    updateSelectizeInput(
                        session, "province1", choices = c("All", unique(province1_choices$province))
                    )
                } else {
                    if (input$region1 != "All") {
                        province1_choices <- province1_choices[province1_choices$region == input$region1, ]
                    }
                    if (input$variety1 != "All") {
                        province1_choices <- province1_choices[province1_choices$variety == input$variety1, ]
                    }
                    if (input$rating1 != "All") {
                        province1_choices <- province1_choices[province1_choices$rating == input$rating1, ]
                    }
                    updateSelectizeInput(
                        session, "province1", choices = c("All", unique(province1_choices$province))
                    )
                }
            }
            else {
                province1_choices <- df
                
                if ((input$region1 == "All") & (input$variety1 == "All") & (input$rating1 == "All")) {
                    updateSelectizeInput(
                        session, "province1", choices = c("All", unique(province1_choices$province)), selected = input$province1
                    )
                } else {
                    if (input$region1 != "All") {
                        province1_choices <- province1_choices[province1_choices$region == input$region1, ]
                    }
                    if (input$variety1 != "All") {
                        province1_choices <- province1_choices[province1_choices$variety == input$variety1, ]
                    }
                    if (input$rating1 != "All") {
                        province1_choices <- province1_choices[province1_choices$rating == input$rating1, ]
                    }
                    updateSelectizeInput(
                        session, "province1", choices = c("All", unique(province1_choices$province)), selected = input$province1
                    )
                }
            }
        })
        # input region1
        observe({
            if (input$region1 == "All") {
                region1_choices <- df
                
                if ((input$province1 == "All") & (input$variety1 == "All") & (input$rating1 == "All")) {
                    updateSelectizeInput(
                        session, "region1", choices = c("All", unique(region1_choices$region))
                    )
                } else {
                    if (input$province1 != "All") {
                        region1_choices <- region1_choices[region1_choices$province == input$province1, ]
                    }
                    if (input$variety1 != "All") {
                        region1_choices <- region1_choices[region1_choices$variety == input$variety1, ]
                    }
                    if (input$rating1 != "All") {
                        region1_choices <- region1_choices[region1_choices$rating == input$rating1, ]
                    }
                    updateSelectizeInput(
                        session, "region1", choices = c("All", unique(region1_choices$region))
                    )
                }
            }
            else {
                region1_choices <- df
                
                if ((input$province1 == "All") & (input$variety1 == "All") & (input$rating1 == "All")) {
                    updateSelectizeInput(
                        session, "region1", choices = c("All", unique(region1_choices$region)), selected = input$region1
                    )
                } else {
                    if (input$province1 != "All") {
                        region1_choices <- region1_choices[region1_choices$province == input$province1, ]
                    }
                    if (input$variety1 != "All") {
                        region1_choices <- region1_choices[region1_choices$variety == input$variety1, ]
                    }
                    if (input$rating1 != "All") {
                        region1_choices <- region1_choices[region1_choices$rating == input$rating1, ]
                    }
                    updateSelectizeInput(
                        session, "region1", choices = c("All", unique(region1_choices$region)), selected = input$region1
                    )
                }
            }
        })
        # variety1 input
        observe({
            if (input$variety1 == "All") {
                variety1_choices <- df
                
                if ((input$province1 == "All") & (input$region1 == "All") & (input$rating1 == "All")) {
                    updateSelectizeInput(
                        session, "variety1", choices = c("All", unique(variety1_choices$variety))
                    )
                } else {
                    if (input$province1 != "All") {
                        variety1_choices <- variety1_choices[variety1_choices$province == input$province1, ]
                    }
                    if (input$region1 != "All") {
                        variety1_choices <- variety1_choices[variety1_choices$region == input$region1, ]
                    }
                    if (input$rating1 != "All") {
                        variety1_choices <- variety1_choices[variety1_choices$rating == input$rating1, ]
                    }
                    updateSelectizeInput(
                        session, "variety1", choices = c("All", unique(variety1_choices$variety))
                    )
                }
            }
            else {
                variety1_choices <- df
                
                if ((input$province1 == "All") & (input$region1 == "All") & (input$rating1 == "All")) {
                    updateSelectizeInput(
                        session, "variety1", choices = c("All", unique(variety1_choices$variety)), selected = input$variety1
                    )
                } else {
                    if (input$province1 != "All") {
                        variety1_choices <- variety1_choices[variety1_choices$province == input$province1, ]
                    }
                    if (input$region1 != "All") {
                        variety1_choices <- variety1_choices[variety1_choices$region == input$region1, ]
                    }
                    if (input$rating1 != "All") {
                        variety1_choices <- variety1_choices[variety1_choices$rating == input$rating1, ]
                    }
                    updateSelectizeInput(
                        session, "variety1", choices = c("All", unique(variety1_choices$variety)), selected = input$variety1
                    )
                }
            }
        })
        # input rating1
        observe({
            if (input$rating1 == "All") {
                rating1_choices <- df
                
                if ((input$province1 == "All") & (input$region1 == "All") & (input$variety1 == "All")) {
                    updateSelectizeInput(
                        session, "rating1", choices = c("All", unique(rating1_choices$rating))
                    )
                } else {
                    if (input$province1 != "All") {
                        rating1_choices <- rating1_choices %>% filter(province == input$province1)
                    }
                    if (input$region1 != "All") {
                        rating1_choices <- rating1_choices %>% filter(region == input$region1)
                    }
                    if (input$variety1 != "All") {
                        rating1_choices <- rating1_choices %>% filter(variety == input$variety1)
                    }
                    updateSelectizeInput(
                        session, "rating1", choices = c("All", unique(rating1_choices$rating))
                    )
                }
            }
            else {
                rating1_choices <- df
                
                if ((input$province1 == "All") & (input$region1 == "All") & (input$variety1 == "All")) {
                    updateSelectizeInput(
                        session, "rating1", choices = c("All", unique(rating1_choices$rating)), selected = input$rating1
                    )
                } else {
                    if (input$province1 != "All") {
                        rating1_choices <- rating1_choices %>% filter(province == input$province1)
                    }
                    if (input$region1 != "All") {
                        rating1_choices <- rating1_choices %>% filter(region == input$region1)
                    }
                    if (input$variety1 != "All") {
                        rating1_choices <- rating1_choices %>% filter(variety == input$variety1)
                    }
                    updateSelectizeInput(
                        session, "rating1", choices = c("All", unique(rating1_choices$rating)), selected = input$rating1
                    )
                }
            }
        })
        filteredDT = reactive({
            # icheck if any of the inputs are selected
            if ((input$province1 != "All") | (input$region1 != "All") | (input$rating1 != "All") | (input$variety1 != "All")) {
                fdata <- df
                
                # if any are selected, filter the dataframe by those selected inputs
                if (input$province1 != "All") {
                    fdata <- fdata %>% filter(province == input$province1)
                }
                if (input$region1 != "All") {
                    fdata <- fdata %>% filter(region == input$region1)
                }
                if (input$rating1 != "All") {
                    fdata <- fdata %>% filter(rating == input$rating1)
                }
                if (input$variety1 != "All") {
                    fdata <- fdata %>% filter(variety == input$variety1)
                }
                fdata
            } else {
                df
            }
        }) 
        # output - data table
        output$table <- DT::renderDataTable(DT::datatable({
            filteredDT()
        }))
        
        # outputs - value boxes
        output$countryBox <- renderInfoBox({
            infoBox(
                title = "Country", value = "United States of America", color = "red"
            )
        })
        output$provinceBox <- renderValueBox({
            valueBox(
                n_distinct(df[,"province"]), "States", color = "blue"
            )
        })
        output$varietyBox <- renderValueBox({
            valueBox(
                n_distinct(df[,"variety"]), "Varieties", color = "red"
            )
        })
        output$ratingBox <- renderValueBox({
            valueBox(
                n_distinct(df[,"winery"]), "Wineries", color = "blue"
            )
        })
        output$regionBox <- renderValueBox({
            valueBox(
                n_distinct(df[,"region"]), "Regions", color = "green"
            )
        })
        output$designationBox <- renderValueBox({
            valueBox(
                n_distinct(df[,"designation"]), "Vineyards", color = "green"
            )
        })
        
#################################### WORDS TAB #################################### 
# INPUTS
        # inputs province2
        observe({
            if (input$province2 == "All") {
                province2_choices <- wine_words_filtered
                
                if ((input$region2 == "All") & (input$winery2 == "All") & (input$variety2 == "All")) {
                    updateSelectizeInput(
                        session, "province2", choices = c("All", unique(province2_choices$province))
                    )
                } else {
                    if (input$region2 != "All") {
                        province2_choices <- province2_choices %>% filter(region_1 == input$region2)
                    }
                    if (input$winery2 != "All") {
                        province2_choices <- province2_choices %>% filter(winery == input$winery2)
                    }
                    if (input$variety2 != "All") {
                        province2_choices <- province2_choices %>% filter(variety == input$variety2)
                    }
                    updateSelectizeInput(
                        session, "province2", choices = c("All", unique(province2_choices$province))
                    )
                }
            }
            else {
                province2_choices <- wine_words_filtered
                
                if ((input$region2 == "All") & (input$winery2 == "All") & (input$variety2 == "All")) {
                    updateSelectizeInput(
                        session, "province2", choices = c("All", unique(province2_choices$province)), selected = input$province2
                    )
                } else {
                    if (input$region2 != "All") {
                        province2_choices <- province2_choices %>% filter(region_1 == input$region2)
                    }
                    if (input$winery2 != "All") {
                        province2_choices <- province2_choices %>% filter(winery == input$winery2)
                    }
                    if (input$variety2 != "All") {
                        province2_choices <- province2_choices %>% filter(variety == input$variety2)
                    }
                    updateSelectizeInput(
                        session, "province2", choices = c("All", unique(province2_choices$province)), selected = input$province2
                    )
                }
            }
        })
        # inputs region2
        observe({
            if (input$region2 == "All") {
               region2_choices <- wine_words_filtered
                
                if ((input$province2 == "All") & (input$winery2 == "All") & (input$variety2 == "All")) {
                    updateSelectizeInput(
                        session, "region2", choices = c("All", unique(region2_choices$region_1))
                    )
                } else {
                    if (input$province2 != "All") {
                        region2_choices <- region2_choices %>% filter(province == input$province2)
                    }
                    if (input$winery2 != "All") {
                        region2_choices <- region2_choices %>% filter(winery == input$winery2)
                    }
                    if (input$variety2 != "All") {
                        region2_choices <- region2_choices %>% filter(variety == input$variety2)
                    }
                    updateSelectizeInput(
                        session, "region2", choices = c("All", unique(region2_choices$region_1))
                    )
                }
            }
            else {
                region2_choices <- wine_words_filtered
                
                if ((input$province2 == "All") & (input$winery2 == "All") & (input$variety2 == "All")) {
                    updateSelectizeInput(
                        session, "region2", choices = c("All", unique(region2_choices$region_1)), selected = input$region2
                    )
                } else {
                    if (input$province2 != "All") {
                        region2_choices <- region2_choices %>% filter(province == input$province2)
                    }
                    if (input$winery2 != "All") {
                        region2_choices <- region2_choices %>% filter(winery == input$winery2)
                    }
                    if (input$variety2 != "All") {
                        region2_choices <- region2_choices %>% filter(variety == input$variety2)
                    }
                    updateSelectizeInput(
                        session, "region2", choices = c("All", unique(region2_choices$region_1)), selected = input$region2
                    )
                }
            }
        })
        # inputs winery2
        observe({ 
            if (input$winery2 == "All") {
                winery2_choices <- wine_words_filtered
                
                if ((input$province2 == "All") & (input$region2 == "All") & (input$variety2 == "All")) {
                    updateSelectizeInput(
                        session, "winery2", choices = c("All", unique(winery2_choices$winery))
                    )
                } else {
                    if (input$province2 != "All") {
                        winery2_choices <- winery2_choices %>% filter(province == input$province2)
                    }
                    if (input$region2 != "All") {
                        winery2_choices <- winery2_choices %>% filter(region_1 == input$region2)
                    }
                    if (input$variety2 != "All") {
                        winery2_choices <- winery2_choices %>% filter(variety == input$variety2)
                    }
                    updateSelectizeInput(
                        session, "winery2", choices = c("All", unique(winery2_choices$winery))
                    )
                }
            }
            else {
                winery2_choices <- wine_words_filtered
                
                if ((input$province2 == "All") & (input$region2 == "All") & (input$variety2 == "All")) {
                    updateSelectizeInput(
                        session, "winery2", choices = c("All", unique(winery2_choices$winery)), selected = input$winery2
                    )
                } else {
                    if (input$province2 != "All") {
                        winery2_choices <- winery2_choices %>% filter(province == input$province2)
                    }
                    if (input$region2 != "All") {
                        winery2_choices <- winery2_choices %>% filter(region_1 == input$region2)
                    }
                    if (input$variety2 != "All") {
                        winery2_choices <- winery2_choices %>% filter(variety == input$variety2)
                    }
                    updateSelectizeInput(
                        session, "winery2", choices = c("All", unique(winery2_choices$winery)), selected = input$winery2
                    )
                }
            }
        })
        # inputs variety2
        observe({ 
            if (input$variety2 == "All") {
                variety2_choices <- wine_words_filtered 
                
                if ((input$province2 == "All") & (input$region2 == "All") & (input$winery2 == "All")) {
                    updateSelectizeInput(
                        session, "variety2", choices = c("All", unique(variety2_choices$variety))
                    )
                } else {
                    if (input$province2 != "All") {
                        variety2_choices <- variety2_choices %>% filter(province == input$province2)
                    }
                    if (input$region2 != "All") {
                        variety2_choices <- variety2_choices %>% filter(region_1 == input$region2)
                    }
                    if (input$winery2 != "All") {
                        variety2_choices <- variety2_choices %>% filter(winery == input$winery2)
                    }
                    updateSelectizeInput(
                        session, "variety2", choices = c("All", unique(variety2_choices$variety))
                    )
                }
            }
            else {
                variety2_choices <- wine_words_filtered 
                
                if ((input$province2 == "All") & (input$region2 == "All") & (input$winery2 == "All")) {
                    updateSelectizeInput(
                        session, "variety2", choices = c("All", unique(variety2_choices$variety)), selected = input$variety2
                    )
                } else {
                    if (input$province2 != "All") {
                        variety2_choices <- variety2_choices %>% filter(province == input$province2)
                    }
                    if (input$region2 != "All") {
                        variety2_choices <- variety2_choices %>% filter(region_1 == input$region2)
                    }
                    if (input$winery2 != "All") {
                        variety2_choices <- variety2_choices %>% filter(winery == input$winery2)
                    }
                    updateSelectizeInput(
                        session, "variety2", choices = c("All", unique(variety2_choices$variety)), selected = input$variety2
                    )
                }
            }
        })
        
        # WORD TAB - OUTPUTS
        top_words_filtered = reactive({
            # icheck if any of the inputs are selected
            if ((input$province2 != "All") | (input$region2 != "All") | (input$winery2 != "All") | (input$variety2 != "All")) {
                fdata <- wine_words_filtered 
                
                # if any are selected, filter the dataframe by those selected inputs
                if (input$province2 != "All") {
                    fdata <- fdata %>% filter(province == input$province2)
                }
                if (input$region2 != "All") {
                    fdata <- fdata %>% filter(region_1 == input$region2)
                }
                if (input$variety2 != "All") {
                    fdata <- fdata %>% filter(variety == input$variety2)
                }
                if (input$winery2 != "All") {
                    fdata <- fdata %>% filter(winery == input$winery2)
                }
                
                fdata %>%
                    count(word, sort = TRUE) %>%
                    top_n(10) %>%
                    ungroup() %>%
                    mutate(word = reorder(word, n))
            } else {
                adata <- wine_words_filtered 
                adata %>%
                    count(word, sort = TRUE) %>%
                    top_n(10) %>% 
                    ungroup() %>%
                    mutate(word = reorder(word, n))
            }
        }) 
        # WORD TAB PLOT
        output$words <- renderPlot(
            top_words_filtered() %>%
                ggplot(aes(word, n)) + geom_col(aes(fill = word)) +
                guides(fill = guide_legend(reverse = TRUE)) +
                labs(x = "Top Characteristics", y = "Total Count of Mentions in Reviews", fill="Top Characteristics")
        )
        
#################################### VARIETIES TAB #################################### 
# INPUT - PROVINCE
        observe({
            province3_df = df
            
            if (input$province3 != "All") {
                province3_df <- province3_df[province3_df$province == input$province3,]
            }
            if (input$region3 != "All") {
                province3_df <- province3_df[province3_df$region == input$region3,]
            }
            if (input$price3 != "All") {
                province3_df <- province3_df[province3_df$price <= input$price3,]
            }
            if (input$points3 != "All") {
                province3_df <- province3_df[province3_df$points <= input$points3,]
            }
            
            province3_df = province3_df %>% 
                select(province) %>% 
                unique(.)
            
            updateSelectizeInput(
                session, "province3", choices = c("All", province3_df), selected = F
            )
        })
# INPUT - REGION
        observe({
            region3_df = df
            
            if (input$province3 != "All") {
                region3_df <- region3_df[region3_df$province == input$province3,]
            }
            if (input$region3 != "All") {
                region3_df <- region3_df[region3_df$region == input$region3,]
            }
            if (input$price3 != "All") {
                region3_df <- region3_df[region3_df$price <= input$price3,]
            }
            if (input$points3 != "All") {
                region3_df <- region3_df[region3_df$points <= input$points3,]
            }
            
            region3_df = region3_df %>% 
                select(region) %>% 
                unique(.)
            
            updateSelectizeInput(
                session, "region3", choices = c("All", region3_df), selected = F
            )
        })
        
# OUTPUTS
        score_varieties = reactive({
            top10 = df %>% 
                filter(province == input$province3, region == input$region3) %>% 
                group_by(country, province, variety) %>% 
                summarise(n=n()) %>%
                arrange(desc(n)) %>% 
                top_n(10, n) %>% 
                pull(variety)
            
            df %>% 
                filter(province == input$province3, region == input$region3) %>%
                filter(variety %in% top10, n_distinct(variety) > mean(variety)-2*sd(variety)) %>% 
                select(variety, points)
        })
        
        output$varieties <- renderPlot(
            score_varieties() %>%
                ggplot(aes(
                    x = fct_reorder(variety, points, median),
                    y = points,
                    color = fct_reorder(variety, points, median)))
            + geom_boxplot() 
            + labs(x = "Varieties of Wine",
                   y = "Review Scores",
                   title = "Distribution of Wine Enthusiast Review Scores by Variety and Region",
                   fill = "Top Varieties")
            + guides(color = guide_legend(reverse = TRUE))
        )
        
#################################### PRICES TAB #################################### 
# INPUTS
        observe({
            region4_df = unique(df %>% 
                                  filter(province == input$province4) %>%
                                  .$region
            )
            updateSelectizeInput(
                session, "region4", choices = region4_df, selected = F
            )
        })
# OUTPUTS
        price_varieties = reactive({
            df %>% 
                filter(province == input$province4, region == input$region4, price < input$price1) %>% 
                select(price, rating)
        })
        output$prices <- renderPlot({
            price_varieties() %>%
                ggplot(aes(x = price, fill = rating)) + geom_density() + labs(x = 'Price', y = 'Density', fill = "Review Scores")
        })
        
#################################### PRICES TAB #################################### 
# INPUTS
        observe({
            region5 = unique(df %>% 
                                 filter(province == input$province5) %>%
                                 .$region)
            
            updateSelectizeInput(
                session, "region5", choices = region5, selected = F
            )
        })
        observe({
            variety5 = unique(df %>% 
                                 filter(province == input$province5, region == input$region5) %>%
                                 .$variety
            )
            updateSelectizeInput(
                session, "variety5", choices = variety5, selected = F
            )
        })
# OUTPUTS
        grades_variety = reactive({
            df %>% 
                filter(province == input$province5, region == input$region5, variety == input$variety2, !(is.na(points))) %>% 
                select(points, rating)
        })
        
        output$gradesLoc <- renderPlot(
            grades_variety() %>% 
                ggplot(aes(x = fct_reorder(rating, points, mean))) + geom_bar(aes(fill = rating), position = "dodge")
                + labs(title="Wine Grades by Region", x="Grades", y="Frequency", fill="Review Score")
        )
        
        # PRICE VS POINTS TAB
        output$pvp <- renderPlotly(
            df %>% 
                plot_ly(x = ~price, y = ~points, color = ~rating)
        )
        
    }
)