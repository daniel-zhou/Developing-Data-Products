library(shiny)

shinyUI(
	navbarPage("Performance Prediction of a Car from Design Parameters",
		tabPanel("Prediction",
			sidebarPanel(
				sliderInput("cyl", "Number of Cylinders:", min = 4, max = 12, value = 4, step = 2),
				sliderInput("gear", "Number of Gears:", min = 1, max = 6, step = 1, value = 3),
				sliderInput("carb", "Number of Carburetors", min = 1, max = 8, step = 1, value = 1),
				numericInput("disp", "Engine Displacement (cubic inches):", min = 70, max = 500, step = 15, value = 250),
				numericInput("drat", "Rear Axle Ratio:", min = 2, max = 5, step = .25, value = 2.95),
				numericInput("wt", "Weight (lb/1000):", min = 1, max = 6, step = .5, value = 2.5),
				selectInput("vs", "Engine Orientation", list("V", "Straight")),
				selectInput("am", "Transmission Type", list("Automatic", "Manual"))
			),
			mainPanel(
				h3("PERFORMANCE"),
				wellPanel(
					tags$style(type="text/css", "#qsec{color:DodgerBlue;}"),
					tags$style(type="text/css", "#mpg{color:DodgerBlue;}"),
					h4("Quarter Mile Time, Seconds:"),
					h4(textOutput("qsec")),
					br(),
					h4("Miles Per Gallon:"),
					h4(textOutput("mpg"))
				)
			)
		),
		tabPanel('About',
			mainPanel(mainPanel(includeMarkdown("README.md")))
		)
	)
)