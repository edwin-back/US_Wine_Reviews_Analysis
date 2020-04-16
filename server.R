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
            filteredDT() %>% rename(Vineyard = designation, Score = points, Price = price,
                                    State = province, Region = region, Variety = variety,
                                    Winery = winery, Rating = rating)
        }))
        
        # outputs - value boxes
        output$countryBox <- renderValueBox({
            valueBox(
                "U.S.A.", "Country", color = "red"
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
                
                if ((input$region2 == "All") & (input$winery2 == "All") & (input$vineyard2 == "All")) {
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
                    if (input$vineyard2 != "All") {
                        province2_choices <- province2_choices %>% filter(designation == input$vineyard2)
                    }
                    updateSelectizeInput(
                        session, "province2", choices = c("All", unique(province2_choices$province))
                    )
                }
            }
            else {
                province2_choices <- wine_words_filtered
                
                if ((input$region2 == "All") & (input$winery2 == "All") & (input$vineyard2 == "All")) {
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
                    if (input$vineyard2 != "All") {
                        province2_choices <- province2_choices %>% filter(designation == input$vineyard2)
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
                
                if ((input$province2 == "All") & (input$winery2 == "All") & (input$vineyard2 == "All")) {
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
                    if (input$vineyard2 != "All") {
                        region2_choices <- region2_choices %>% filter(designation == input$vineyard2)
                    }
                    updateSelectizeInput(
                        session, "region2", choices = c("All", unique(region2_choices$region_1))
                    )
                }
            }
            else {
                region2_choices <- wine_words_filtered
                
                if ((input$province2 == "All") & (input$winery2 == "All") & (input$vineyard2 == "All")) {
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
                    if (input$vineyard2 != "All") {
                        region2_choices <- region2_choices %>% filter(designation == input$vineyard2)
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
                
                if ((input$province2 == "All") & (input$region2 == "All") & (input$vineyard2 == "All")) {
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
                    if (input$vineyard2 != "All") {
                        winery2_choices <- winery2_choices %>% filter(designation == input$vineyard2)
                    }
                    updateSelectizeInput(
                        session, "winery2", choices = c("All", unique(winery2_choices$winery))
                    )
                }
            }
            else {
                winery2_choices <- wine_words_filtered
                
                if ((input$province2 == "All") & (input$region2 == "All") & (input$vineyard2 == "All")) {
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
                    if (input$vineyard2 != "All") {
                        winery2_choices <- winery2_choices %>% filter(designation == input$vineyard2)
                    }
                    updateSelectizeInput(
                        session, "winery2", choices = c("All", unique(winery2_choices$winery)), selected = input$winery2
                    )
                }
            }
        })
        # inputs vineyard2
        observe({ 
            if (input$vineyard2 == "All") {
                vineyard2_choices <- wine_words_filtered 
                
                if ((input$province2 == "All") & (input$region2 == "All") & (input$winery2 == "All")) {
                    updateSelectizeInput(
                        session, "vineyard2", choices = c("All", unique(vineyard2_choices$designation))
                    )
                } else {
                    if (input$province2 != "All") {
                        vineyard2_choices <- vineyard2_choices %>% filter(province == input$province2)
                    }
                    if (input$region2 != "All") {
                        vineyard2_choices <- vineyard2_choices %>% filter(region_1 == input$region2)
                    }
                    if (input$winery2 != "All") {
                        vineyard2_choices <- vineyard2_choices %>% filter(winery == input$winery2)
                    }
                    updateSelectizeInput(
                        session, "vineyard2", choices = c("All", unique(vineyard2_choices$designation))
                    )
                }
            }
            else {
                vineyard2_choices <- wine_words_filtered 
                
                if ((input$province2 == "All") & (input$region2 == "All") & (input$winery2 == "All")) {
                    updateSelectizeInput(
                        session, "vineyard2", choices = c("All", unique(vineyard2_choices$designation)), selected = input$vineyard2
                    )
                } else {
                    if (input$province2 != "All") {
                        vineyard2_choices <- vineyard2_choices %>% filter(province == input$province2)
                    }
                    if (input$region2 != "All") {
                        vineyard2_choices <- vineyard2_choices %>% filter(region_1 == input$region2)
                    }
                    if (input$winery2 != "All") {
                        vineyard2_choices <- vineyard2_choices %>% filter(winery == input$winery2)
                    }
                    updateSelectizeInput(
                        session, "vineyard2", choices = c("All", unique(vineyard2_choices$designation)), selected = input$vineyard2
                    )
                }
            }
        })
        
        # WORD TAB - OUTPUTS
        top_words_filtered = reactive({
            # check if any of the inputs are selected
            if ((input$province2 != "All") | (input$region2 != "All") | (input$winery2 != "All") | (input$vineyard2 != "All")) {
                fdata <- wine_words_filtered 
                
                # if any are selected, filter the dataframe by those selected inputs
                if (input$province2 != "All") {
                    fdata <- fdata %>% filter(province == input$province2)
                }
                if (input$region2 != "All") {
                    fdata <- fdata %>% filter(region_1 == input$region2)
                }
                if (input$winery2 != "All") {
                    fdata <- fdata %>% filter(winery == input$winery2)
                }
                if (input$vineyard2 != "All") {
                    fdata <- fdata %>% filter(designation == input$vineyard2)
                }

                fdata <- fdata %>%
                    count(word, sort = TRUE) %>%
                    top_n(10) %>%
                    mutate(percent = round(n / sum(n) * 100, 1))
                
                fdata$word <- factor(fdata$word, levels = unique(fdata$word)[order(fdata$percent, decreasing = F)])
                fdata
            } else {
                adata <- wine_words_filtered %>%
                    count(word, sort = TRUE) %>%
                    top_n(10) %>%
                    mutate(percent = round(n / sum(n) * 100, 1))
                
                adata$word <- factor(adata$word, levels = unique(adata$word)[order(adata$percent, decreasing = F)])
                adata
            }
        }) 
        # CHARACTERISTICS TAB PLOT
        output$words <- renderPlotly({
            colfunc <- colorRampPalette(c("blue", "red"))
            pal <- colfunc(max(top_words_filtered()$percent))[top_words_filtered()$percent]
            f = list(family = "Verdana", size = 18, color = '#f2f2f2')
            t = list(family = "Verdana", size = 16, color = '#f2f2f2')
            xlab = list(
                title = "Percentage of Top Ten Mentions",
                titlefont = f,
                tickfont = t,
                ticksuffix = "%",
                gridcolor = 'rgb(204, 204, 204)',
                showgrid = TRUE,
                zeroline = TRUE,
                zerolinecolor = 'rgb(204, 204, 204)',
                zerolinewidth = 1
            )
            ylab = list(
                title = "",
                tickfont = t,
                zeroline = TRUE,
                zerolinecolor = 'rgb(204, 204, 204)',
                zerolinewidth = 1
            )
            m <- list(l = 5, r = 5, b = 100, t = 25, pad = 3)
            
            plot_ly(
                top_words_filtered(),
                y = ~ word,
                x = ~ percent,
                type = 'bar',
                orientation = 'h',
                text = top_words_filtered()$percent,
                textposition = 'auto',
                marker = list(color = pal),
                height = 500
            ) %>%
                layout(title = "",
                       font = list(color = '#f2f2f2'),
                       xaxis = xlab,
                       yaxis = ylab,
                       margin = m,
                       paper_bgcolor='#404040',
                       plot_bgcolor='#404040')
        })
        
#################################### VARIETIES TAB #################################### 
        # INPUT - PROVINCE3
        observe({
            if (input$province3 == "All") {
                province3_choices <- df
                
                if (input$region3 == "All") {
                    updateSelectizeInput(
                        session, "province3", choices = c("All", unique(province3_choices$province))
                    )
                } else {
                    province3_choices <- province3_choices %>% filter(region == input$region3,
                                                                      points <= max(input$points3), points >= min(input$points3))
                    updateSelectizeInput(
                        session, "province3", choices = c("All", unique(province3_choices$province))
                    )
                }
            }
            else {
                province3_choices <- df
                
                if (input$region3 == "All") {
                    updateSelectizeInput(
                        session, "province3", choices = c("All", unique(province3_choices$province)), selected = input$province3
                    )
                } else {
                    province3_choices <- province3_choices %>% filter(region == input$region3,
                                                                      points <= max(input$points3), points >= min(input$points3))
                    updateSelectizeInput(
                        session, "province3", choices = c("All", unique(province3_choices$province)), selected = input$province3
                    )
                }
            }
        })

        # INPUT - REGION3
        observe({
            if (input$region3 == "All") {
                region3_choices <- df

                if (input$province3 == "All") {
                    updateSelectizeInput(
                        session, "region3", choices = c("All", unique(region3_choices$region))
                    )
                } else {
                    region3_choices <- region3_choices %>% filter(province == input$province3,
                                                                  points <= max(input$points3), points >= min(input$points3))
                    updateSelectizeInput(
                        session, "region3", choices = c("All", unique(region3_choices$region))
                    )
                }
            }
            else {
                region3_choices <- df

                if (input$province3 == "All") {
                    updateSelectizeInput(
                        session, "region3", choices = c("All", unique(region3_choices$region)), selected = input$region3
                    )
                } else {
                    region3_choices <- region3_choices %>% filter(province == input$province3,
                                                                  points <= max(input$points3), points >= min(input$points3))
                    updateSelectizeInput(
                        session, "region3", choices = c("All", unique(region3_choices$region)), selected = input$region3
                    )
                }
            }
        })
        
        # OUTPUTS
        score_varieties = reactive({
            # check if any of the inputs are selected
            if ((input$province3 != "All") | (input$region3 != "All")) {
                fdata <- df 
                
                # if any are selected, filter the dataframe by those selected inputs
                if (input$province3 != "All") {
                    fdata <- fdata %>% filter(province == input$province3)
                }
                if (input$region3 != "All") {
                    fdata <- fdata %>% filter(region == input$region3)
                }
                
                fdata <- fdata %>%
                    filter(points <= max(input$points3), points >= min(input$points3)) %>% 
                    count(variety, sort = TRUE) %>%
                    top_n(5) %>%
                    mutate(percent = round(n / sum(n) * 100, 0))
                
                # fdata$word <- factor(fdata$word, levels = unique(fdata$word)[order(fdata$percent, decreasing = F)])
                fdata
            } else {
                adata <- df %>%
                    filter(points <= max(input$points3), points >= min(input$points3)) %>% 
                    count(variety, sort = TRUE) %>%
                    top_n(5) %>%
                    mutate(percent = round(n / sum(n) * 100, 0))
                
                # adata$word <- factor(adata$word, levels = unique(adata$word)[order(adata$percent, decreasing = F)])
                adata
            }
        })
        
        output$varieties <- renderPlotly({
            colors <- c('rgb(211,94,96)', 'rgb(128,133,133)', 'rgb(144,103,167)', 'rgb(171,104,87)', 'rgb(114,147,203)')
            m <- list(l = 5, r = 5, b = 50, t = 100, pad = 3)
            l <- list(
                font = list(
                    size = 20,
                    color = "#f2f2f2"))
            
            fig <- plot_ly(score_varieties(), labels = ~variety, values = ~percent, type = 'pie', height = 600,
                           textposition = 'auto', textinfo = 'label+percent', insidetextfont = list(color = '#f2f2f2', size = 14),
                           hoverinfo = 'text', text = ~paste('Number of Wines:', n),
                           marker = list(colors = colors, line = list(color = '#FFFFFF', width = 1)),
                           showlegend = T)
            fig <- fig %>% layout(title = 'Top Varieties by Geographical Region & Review Score',
                                  font = list(color = '#f2f2f2', size = 18),
                                  legend = l,
                                  margin = m,
                                  xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
                                  yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
                                  paper_bgcolor='#404040',
                                  plot_bgcolor='#404040')
            fig
        })

#################################### WINERIES TAB #################################### 
        # INPUT - PROVINCE4
        observe({
            if (input$province4 == "All") {
                province4_choices <- df
                
                if (input$region4 == "All") {
                    updateSelectizeInput(
                        session, "province4", choices = c("All", unique(province4_choices$province))
                    )
                } else {
                    province4_choices <- province4_choices %>% filter(region == input$region4,
                                                                      points <= max(input$points4), points >= min(input$points4))
                    updateSelectizeInput(
                        session, "province4", choices = c("All", unique(province4_choices$province))
                    )
                }
            }
            else {
                province4_choices <- df
                
                if (input$region4 == "All") {
                    updateSelectizeInput(
                        session, "province4", choices = c("All", unique(province4_choices$province)), selected = input$province4
                    )
                } else {
                    province4_choices <- province4_choices %>% filter(region == input$region4,
                                                                      points <= max(input$points4), points >= min(input$points4))
                    updateSelectizeInput(
                        session, "province4", choices = c("All", unique(province4_choices$province)), selected = input$province4
                    )
                }
            }
        })
        
        # INPUT - REGION4
        observe({
            if (input$region4 == "All") {
                region4_choices <- df
                
                if (input$province4 == "All") {
                    updateSelectizeInput(
                        session, "region4", choices = c("All", unique(region4_choices$region))
                    )
                } else {
                    region4_choices <- region4_choices %>% filter(province == input$province4,
                                                                  points <= max(input$points4), points >= min(input$points4))
                    updateSelectizeInput(
                        session, "region4", choices = c("All", unique(region4_choices$region))
                    )
                }
            }
            else {
                region4_choices <- df
                
                if (input$province4 == "All") {
                    updateSelectizeInput(
                        session, "region4", choices = c("All", unique(region4_choices$region)), selected = input$region4
                    )
                } else {
                    region4_choices <- region4_choices %>% filter(province == input$province4,
                                                                  points <= max(input$points4), points >= min(input$points4))
                    updateSelectizeInput(
                        session, "region4", choices = c("All", unique(region4_choices$region)), selected = input$region4
                    )
                }
            }
        })
        
        # OUTPUTS
        score_wineries = reactive({
            # check if any of the inputs are selected
            if ((input$province4 != "All") | (input$region4 != "All")) {
                fdata <- df 
                
                # if any are selected, filter the dataframe by those selected inputs
                if (input$province4 != "All") {
                    fdata <- fdata %>% filter(province == input$province4)
                }
                if (input$region4 != "All") {
                    fdata <- fdata %>% filter(region == input$region4)
                }
                
                fdata <- fdata %>%
                    filter(points <= max(input$points4), points >= min(input$points4)) %>% 
                    count(winery, sort = TRUE) %>%
                    top_n(5) %>%
                    mutate(percent = round(n / sum(n) * 100, 0))
                
                fdata
            } else {
                adata <- df %>%
                    filter(points <= max(input$points4), points >= min(input$points4)) %>% 
                    count(winery, sort = TRUE) %>%
                    top_n(5) %>%
                    mutate(percent = round(n / sum(n) * 100, 0))
                
                adata
            }
        })
        
        output$wineries <- renderPlotly({
            colors <- c('rgba(31,120,180, .8)', 'rgba(51,160,44, .8)', 'rgba(251,154,153, .8)', 'rgba(227,26,28, .8)', 'rgba(255,127,0, .8)',
                        'rgb(166,206,227)', 'rgb(178,223,138)', 'rgb(202,178,214)')
            m <- list(l = 5, r = 5, b = 50, t = 100, pad = 3)
            l <- list(
                font = list(
                    size = 20,
                    color = "#f2f2f2"))
            
            fig <- plot_ly(score_wineries(), labels = ~winery, values = ~percent, type = 'pie', height = 600,
                           textposition = 'auto', textinfo = 'label+percent', insidetextfont = list(color = '#f2f2f2', size = 14),
                           hoverinfo = 'text', text = ~paste('Number of Wines:', n),
                           marker = list(colors = colors, line = list(color = '#FFFFFF', width = 1)),
                           showlegend = T)
            fig <- fig %>% layout(title = 'Top Wineries by Geographical Region & Review Score',
                                  font = list(color = '#f2f2f2', size = 18),
                                  legend = l,
                                  margin = m,
                                  xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
                                  yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
                                  paper_bgcolor='#404040',
                                  plot_bgcolor='#404040')
            fig
        })
        
#################################### VINEYARDS TAB #################################### 
        # INPUT - PROVINCE5
        observe({
            if (input$province5 == "All") {
                province5_choices <- df
                
                if (input$region5 == "All") {
                    updateSelectizeInput(
                        session, "province5", choices = c("All", unique(province5_choices$province))
                    )
                } else {
                    province5_choices <- province5_choices %>% filter(region == input$region5,
                                                                      points <= max(input$points5), points >= min(input$points5))
                    updateSelectizeInput(
                        session, "province5", choices = c("All", unique(province5_choices$province))
                    )
                }
            }
            else {
                province5_choices <- df
                
                if (input$region5 == "All") {
                    updateSelectizeInput(
                        session, "province5", choices = c("All", unique(province5_choices$province)), selected = input$province5
                    )
                } else {
                    province5_choices <- province5_choices %>% filter(region == input$region5,
                                                                      points <= max(input$points5), points >= min(input$points5))
                    updateSelectizeInput(
                        session, "province5", choices = c("All", unique(province5_choices$province)), selected = input$province5
                    )
                }
            }
        })
        
        # INPUT - REGION5
        observe({
            if (input$region5 == "All") {
                region5_choices <- df
                
                if (input$province5 == "All") {
                    updateSelectizeInput(
                        session, "region5", choices = c("All", unique(region5_choices$region))
                    )
                } else {
                    region5_choices <- region5_choices %>% filter(province == input$province5,
                                                                  points <= max(input$points5), points >= min(input$points5))
                    updateSelectizeInput(
                        session, "region5", choices = c("All", unique(region5_choices$region))
                    )
                }
            }
            else {
                region5_choices <- df
                
                if (input$province5 == "All") {
                    updateSelectizeInput(
                        session, "region5", choices = c("All", unique(region5_choices$region)), selected = input$region5
                    )
                } else {
                    region5_choices <- region5_choices %>% filter(province == input$province5,
                                                                  points <= max(input$points5), points >= min(input$points5))
                    updateSelectizeInput(
                        session, "region5", choices = c("All", unique(region5_choices$region)), selected = input$region5
                    )
                }
            }
        })
        
        # OUTPUTS
        score_vineyards = reactive({
            # check if any of the inputs are selected
            if ((input$province5 != "All") | (input$region5 != "All")) {
                fdata <- df 
                
                # if any are selected, filter the dataframe by those selected inputs
                if (input$province5 != "All") {
                    fdata <- fdata %>% filter(province == input$province5)
                }
                if (input$region5 != "All") {
                    fdata <- fdata %>% filter(region == input$region5)
                }
                
                fdata <- fdata %>%
                    filter(points <= max(input$points5), points >= min(input$points5)) %>% 
                    count(designation, sort = TRUE) %>%
                    top_n(5) %>%
                    mutate(percent = round(n / sum(n) * 100, 0))
                
                fdata
            } else {
                adata <- df %>%
                    filter(points <= max(input$points5), points >= min(input$points5)) %>% 
                    count(designation, sort = TRUE) %>%
                    top_n(5) %>%
                    mutate(percent = round(n / sum(n) * 100, 0))
                
                adata
            }
        })
        
        output$vineyards <- renderPlotly({
            colors <- c('rgb(141,211,199)', 'rgb(190,186,218)', 'rgb(251,128,114)', 'rgb(128,177,211)', 'rgb(253,180,98)',
                        'rgb(179,222,105)', 'rgb(252,205,229)', 'rgb(217,217,217)')
            m <- list(l = 5, r = 5, b = 50, t = 100, pad = 3)
            l <- list(
                font = list(
                    size = 20,
                    color = "#f2f2f2"))
            
            fig <- plot_ly(score_vineyards(), labels = ~designation, values = ~percent, type = 'pie', height = 600,
                           textposition = 'auto', textinfo = 'label+percent', insidetextfont = list(color = '#4d4d4d', size = 14),
                           hoverinfo = 'text', text = ~paste('Number of Wines:', n),
                           marker = list(colors = colors, line = list(color = '#FFFFFF', width = 1)),
                           showlegend = T)
            fig <- fig %>% layout(title = 'Top Vineyards by Geographical Region & Review Score',
                                  font = list(color = '#f2f2f2', size = 18),
                                  legend = l,
                                  margin = m,
                                  xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
                                  yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
                                  paper_bgcolor='#404040',
                                  plot_bgcolor='#404040')
            fig
        })
        
#################################### PRICES TAB #################################### 
        # INPUT - PROVINCE6
        observe({
            if (input$province6 == "All") {
                province6_choices <- df
                
                if ((input$region6 == "All") & (input$variety6 == "All") & (input$rating6 == "All")) {
                    updateSelectizeInput(
                        session, "province6", choices = c("All", unique(province6_choices$province))
                    )
                } else {
                    if (input$region6 != "All") {
                        province6_choices <- province6_choices %>% filter(region == input$region6)
                    }
                    if (input$variety6 != "All") {
                        province6_choices <- province6_choices %>% filter(variety == input$variety6)
                    }
                    if (input$rating6 != "All") {
                        province6_choices <- province6_choices %>% filter(rating == input$rating6)
                    }
                    updateSelectizeInput(
                        session, "province6", choices = c("All", unique(province6_choices$province))
                    )
                }
            }
            else {
                province6_choices <- df
                
                if ((input$region6 == "All") & (input$variety6 == "All") & (input$rating6 == "All")) {
                    updateSelectizeInput(
                        session, "province6", choices = c("All", unique(province6_choices$province)), selected = input$province6
                    )
                } else {
                    if (input$region6 != "All") {
                        province6_choices <- province6_choices %>% filter(region == input$region6)
                    }
                    if (input$variety6 != "All") {
                        province6_choices <- province6_choices %>% filter(variety == input$variety6)
                    }
                    if (input$rating6 != "All") {
                        province6_choices <- province6_choices %>% filter(rating == input$rating6)
                    }
                    updateSelectizeInput(
                        session, "province6", choices = c("All", unique(province6_choices$province)), selected = input$province6
                    )
                }
            }
        })
        # INPUT - region6
        observe({
            if (input$region6 == "All") {
                region6_choices <- df
                
                if ((input$province6 == "All") & (input$variety6 == "All") & (input$rating6 == "All")) {
                    updateSelectizeInput(
                        session, "region6", choices = c("All", unique(region6_choices$region))
                    )
                } else {
                    if (input$province6 != "All") {
                        region6_choices <- region6_choices %>% filter(province == input$province6)
                    }
                    if (input$variety6 != "All") {
                        region6_choices <- region6_choices %>% filter(variety == input$variety6)
                    }
                    if (input$rating6 != "All") {
                        region6_choices <- region6_choices %>% filter(rating == input$rating6)
                    }
                    updateSelectizeInput(
                        session, "region6", choices = c("All", unique(region6_choices$region))
                    )
                }
            }
            else {
                region6_choices <- df
                
                if ((input$province6 == "All") & (input$variety6 == "All") & (input$rating6 == "All")) {
                    updateSelectizeInput(
                        session, "region6", choices = c("All", unique(region6_choices$region)), selected = input$region6
                    )
                } else {
                    if (input$province6 != "All") {
                        region6_choices <- region6_choices %>% filter(province == input$province6)
                    }
                    if (input$variety6 != "All") {
                        region6_choices <- region6_choices %>% filter(variety == input$variety6)
                    }
                    if (input$rating6 != "All") {
                        region6_choices <- region6_choices %>% filter(rating == input$rating6)
                    }
                    updateSelectizeInput(
                        session, "region6", choices = c("All", unique(region6_choices$region)), selected = input$region6
                    )
                }
            }
        })
        # INPUT - variety6
        observe({ 
            if (input$variety6 == "All") {
                variety6_choices <- df
                
                if ((input$province6 == "All") & (input$region6 == "All") & (input$rating6 == "All")) {
                    updateSelectizeInput(
                        session, "variety6", choices = c("All", unique(variety6_choices$variety))
                    )
                } else {
                    if (input$province6 != "All") {
                        variety6_choices <- variety6_choices %>% filter(province == input$province6)
                    }
                    if (input$region6 != "All") {
                        variety6_choices <- variety6_choices %>% filter(region == input$region6)
                    }
                    if (input$rating6 != "All") {
                        variety6_choices <- variety6_choices %>% filter(rating == input$rating6)
                    }
                    updateSelectizeInput(
                        session, "variety6", choices = c("All", unique(variety6_choices$variety))
                    )
                }
            }
            else {
                variety6_choices <- df
                
                if ((input$province6 == "All") & (input$region6 == "All") & (input$rating6 == "All")) {
                    updateSelectizeInput(
                        session, "variety6", choices = c("All", unique(variety6_choices$variety)), selected = input$variety6
                    )
                } else {
                    if (input$province6 != "All") {
                        variety6_choices <- variety6_choices %>% filter(province == input$province6)
                    }
                    if (input$region6 != "All") {
                        variety6_choices <- variety6_choices %>% filter(region == input$region6)
                    }
                    if (input$rating6 != "All") {
                        variety6_choices <- variety6_choices %>% filter(rating == input$rating6)
                    }
                    updateSelectizeInput(
                        session, "variety6", choices = c("All", unique(variety6_choices$variety)), selected = input$variety6
                    )
                }
            }
        })
        # INPUT - rating6
        observe({ 
            if (input$rating6 == "All") {
                rating6_choices <- df 
                
                if ((input$province6 == "All") & (input$region6 == "All") & (input$variety6 == "All")) {
                    updateSelectizeInput(
                        session, "rating6", choices = c("All", unique(rating6_choices$rating))
                    )
                } else {
                    if (input$province6 != "All") {
                        rating6_choices <- rating6_choices %>% filter(province == input$province6)
                    }
                    if (input$region6 != "All") {
                        rating6_choices <- rating6_choices %>% filter(region == input$region6)
                    }
                    if (input$variety6 != "All") {
                        rating6_choices <- rating6_choices %>% filter(variety == input$variety6)
                    }
                    updateSelectizeInput(
                        session, "rating6", choices = c("All", unique(rating6_choices$rating))
                    )
                }
            }
            else {
                rating6_choices <- df 
                
                if ((input$province6 == "All") & (input$region6 == "All") & (input$variety6 == "All")) {
                    updateSelectizeInput(
                        session, "rating6", choices = c("All", unique(rating6_choices$rating)), selected = input$rating6
                    )
                } else {
                    if (input$province6 != "All") {
                        rating6_choices <- rating6_choices %>% filter(province == input$province6)
                    }
                    if (input$region6 != "All") {
                        rating6_choices <- rating6_choices %>% filter(region == input$region6)
                    }
                    if (input$variety6 != "All") {
                        rating6_choices <- rating6_choices %>% filter(variety == input$variety6)
                    }
                    updateSelectizeInput(
                        session, "rating6", choices = c("All", unique(rating6_choices$rating)), selected = input$rating6
                    )
                }
            }
        })
        
        # OUTPUTS
        price_density = reactive({
            # check if any of the inputs are selected
            if ((input$province6 != "All") | (input$region6 != "All") | (input$variety6 != "All") | (input$rating6 != "All")) {
                fdata <- df
                
                # if any are selected, filter the dataframe by those selected inputs
                if (input$province6 != "All") {
                    fdata <- fdata %>% filter(province == input$province6)
                }
                if (input$region6 != "All") {
                    fdata <- fdata %>% filter(region == input$region6)
                }
                if (input$variety6 != "All") {
                    fdata <- fdata %>% filter(variety == input$variety6)
                }
                if (input$rating6 != "All") {
                    fdata <- fdata %>% filter(rating == input$rating6)
                }
                
                fdata %>% filter(price <= mean(price) + 3*sd(price), price >= mean(price) - 3*sd(price)) # only look at data 3 SD's above and below sample mean
            } else {
                adata <- df %>% filter(price <= mean(price) + 3*sd(price), price >= mean(price) - 3*sd(price))
                adata
            }
        })
        
        output$prices <- renderPlotly({
            f = list(family = "Verdana", size = 18, color = '#f2f2f2')
            t = list(family = "Verdana", size = 16, color = '#f2f2f2')
            xlab = list(
                title = "Wine Prices Per Bottle (USD)",
                font = f,
                tickfont = t,
                tickprefix = '$',
                dtick = 10,
                tickmode = 'linear',
                gridcolor = 'rgb(204, 204, 204)',
                showgrid = TRUE,
                zeroline = TRUE,
                zerolinecolor = 'rgb(204, 204, 204)',
                zerolinewidth = 1
            )
            ylab = list(
                title = "Density",
                font = f,
                tickfont = t,
                gridcolor = 'rgb(204, 204, 204)',
                showgrid = TRUE,
                zeroline = TRUE,
                zerolinecolor = 'rgb(204, 204, 204)',
                zerolinewidth = 2
            )
            m <- list(l = 10, r = 10, b = 100, t = 100, pad = 3)
            
            densityplot = density(price_density()$price)

            fig <- plot_ly(x = ~densityplot$x, y = ~densityplot$y, type = 'scatter', mode = 'lines', fill = 'tozeroy', name = "Probability Density",
                           fillcolor = 'rgba(204,235,197,0.7)', line = list(width = 2, color = 'rgba(255, 77, 77, 0.7)'), height = 600)
            
            fig <- fig %>%
                layout(
                    title = 'Price Density by Geographical Region, Variety & Rating',
                    font = list(color = '#f2f2f2', size = 18),
                    margin = m,
                    xaxis = xlab,
                    yaxis = ylab,
                    paper_bgcolor='#404040',
                    plot_bgcolor='#404040'
                )
            fig
        })
        
#################################### REVIEW SCORES TAB #################################### 
        # INPUTS
        # INPUT - province7
        observe({
            if (input$province7 == "All") {
                province7_choices <- df
                
                if ((input$region7 == "All") & (input$variety7 == "All")) {
                    updateSelectizeInput(
                        session, "province7", choices = c("All", unique(province7_choices$province))
                    )
                } else {
                    if (input$region7 != "All") {
                        province7_choices <- province7_choices %>% filter(region == input$region7)
                    }
                    if (input$variety7 != "All") {
                        province7_choices <- province7_choices %>% filter(variety == input$variety7)
                    }
                    updateSelectizeInput(
                        session, "province7", choices = c("All", unique(province7_choices$province))
                    )
                }
            }
            else {
                province7_choices <- df
                
                if ((input$region7 == "All") & (input$variety7 == "All")) {
                    updateSelectizeInput(
                        session, "province7", choices = c("All", unique(province7_choices$province)), selected = input$province7
                    )
                } else {
                    if (input$region7 != "All") {
                        province7_choices <- province7_choices %>% filter(region == input$region7)
                    }
                    if (input$variety7 != "All") {
                        province7_choices <- province7_choices %>% filter(variety == input$variety7)
                    }
                    updateSelectizeInput(
                        session, "province7", choices = c("All", unique(province7_choices$province)), selected = input$province7
                    )
                }
            }
        })
        # INPUT - region7
        observe({
            if (input$region7 == "All") {
                region7_choices <- df
                
                if ((input$province7 == "All") & (input$variety7 == "All")) {
                    updateSelectizeInput(
                        session, "region7", choices = c("All", unique(region7_choices$region))
                    )
                } else {
                    if (input$province7 != "All") {
                        region7_choices <- region7_choices %>% filter(province == input$province7)
                    }
                    if (input$variety7 != "All") {
                        region7_choices <- region7_choices %>% filter(variety == input$variety7)
                    }
                    updateSelectizeInput(
                        session, "region7", choices = c("All", unique(region7_choices$region))
                    )
                }
            }
            else {
                region7_choices <- df
                
                if ((input$province7 == "All") & (input$variety7 == "All")) {
                    updateSelectizeInput(
                        session, "region7", choices = c("All", unique(region7_choices$region)), selected = input$region7
                    )
                } else {
                    if (input$province7 != "All") {
                        region7_choices <- region7_choices %>% filter(province == input$province7)
                    }
                    if (input$variety7 != "All") {
                        region7_choices <- region7_choices %>% filter(variety == input$variety7)
                    }
                    updateSelectizeInput(
                        session, "region7", choices = c("All", unique(region7_choices$region)), selected = input$region7
                    )
                }
            }
        })
        # INPUT - variety7
        observe({ 
            if (input$variety7 == "All") {
                variety7_choices <- df
                
                if ((input$province7 == "All") & (input$region7 == "All")) {
                    updateSelectizeInput(
                        session, "variety7", choices = c("All", unique(variety7_choices$variety))
                    )
                } else {
                    if (input$province7 != "All") {
                        variety7_choices <- variety7_choices %>% filter(province == input$province7)
                    }
                    if (input$region7 != "All") {
                        variety7_choices <- variety7_choices %>% filter(region == input$region7)
                    }
                    updateSelectizeInput(
                        session, "variety7", choices = c("All", unique(variety7_choices$variety))
                    )
                }
            }
            else {
                variety7_choices <- df
                
                if ((input$province7 == "All") & (input$region7 == "All")) {
                    updateSelectizeInput(
                        session, "variety7", choices = c("All", unique(variety7_choices$variety)), selected = input$variety7
                    )
                } else {
                    if (input$province7 != "All") {
                        variety7_choices <- variety7_choices %>% filter(province == input$province7)
                    }
                    if (input$region7 != "All") {
                        variety7_choices <- variety7_choices %>% filter(region == input$region7)
                    }
                    updateSelectizeInput(
                        session, "variety7", choices = c("All", unique(variety7_choices$variety)), selected = input$variety7
                    )
                }
            }
        })
        
        score_reviews = reactive({
            # check if any of the inputs are selected
            if ((input$province7 != "All") | (input$region7 != "All") | (input$variety7 != "All")) {
                fdata <- df
                
                # if any are selected, filter the dataframe by those selected inputs
                if (input$province7 != "All") {
                    fdata <- fdata %>% filter(province == input$province7)
                }
                if (input$region7 != "All") {
                    fdata <- fdata %>% filter(region == input$region7)
                }
                if (input$variety7 != "All") {
                    fdata <- fdata %>% filter(variety == input$variety7)
                }
                
                fdata
            } else {
                adata <- df
                adata
            }
        })
        
        output$review_scores <- renderPlotly({
            f = list(family = "Verdana", size = 18, color = '#f2f2f2')
            t = list(family = "Verdana", size = 16, color = '#f2f2f2')
            xlab = list(
                title = "Wine Review Scores (Range: 80 - 100 points)",
                titlefont = f,
                tickfont = t
            )
            ylab = list(
                title = "Frequency",
                titlefont = f,
                tickfont = t,
                gridcolor = 'rgb(204, 204, 204)',
                showgrid = TRUE,
                zeroline = TRUE,
                zerolinecolor = 'rgb(204, 204, 204)',
                zerolinewidth = 1.5
            )
            m <- list(l = 50, r = 25, b = 100, t = 100, pad = 3)
            
            fig <- plot_ly(score_reviews(), x = ~points, type = 'histogram', height = 600, alpha = 0.7, marker = list(color = "#EA2F3B",
                                                                                                                      line = list(color = "f2f2f2",
                                                                                                                                  width = 2)))
            fig <- fig %>%
                layout(
                    title = 'Score Distribution by Geographical Region & Variety',
                    font = f,
                    margin = m,
                    xaxis = xlab,
                    yaxis = ylab,
                    paper_bgcolor='#404040',
                    plot_bgcolor='#404040'
                )
            fig
        })
#################################### RATINGS TAB #################################### 
        # INPUTS
        # INPUT - province8
        observe({
            if (input$province8 == "All") {
                province8_choices <- df
                
                if ((input$region8 == "All") & (input$variety8 == "All")) {
                    updateSelectizeInput(
                        session, "province8", choices = c("All", unique(province8_choices$province))
                    )
                } else {
                    if (input$region8 != "All") {
                        province8_choices <- province8_choices %>% filter(region == input$region8)
                    }
                    if (input$variety8 != "All") {
                        province8_choices <- province8_choices %>% filter(variety == input$variety8)
                    }
                    updateSelectizeInput(
                        session, "province8", choices = c("All", unique(province8_choices$province))
                    )
                }
            }
            else {
                province8_choices <- df
                
                if ((input$region8 == "All") & (input$variety8 == "All")) {
                    updateSelectizeInput(
                        session, "province8", choices = c("All", unique(province8_choices$province)), selected = input$province8
                    )
                } else {
                    if (input$region8 != "All") {
                        province8_choices <- province8_choices %>% filter(region == input$region8)
                    }
                    if (input$variety8 != "All") {
                        province8_choices <- province8_choices %>% filter(variety == input$variety8)
                    }
                    updateSelectizeInput(
                        session, "province8", choices = c("All", unique(province8_choices$province)), selected = input$province8
                    )
                }
            }
        })
        # INPUT - region8
        observe({
            if (input$region8 == "All") {
                region8_choices <- df
                
                if ((input$province8 == "All") & (input$variety8 == "All")) {
                    updateSelectizeInput(
                        session, "region8", choices = c("All", unique(region8_choices$region))
                    )
                } else {
                    if (input$province8 != "All") {
                        region8_choices <- region8_choices %>% filter(province == input$province8)
                    }
                    if (input$variety8 != "All") {
                        region8_choices <- region8_choices %>% filter(variety == input$variety8)
                    }
                    updateSelectizeInput(
                        session, "region8", choices = c("All", unique(region8_choices$region))
                    )
                }
            }
            else {
                region8_choices <- df
                
                if ((input$province8 == "All") & (input$variety8 == "All")) {
                    updateSelectizeInput(
                        session, "region8", choices = c("All", unique(region8_choices$region)), selected = input$region8
                    )
                } else {
                    if (input$province8 != "All") {
                        region8_choices <- region8_choices %>% filter(province == input$province8)
                    }
                    if (input$variety8 != "All") {
                        region8_choices <- region8_choices %>% filter(variety == input$variety8)
                    }
                    updateSelectizeInput(
                        session, "region8", choices = c("All", unique(region8_choices$region)), selected = input$region8
                    )
                }
            }
        })
        # INPUT - variety7
        observe({ 
            if (input$variety8 == "All") {
                variety8_choices <- df
                
                if ((input$province8 == "All") & (input$region8 == "All")) {
                    updateSelectizeInput(
                        session, "variety8", choices = c("All", unique(variety8_choices$variety))
                    )
                } else {
                    if (input$province8 != "All") {
                        variety8_choices <- variety8_choices %>% filter(province == input$province8)
                    }
                    if (input$region8 != "All") {
                        variety8_choices <- variety8_choices %>% filter(region == input$region8)
                    }
                    updateSelectizeInput(
                        session, "variety8", choices = c("All", unique(variety8_choices$variety))
                    )
                }
            }
            else {
                variety8_choices <- df
                
                if ((input$province8 == "All") & (input$region8 == "All")) {
                    updateSelectizeInput(
                        session, "variety8", choices = c("All", unique(variety8_choices$variety)), selected = input$variety8
                    )
                } else {
                    if (input$province8 != "All") {
                        variety8_choices <- variety8_choices %>% filter(province == input$province8)
                    }
                    if (input$region8 != "All") {
                        variety8_choices <- variety8_choices %>% filter(region == input$region8)
                    }
                    updateSelectizeInput(
                        session, "variety8", choices = c("All", unique(variety8_choices$variety)), selected = input$variety8
                    )
                }
            }
        })
        
        score_ratings = reactive({
            # check if any of the inputs are selected
            if ((input$province8 != "All") | (input$region8 != "All") | (input$variety8 != "All")) {
                fdata <- df
                
                # if any are selected, filter the dataframe by those selected inputs
                if (input$province8 != "All") {
                    fdata <- fdata %>% filter(province == input$province8)
                }
                if (input$region8 != "All") {
                    fdata <- fdata %>% filter(region == input$region8)
                }
                if (input$variety8 != "All") {
                    fdata <- fdata %>% filter(variety == input$variety8)
                }
                
                # only keep prices within 3 standard deviations of the sample mean
                fdata <- fdata %>% filter(price <= mean(price) + 3*sd(price), price >= mean(price) - 3*sd(price))
                fdata$rating <- factor(fdata$rating , levels=c("Acceptable", "Good", "Very Good", "Excellent", "Superb", "Classic"))
                fdata
            } else {
                adata <- df %>% filter(price <= mean(price) + 3*sd(price), price >= mean(price) - 3*sd(price))
                adata$rating <- factor(adata$rating , levels=c("Acceptable", "Good", "Very Good", "Excellent", "Superb", "Classic"))
                adata
            }
        })
        
        output$ratings <- renderPlotly({
            f = list(family = "Verdana", size = 18, color = '#f2f2f2') # axis label fonts
            t = list(family = "Verdana", size = 16, color = '#f2f2f2') # tick label fonts
            xlab = list(
                title = "Wine Rating Classification",
                font = f,
                tickfont = t
            )
            ylab = list(
                title = "",
                font = f,
                tickfont = t,
                tickprefix = '$',
                gridcolor = '#f2f2f2',
                showgrid = TRUE,
                zeroline = TRUE,
                zerolinecolor = '#f2f2f2',
                zerolinewidth = 1
            )
            m <- list(l = 15, r = 15, b = 100, t = 100, pad = 3) # set margins
            
            fig <- plot_ly(score_ratings(), y = ~price, color = ~rating, type = 'box',
                           height = 600, alpha = 0.9,
                           marker = list(color = '#ff4d4d'),
                           line = list(color = '#ffffff'))
            fig <- fig %>%
                layout(
                    title = 'Price Distribution of Ratings by Geographical Region & Variety',
                    font = f,
                    margin = m,
                    xaxis = xlab,
                    yaxis = ylab,
                    paper_bgcolor='#404040',
                    plot_bgcolor='#404040')
            
            fig
        })
    }
)