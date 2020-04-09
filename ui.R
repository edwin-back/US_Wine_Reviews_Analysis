# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/

# Define UI for application that draws a histogram
dashboardPage(skin = "red",
    
    dashboardHeader(title = "Wine? Wine Not!", titleWidth = 225),
    
    dashboardSidebar(
        width = 225,
        sidebarMenu(
            menuItem("Get Started", tabName = "started", icon = icon("star")),
            menuItem("Characteristics", tabName = "words", icon = icon("angle-right")),
            menuItem("Varieties", tabName = "varieties", icon = icon("angle-right")),
            menuItem("Wineries", tabName = "wineries", icon = icon("angle-right")),
            menuItem("Vineyard Designations", tabName = "vineyards", icon = icon("angle-right")),
            menuItem("Review Scores", tabName = "review_scores", icon = icon("angle-right")),
            menuItem("Prices", tabName = "prices", icon = icon("angle-right")),
            menuItem("Prices by Rating", tabName = "ratings", icon = icon("angle-right"))
        )
    ),
    
    dashboardBody(
        tags$head(
            tags$link(rel = "stylesheet", type = "text/css", href = "custom.css"),
            tags$link(rel="stylesheet", href="https://fonts.googleapis.com/css?family=Lobster")
        ),

        tabItems(
            # First tab content
            tabItem(tabName = "started", h2("Explore the Original Data"), br(),
                fluidRow(
                    column(6,
                           valueBoxOutput("countryBox"),
                           valueBoxOutput("provinceBox"),
                           valueBoxOutput("regionBox")
                    ),
                    column(6,
                           valueBoxOutput("varietyBox"),
                           valueBoxOutput("ratingBox"),
                           valueBoxOutput("designationBox")
                    )
                ), br(),
                # DT INPUTS
                fluidRow(
                    column(3,
                           selectizeInput(
                               inputId = "province1",
                               label = "State:",
                               choices = c("All", unique(df$province))
                           )),
                    column(3,
                           selectizeInput(
                               inputId = "region1",
                               label = "Region:",
                               choices = c("All", unique(df$region))
                           )),
                    column(3,
                           selectizeInput(
                               inputId = "variety1",
                               label = "Variety:",
                               choices = c("All", unique(df$variety))
                           )),
                    column(3,
                           selectizeInput(
                               inputId = "rating1",
                               label = "Rating:",
                               choices = c("All", unique(df$rating))
                           ))
                ),
                # DATA TABLE
                DT::dataTableOutput("table")
            ),
            
            # WORDS TAB
            tabItem(tabName = "words", h2("Top Characteristics of U.S. Wines"), br(),
                fluidRow(
                    column(3,
                           selectizeInput(inputId = "province2",
                                          label = "Select State",
                                          choices = c('All', unique(df$province))
                    )),
                    column(3,
                           selectizeInput(inputId = "region2",
                                          label = "Select Region",
                                          choices = c('All', unique(df$region))
                    )),
                    column(3,
                           selectizeInput(inputId = "winery2",
                                          label = "Select Winery",
                                          choices = c('All', unique(df$winery))
                    )),
                    column(3,
                           selectizeInput(inputId = "vineyard2",
                                          label = "Select Vineyard",
                                          choices = c('All', unique(df$designation))
                    ))
                ), br(),
                fluidRow(
                    column(12, plotlyOutput("words"))
                )
            ),
            # VARIETIES TAB
            tabItem(tabName = "varieties", h2("Distribution of Top Varieties"), br(),
                # Inputs
                fluidRow(
                    column(3,
                           selectizeInput(
                               inputId = "province3",
                               label = "Select State",
                               choices = c("All", unique(df$province))
                           ), br(),
                           selectizeInput(
                               inputId = "region3",
                               label = "Select Region",
                               choices = c("All", unique(df$region))
                           ), br(),
                           sliderInput(
                               inputId = "points3",
                               label = "Select Review Score Range",
                               min = min(df$points),
                               max = max(df$points),
                               value = c(80, 100),
                               step = 1
                           )
                    ),
                    column(9,
                           plotlyOutput("varieties")
                    )
                )
            ),
            # WINERIES TAB
            tabItem(tabName = "wineries", h2("Distribution of Top Wineries"), br(),
                    # Inputs
                    fluidRow(
                        column(3,
                               selectizeInput(
                                   inputId = "province4",
                                   label = "Select State",
                                   choices = c("All", unique(df$province))
                               ), br(),
                               selectizeInput(
                                   inputId = "region4",
                                   label = "Select Region",
                                   choices = c("All", unique(df$region))
                               ), br(),
                               sliderInput(
                                   inputId = "points4",
                                   label = "Select Review Score Range",
                                   min = min(df$points),
                                   max = max(df$points),
                                   value = c(80,100),
                                   step = 1
                               )
                        ),
                        column(9,
                               plotlyOutput("wineries")
                        )
                    )
            ),
            # VINEYARDS TAB
            tabItem(tabName = "vineyards", h2("Distribution of Top Vineyard Designations"), br(),
                    # Inputs
                    fluidRow(
                        column(3,
                               selectizeInput(
                                   inputId = "province5",
                                   label = "Select State",
                                   choices = c("All", unique(df$province))
                               ), br(),
                               selectizeInput(
                                   inputId = "region5",
                                   label = "Select Region",
                                   choices = c("All", unique(df$region))
                               ), br(),
                               sliderInput(
                                   inputId = "points5",
                                   label = "Select Review Score Range",
                                   min = min(df$points),
                                   max = max(df$points),
                                   value = c(80,100),
                                   step = 1
                               )
                        ),
                        column(9,
                               plotlyOutput("vineyards")
                        )
                    )
            ),
            # PRICES
            tabItem(tabName = "prices", h2("Probability Density of Wine Prices"), br(),
                fluidRow(
                    column(3,
                           selectizeInput(
                               inputId = "province6",
                               label = "Select State",
                               choices = c("All", unique(df$province))
                           ), br(),
                           selectizeInput(
                               inputId = "region6",
                               label = "Select Region",
                               choices = c("All", unique(df$region))
                           ), br(),
                           selectizeInput(
                               inputId = "variety6",
                               label = "Select Variety",
                               choices = c("All", unique(df$variety))
                           ), br(),
                           selectizeInput(
                               inputId = "rating6",
                               label = "Select Rating",
                               choices = c("All", unique(df$rating))
                           )
                    ),
                    column(9,
                           plotlyOutput("prices")
                    )
                )
            ),
            # REVIEW SCORES
            # INPUTS
            tabItem(tabName = "review_scores", h2("Frequency Count of Wine Review Scores"), br(),
                fluidRow(
                    column(3,
                           selectizeInput(
                               inputId = "province7",
                               label = "Select State",
                               choices = c("All", unique(df$province))
                           ), br(),
                           selectizeInput(
                               inputId = "region7",
                               label = "Select Region",
                               choices = c("All", unique(df$region))
                           ), br(),
                           selectizeInput(
                               inputId = "variety7",
                               label = "Select Variety",
                               choices = c("All", unique(df$variety))
                           )
                    ),
                    column(9,
                           plotlyOutput("review_scores")
                    )
                )
            ),
            # RATINGS
            tabItem(tabName = "ratings", h2("Price Distribution of Wine Ratings"), br(),
                fluidRow(
                    column(3,
                           selectizeInput(
                               inputId = "province8",
                               label = "Select State",
                               choices = c("All", unique(df$province))
                           ), br(),
                           selectizeInput(
                               inputId = "region8",
                               label = "Select Region",
                               choices = c("All", unique(df$region))
                           ), br(),
                           selectizeInput(
                               inputId = "variety8",
                               label = "Select Variety",
                               choices = c("All", unique(df$variety))
                           ), br(),
                           tags$ol(
                               tags$li("Classic: 98 - 100 points"), 
                               tags$li("Superb: 94 - 97 points"), 
                               tags$li("Excellent: 90 - 93 points"),
                               tags$li("Very Good: 87 - 89 points"), 
                               tags$li("Good: 83 - 86 points"),
                               tags$li("Acceptable: 80 - 82 points")
                           )
                    ),
                    column(9,
                           plotlyOutput("ratings")
                    )
                )
            )
        )
    )
)
