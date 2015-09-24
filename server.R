data(mtcars)
quarter_mile_model <- lm(qsec~cyl+disp+drat+wt+vs+am+gear+carb, data = mtcars)
mpg_model <- lm(mpg~cyl+disp+drat+wt+vs+am+gear+carb, data = mtcars)

library(shiny)
shinyServer(
	function(input, output){
		output$qsec <- renderText({
			input_df <- data.frame(
				cyl = input$cyl, 
				disp = input$disp,
				drat = input$drat, 
				wt = input$wt, 
				vs = ifelse(input$vs == "V", 0, 1), 
				am = ifelse(input$am == "Automatic", 0, 1), 
				gear = input$gear, 
				carb = input$carb
			)
			predict(quarter_mile_model, input_df)
		})
		output$mpg <- renderText({
			input_df <- data.frame(
				cyl = input$cyl, 
				disp = input$disp,
				drat = input$drat, 
				wt = input$wt, 
				vs = ifelse(input$vs == "V", 0, 1), 
				am = ifelse(input$am == "Automatic", 0, 1), 
				gear = input$gear, 
				carb = input$carb
			)
			predict(mpg_model, input_df)
		})
	}
)