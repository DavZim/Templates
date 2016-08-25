# http://kbroman.org/minimal_make/
TEXDIR = ./paper
MAINTEX = mypaper
BIBFILE = bibentries
TABLEDIR = $(TEXDIR)/tables
FIGUREDIR = $(TEXDIR)/figures
RDIR = ./R
DATASCRIPTS = data.R
TABLESCRIPTS = table1.R
FIGURESCRIPTS = fig1.R

TABLETEX = $(wildcard $(TABLEDIR)/*.tex)
FIGUREPDF = $(wildcard $(FIGUREDIR)/*.pdf)
DATA = $(RDIR)/data/data.csv 
#$(wildcard $(RDIR)/data/*.csv)

# $(TEXDIR)/$(MAINTEX).pdf: $(TEXDIR)/$(BIBFILE).bib $(TEXDIR)/$(MAINTEX).tex $(TABLETEX) $(FIGUREPDF)
# 	cd $(TEXDIR); pdflatex $(MAINTEX)
# 	cd $(TEXDIR); biber $(MAINTEX)
# 	cd $(TEXDIR); pdflatex $(MAINTEX)
# 	cd $(TEXDIR); pdflatex $(MAINTEX)
# 	cd $(TEXDIR); rm -f *.aux *.bbl *.blg *.log *.bak *.bcf *.run.xml
# 	cp $@ paper.pdf

# $(TABLETEX): $(RFILES)
# 	cd R; Rscript $(^F)

# $(FIGUREPDF): $(RFILES)
# 	cd R; Rscript $(^F)


paper.pdf: $(TEXDIR)/$(MAINTEX).tex $(TEXDIR)/$(BIBFILE).bib $(FIGUREPDF) $(TABLETEX) $(DATA)
#$(TEXDIR)/$(MAINTEX).pdf: $(TEXDIR)/$(BIBFILE).bib $(TEXDIR)/$(MAINTEX).tex $(RDIR)/$(TABLESCRIPTS) $(RDIR)/$(FIGURESCRIPTS)
	cd $(TEXDIR); pdflatex $(MAINTEX)
	cd $(TEXDIR); biber $(MAINTEX)
	cd $(TEXDIR); pdflatex $(MAINTEX)
	cd $(TEXDIR); pdflatex $(MAINTEX)
	cp $(TEXDIR)/$(MAINTEX).pdf $@
	cd $(TEXDIR); rm -f *.aux *.bbl *.blg *.log *.bak *.bcf *.run.xml *.out

$(FIGUREPDF): $(DATA) $(RDIR)/$(FIGURESCRIPTS)
	cd R;Rscript $(FIGURESCRIPTS)

$(TABLETEX): $(DATA) $(RDIR)/$(TABLESCRIPTS)
	cd R;Rscript $(TABLESCRIPTS)

$(DATA): $(RDIR)/$(DATASCRIPTS)
	cd R; Rscript $(DATASCRIPTS)