# setwd("E:\\Anoop\\Books\\Data Science\\CourseTutorials\\Data-Science_jhonHopkins\\Developing Data Products\\assignment")
library(shiny)
shinyServer(
  function(input, output){
    output$rentalYield <- renderText({ calculateRentalYield(input$weeklyRent, input$price) })
    output$cashflowPerYear <- renderText({calculateYearlyCashflow(input$weeklyRent, input$strataPerQuarter, input$councilPerQuarter, input$waterPerQuarter, input$managementFees, input$weeklyRepayments)})
    output$cashflowPerWeek <- renderText({calculateWeeklyCashflow(input$weeklyRent, input$strataPerQuarter, input$councilPerQuarter, input$waterPerQuarter, input$managementFees, input$weeklyRepayments)})
  }
)

calculateRentalYield <- function (weeklyRent, propertyPrice) 
{
  result <- weeklyRent * 52 / propertyPrice * 100
  return(round(result, digits = 2))
}

calculateYearlyCashflow <- function(weeklyRent, strata, council, water, managementFees, weeklyRepayments)
{
  result <- weeklyRent * 52 - (strata + council + water) * 4 - managementFees * 52 - weeklyRepayments * 52
  return(round(result, digits = 2))
}

calculateWeeklyCashflow <- function(weeklyRent, strata, council, water, managementFees, weeklyRepayments)
{
  result <- (weeklyRent * 52 - (strata + council + water) * 4 - managementFees * 52 - weeklyRepayments * 52) / 52
  return(round(result, digits = 2))
}