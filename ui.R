# setwd("E:\\Anoop\\Books\\Data Science\\CourseTutorials\\Data-Science_jhonHopkins\\Developing Data Products\\assignment")
# getwd()

library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Property Hunter"),
  sidebarPanel(
    h4('Property'),
    textInput('text', 'Address', value=''),
    numericInput('price', 'Price ($)', 550000),
    numericInput('weeklyRent', 'Weekly Rent ($)', 550),
    h5('Costs'),
    numericInput('weeklyRepayments', 'Weekly Repayments ($ per week)', 503),
    numericInput('strataPerQuarter', 'Strata ($ per quarter)', 1050),
    numericInput('councilPerQuarter', 'Council ($ per quarter)', 163),
    numericInput('waterPerQuarter', 'Water ($ per quarter)', 180),
    numericInput('managementFees', 'Management Fees ($ per week)', 38)
  ),
  mainPanel(
    h4('Rental Yield (%)'),
    textOutput("rentalYield"),
    h4('Cashflow Per Week ($)'),
    textOutput("cashflowPerWeek"),
    h4('Cashflow Per Year ($)'),
    textOutput("cashflowPerYear"),
    br(),
    h4('Instructions'),
    helpText("This application is for property investors to calculate the rental yield of a property and estimate the cashflow of owning the property. Your real estate agent and mortgage broker will be able to help you with the numbers."),
    code("Rental Yield"),
    helpText("Enter the property's price and expected weekly rental income to calculate the rental yield."),
    code("Cashflow"),
    helpText("Enter the property's holding costs to estimate the cashflow of owning the property.")
  )
))