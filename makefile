compile: awb.typ
	typst c awb.typ
style: compile
	typstyle format-all
watch: compile
	make style
	evince awb.pdf &
	typst w awb.typ
compile_og: awb_og.typ
	typst c awb_og.typ
watch_og: compile_og
	make style
	evince awb_og.pdf &
	typst w awb_og.typ
production:
	make style
	make compile_og
	cp awb.pdf /home/charlotte/Documents/dev/writing-website/raw/awb2024/awb.pdf
	cp awb.typ /home/charlotte/Documents/dev/writing-website/raw/awb2024/awb.typ
	cp awb.epub /home/charlotte/Documents/dev/writing-website/raw/awb2024/awb.epub
	cp awb_og.pdf /home/charlotte/Documents/dev/writing-website/raw/awb/awb_og.pdf
	cp awb_og.typ /home/charlotte/Documents/dev/writing-website/raw/awb/awb_og.typ
