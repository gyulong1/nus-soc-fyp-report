# NUS SOC FYP Final Report Boilerplate

__Project updated as at 13 Feb 2017, conforming to NUS SOC requirements__

This repository is meant as a quickstart guide for NUS SOC students doing their Final Year Project(FYP) final report in LaTeX.

It handles all the necessary styling and formatting of the final report so you can focus on your content. We have meticulously ensured that the report conform to the Final Report Guidelines as specified in [http://www.comp.nus.edu.sg/images/resources/content/undergraduates/CP4101-CA-Rpt-Guideline.pdf](NUS - Final Report Guidelines). However, by using the code in this repository, you are agreeing that the project and its authors are dissolved from responsibility from your use of the project. You are welcome to submit a bug report using the issue tracker if you encounter any problems with the code.

\*If you aren't going to use LaTeX _(which is really awesome)_ for your final report, then you should ignore this entire repository. There is nothing here for you. _(Except maybe how the final report should look like.)_

## Pre-requisites
You need to install __LaTeX__ in order to build the final report. Please refer to [http://latex-project.org/ftp.html](Latex Project) for installation instructions for your particular machine.

You will also need to install __Make__ in order to automate the building of your final report. Please refer to [https://www.gnu.org/software/make/](GNU Make) for installation instructions for your particular machine.

## Usage
0. Install pre-requisites
0. Fork this repository
0. Edit content
0. Build report
0. Repeat until... __Graduation!!!__

### Installation

In fedora 25, the command to install all the dependencies is simply: 

```
# dnf install latex make
```

### Editing

#### Basic Text Formating

- __Bold__ text: `\textbf{Bold} text`
- _italics_: `\textit{italics}`
- `monospace` text: `\texttt{monospace} text`

#### Citations

To cite something, use `\cite{CITATION_REF}` where `CITATION_REF` is the citation reference.

To cite something from Google Scholar:

0. Find the paper
0. Click `cite -> BibTex`
0. Copy the text shown and paste into `report.bib`

This should look something like:
```
@book{lamport1986document,
  title={Document Preparation System},
  author={Lamport, Leslie and LaTEX, A},
  year={1986},
  publisher={Addison-Wesley Reading, MA}
}
```

0. This first argument is the citation reference.

#### Math and Equations

ShareLaTeX has a good intro guide here: [https://www.sharelatex.com/learn/Mathematical_expressions](https://www.sharelatex.com/learn/Mathematical_expressions).

For simple inlined symbols, wrap then in `$`: eg. $x^2$

#### Code
An example code listing is included in the introduction. See: [https://www.sharelatex.com/learn/Code_listing](https://www.sharelatex.com/learn/Code_listing).

#### Tables and Figures
A intro guide for tables is: [https://www.sharelatex.com/learn/Tables](https://www.sharelatex.com/learn/Tables) and for graphs is [https://www.sharelatex.com/learn/Pgfplots_package](https://www.sharelatex.com/learn/Pgfplots_package).

I also recommend using a web editor to visually create any tables you want and using them to generate tex. Eg. [http://www.tablesgenerator.com/](http://www.tablesgenerator.com/)), there are many others.

### Building
Once you have all the dependencies installed, you simply run the following command in the root folder of the project:

```
$ make
```

Alternatively, if you want your reports to be archived with the timestamp appended. The generated reports will be stored in the folder `./archive/` with the timestamp appended.

```
$ make archive
```

The above 2 commands generates the report. Don't worry if you notice many other intermediate files being created. These are basically files created during the various intermediate steps of the build process.

In the case that you want to clean-up(intermediate files) the repository, you may want to run:

```
$ make clean
```

If you want to delete the generated `report.pdf` along with the intermediate files, then simply run:

```
$ make reset
```

## Project Structure

This project is structured as follows:
```
.
├── archive
│   └── report_2017-02-13:17:48:46.pdf
├── contents
│   ├── appendixa.tex
│   ├── appendixb.tex
│   ├── conclusion.aux
│   ├── conclusion.tex
│   ├── intro.aux
│   ├── intro.tex
│   ├── results.aux
│   └── results.tex
├── images
│   ├── giraffe.jpg
│   └── squirrel.jpg
├── Makefile
├── README.md
├── report.bib
├── report.pdf
├── report.tex
├── socreport.bst
├── socreport.cls
└── tables
    └── example.tex
```

- `./archive/`:
    - Folder containing all your archived reports.
- `./contents/`:
    - This folder contains the text of the report.
    - Remove/Add files in this folder and update `report.tex` as necessary.
- `./images/`:
    - This folder is used to contain all images.
    - LaTex is also told to look for images here in `report.tex`
- `Makefile`:
    - Makefile for automated building of the project.
- `README.md`:
    - This file.
- `report.bib`:
    - This file contains the information for references in the report.
    - Copy paste the BibTex citations and use them in the report using `\cite{}`. They will be cited using APA style as per requirements.
    - An example in included in the introduction.
- `report.tex`:
    - This is the main file. It contains the meta information, abstracts, acknoledgements and all other includes.
    - Edit this file with information about your project.
- `report.pdf`:
    - Generated report, for submission!
- `socreport.bst` and `socreport.cls`:
    - Latex classes, do not touch if unsure!
- `./tables/`:
    - This folder contains the tables used in the report.
    - Take a look at the example table included.

## Credits
0. The `socreport.bst` and `socreport.cls` files are courtesy of Prof Wei Tsang Ooi. [https://www.comp.nus.edu.sg/~ooiwt/latex/socreport/](SOC'S LATEX CLASS) It was further modified and updated to meet modern requirements.
0. The upstream project for this repository[https://github.com/ymichael/soc-hyp-boilerplate](soc-hyp-boilerplate)
