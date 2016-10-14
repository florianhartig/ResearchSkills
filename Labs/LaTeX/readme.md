# LaTeX

## What is LaTeX?

LaTeX is the most widely used script-based typesetting program in the sciences. To get started, read our [LaTeX tutorial](https://www.dropbox.com/s/9kjanprrj0vjhdf/how_to_latex.pdf?dl=0), which is of course written in LaTeX, as are the research skills lecture notes. If you want to see the source code of the LaTeX tutorial, have a look [here](https://github.com/florianhartig/ResearchSkills/blob/master/Labs/LaTeX/Script/how_to_latex.tex) 

Other useful links are

* [A short introduction to latex](https://ilias.uni-freiburg.de/ilias.php?ref_id=441825&link_id=11203&cmd=callLink&cmdClass=ilobjlinkresourcegui&cmdNode=bd:hv&baseClass=ilLinkResourceHandlerGUI)
* [LaTeX Cheat Sheet](https://ilias.uni-freiburg.de/ilias.php?ref_id=441825&link_id=11204&cmd=callLink&cmdClass=ilobjlinkresourcegui&cmdNode=bd:hv&baseClass=ilLinkResourceHandlerGUI)
* [The Not So Short Introduction to LATEX2](https://ilias.uni-freiburg.de/ilias.php?ref_id=441825&link_id=11202&cmd=callLink&cmdClass=ilobjlinkresourcegui&cmdNode=bd:hv&baseClass=ilLinkResourceHandlerGUI)

## Research Skills Practical

* Download the [example material](https://github.com/florianhartig/ResearchSkills/raw/master/Labs/LaTeX/Practical.zip)

## Further information

#### To Install LaTeX on your computer, you need ... 

* A latex distribution
  * Windows: MikTex
  * Mac: MacTex https://tug.org/mactex/
  * Linux: LaTex (often already installed)
* An editor
  * TexStudio (what we use in class)
  * TexMaker
  * ...

#### BSc / MSc Template 

* For the University of Freiburg, here is a template from Prof. Dormann [here](https://github.com/florianhartig/ResearchSkills/tree/master/Labs/LaTeX/LaTeX_Templates/Template-BScMSc-Freiburg)

#### Getting Help

If you get stuck at some point (which you inevitably will), seek online help here:

* for a list of helpful websites
  * https://latex-project.org/guides/
* for mor detailed questions
  * http://tex.stackexchange.com/
  * http://stackoverflow.com/questions/tagged/latex
  * https://en.wikibooks.org/wiki/LaTeX

And of course: google!

## FAQ
### **Q: Why does the referencing not work in my document?**
#### A<sub>1</sub>: The path to your reference file is not correct:
This problem is less likely to occur if you use relative file paths. Your project folder, for example, contains different folders for different files, such as your .tex document (e.g. in a folder called "thesis") and your .bib literature database (e.g. in a folder called "literature"). If you use such a structure you may set *\bibliography{../literature/yourbibtexfile}* at the end of your .tex document in order to link your .tex document with your .bib database. The .. means to go one folder up. 

Another option is to store all files in only one folder. Then you only need to set *\bibliography{yourbibtexfile}* at the end of the .tex document. If you have many additional files, such as figures, this is not recommended.

There is one other option, which works as long as you are only working on one computer: The use of full file paths. This may look like this: *\bibliography{C:/Users/User/documents/literature/yourbibtexfile}*, or the path to wherever yourbibtexfile.bib is stored. The obvious problem is that this file path will change if you take your project on a USB stick and work on another computer. 

#### A<sub>2</sub>: You mistakenly provided the file extension:
In *\bibliography{}* you must give the file name of your database without the extension (e.g. .bib). This means it must be *\bibliography{yourbibtexfile}* instead of *\bibliography{yourbibtexfile.bib}*

#### A<sub>3</sub>: You need to do a LaTeX-BibTeX-LaTeX-LaTeX sequence:
In the internal workflow of LaTeX, when compiling your .tex document the first time after adding an entry to your literature database (.bib) you need to compile fist the LaTeX (F1 or F6), then in BibTeX (F8 or F11), and then twice in LaTeX again. his is necessary because each step produces auxiliary files that the next step uses. The first compiling in LaTeX generates an .aux file, which is needed by bibtex to create the citations. The BibTeX compiling generates a .bbl file, which is needed by LaTeX. The third compiling incorporates these references into the document, and the fourth is necessary to ensure that the insertion of these references still produces correct formatting.

Some editors will do this steps automatically for you, but if things don't work you should run through them by hand to see if that fixes the problem. 

### **Q: Why are my figures or tables showing up in the wrong place?**
#### A: Figures and tables are placed in floats:
In LaTeX figures and tables are positioned in the text always following the same principles or rules (if not specified differently). To do this figures and tables are put into containers called floats. These also prevent the container items to be broken over pages. 

Now, the answer to this question may seem a bit circumventive: Simply don't care about the positioning of your tables and figures. If you finished your document and you still don't like the arrangement check [this](https://en.wikibooks.org/wiki/LaTeX/Floats,_Figures_and_Captions) out. 
