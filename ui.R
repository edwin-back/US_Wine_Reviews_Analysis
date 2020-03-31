# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/

# Define UI for application that draws a histogram
dashboardPage(skin = "red",
    
    dashboardHeader(title = "Wine? Wine Not!"),
    
    dashboardSidebar(
        sidebarMenu(
            menuItem("Data Set", tabName = "dataset", icon = icon("dashboard")),
            menuItem("Words", tabName = "words"),
            menuItem("Varieties", tabName = "varieties"),
            menuItem("Prices", tabName = "prices"),
            menuItem("Grades", tabName = "grades"),
            menuItem("Price vs Points", tabName = "versus")
        )
    ),
    
    dashboardBody(
        tabItems(
            # First tab content
            tabItem(tabName = "dataset", h2("Data Specifications"),
                fluidRow(
                    column(6,
                       infoBoxOutput("countryBox"),
                       valueBoxOutput("provinceBox"),
                       valueBoxOutput("regionBox")
                    ),
                    column(6,
                       valueBoxOutput("varietyBox"),
                       valueBoxOutput("ratingBox"),
                       valueBoxOutput("designationBox")
                    )
                ),
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
            tabItem(tabName = "words", h2("Top Characteristics of U.S. Wines"),
                fluidRow(
                    column(3,
                       selectizeInput(
                           inputId = "province2",
                           label = "Select State",
                           choices = c('All', unique(df$province))
                    )),
                    column(3,
                        selectizeInput(
                            inputId = "region2",
                            label = "Select Region",
                            choices = c('All', unique(df$region))
                    )),
                    column(3,
                           selectizeInput(
                               inputId = "variety2",
                               label = "Select Variety",
                               choices = c('All', unique(df$variety))
                    )),
                    column(3,
                       selectizeInput(
                           inputId = "winery2",
                           label = "Select Winery",
                           choices = c('All', unique(df$winery))
                    ))
                ),
                fluidRow(
                    column(12, plotOutput("words"))
                )
            ),
            # VARIETIES TAB, INPUTS
            tabItem(tabName = "varieties", h2("Distribution of Top Varieties"),
                # Inputs
                fluidRow(
                    column(6,
                        selectizeInput(
                            inputId = "province3",
                            label = "Select State",
                            choices = unique(df[, "province"])
                    )),
                    column(6,
                       selectizeInput(
                           inputId = "region3",
                           label = "Select Region",
                           choices = unique(df[, "region"])
                    ))
                ),
                fluidRow(
                    column(6,
                        sliderInput(
                            inputId = "price3",
                            label = "Select Price Ceiling",
                            min = min(df[, "price"]),
                            max = max(df[, "price"]),
                            value = median(df[, "price"])
                        )
                    ),
                    column(6,
                       sliderInput(
                           inputId = "points3",
                           label = "Select Points Ceiling",
                           min = min(df[, "points"]),
                           max = max(df[, "points"]),
                           value = median(df[, "points"])
                        )
                    )
                ),
                # Plot Output
                fluidRow(
                    column(12, plotOutput("varieties"))
                )
            ),
            # PRICES TAB 
            tabItem(tabName = "prices", h2("Price Density of Varieties"),
                fluidRow(
                    column(4,
                        fluidRow(
                            column(12,
                                selectizeInput(
                                    inputId = "province4",
                                    label = "Select State",
                                    choices = unique(df[, "province"])
                                )
                            )
                        ),
                        fluidRow(
                            column(12,
                               selectizeInput(
                                   inputId = "region4",
                                   label = "Select Region",
                                   choices = unique(df[, "region"])
                               )
                            )
                        ),
                        fluidRow(
                            column(12,
                                sliderInput(
                                    inputId = "price1",
                                    label = "Select Max Price",
                                    min = min(df[, "price"]),
                                    max = max(df[, "price"]),
                                    value = median(df[, "price"])
                                )
                            )
                        )
                    ),
                    
                    column(8, plotOutput("prices"))
                )
            ),
            # GRADES TAB
            tabItem(tabName = "grades", h2("Overall Wine Grades"),
                fluidRow(
                    column(4,
                        selectizeInput(
                            inputId = "province5",
                            label = "Select State",
                            choices = unique(df[, "province"])
                        )
                    ),
                    column(4,
                       selectizeInput(
                           inputId = "region5",
                           label = "Select Region",
                           choices = unique(df[, "region"])
                       )
                    ),
                    column(4,
                       selectizeInput(
                           inputId = "variety5",
                           label = "Select Variety",
                           choices = unique(df[, "variety"])
                       )
                    )
                ),
                fluidRow(
                    column(12,
                        plotOutput("gradesLoc")
                    )
                )
            ),
            # PVP TAB
            tabItem(tabName = "versus", h2("Price VS Ratings"),
                fluidRow(
                    column(12, plotlyOutput("pvp"))
                )
            )
        )
    )
)
