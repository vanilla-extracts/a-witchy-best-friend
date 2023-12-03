compile:
	typst c awb.typ
watch: compile
	evince awb.pdf &
	typst w awb.typ
