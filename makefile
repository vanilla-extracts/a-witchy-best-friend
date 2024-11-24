compile:
	typst c awb.typ
style: 
	typstyle format-all
watch: compile
	make style
	evince awb.pdf &
	typst w awb.typ
compile_og:
	typst c awb_og.typ
watch_og: compile_og
	make style
	evince awb_og.pdf &
	typst w awb_og.typ
