convert:
	convert -density 300 figures/figure-msg-passing-carbon-methane.pdf -background white -flatten figures/figure-msg-passing-carbon-methane.png
	convert -density 300 figures/figure-msg-passing-water.pdf -background white -flatten figures/figure-msg-passing-water.png
	convert -density 300 figures/figure-message-passing-sparse.pdf -background white -flatten figures/figure-message-passing-sparse.png
	convert -density 300 figures/figure-message-passing-graph-size.pdf -background white -flatten figures/figure-message-passing-graph-size.png
	convert -density 300 figures/figure-message-passing-batched.pdf -background white -flatten figures/figure-message-passing-batched.png

paper:
	mkdir -p docs/figures
	pandoc paper.md -t html -o docs/index.html -c styles.css -s
	cp figures/*.png docs/figures/.
	cp styles.css docs/.

clean:
	rm -rf docs/
