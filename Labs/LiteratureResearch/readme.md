

# Literature research

The information below provides an overview of how to search for and organize relevant literature.

An exercise demonstrating this workflow is provided in the [practical](https://github.com/florianhartig/ResearchSkills/blob/master/Labs/LiteratureResearch/Practical/Practical_LiteratureResearch.pdf).

## Scientific literature databases

The three main databases are

* [Google scholar](https://scholar.google.de/) (free, fast)
* [ISI web of knowledge](http://webofknowledge.com/) (proprietory, slow, but most "official")
* [Scopus](http://www.scopus.com/) (proprietory, competitor to ISI)

see comments in the lecture notes / scripts about their use, in particular about how to use advanced search patterns and how they index the papers.

## Access to journals

Access to journals / commercial databases is usually granted via IP. This means that within the University, you have access to everything. When you are outside the university, the main method is to use a Virtual Private Network (VPN) - google for it, basically every univeristy has a solution to that. Once you have installed the appropriate client, you can "tunnel" into the university network, and you will have access because, to the outside world, you appear to be at the university. In many cases, you can also get access via your Uni password, but this is more cumbersome. 

## Reference Managers

There are lots of reference managers, see overview [here](https://en.wikipedia.org/wiki/Comparison_of_reference_management_software) 

You should see what is best for you. Dependeing on what text processing system you use, I recommend to start with 

* For LaTeX: Jabref (bibtex-based)
* For Word: Endnote (costly), Zotero, Mendeley, Jabref (integreation in Word tricky, some comments below), Citavi (U. Freiburg has a licence, no other reason)
* For Open Office: Jabref, Zotero, Mendeley


## Working with BibTeX

BibTeX-based reference managers such as JabRef work best with LaTeX. How to do this is covered in our LaTeX manual. 

You can also use JabRef with other text editors, but it is less convenient. Here some hints for MS Word and Libre Office.  

### Using BibTex with Microsoft Word

The following steps (copied from [here](http://www.ademcan.net/?d=2012/01/30/15/23/05-using-jabref-references-in-word-documents)) will help you to use your JabRef bibliography into Word documents:

1. Export your JabRef bibliography in xml format
2. Name the file Sources.xml
3. Locate the original Sources.xm file at ~/Documents/Microsoft User Data in Mac (it should be something similar in Windows and Linux)
4. Rename the Sources.xml file to Sources_Backup.xml
5. Move the Sources.xml file from JabRef to ~/Documents/Microsoft User Data
6. Enjoy your new bibliography in Word

Alternatives (it's worth googeling for newer options): 

* use the [Bibtex4Word plugin](http://www.ee.ic.ac.uk/hp/staff/dmb/perl)
* [docear4word](http://www.docear.org/software/add-ons/docear4word/download/)


### Using BibTex with Libre Office

1. Open your Libre Office writer document. (To help jabref and Libre Office find a connection quicker it is better to have both software launched.)
2. Start the connection: 
  - Tools > OpenOffice/LibreOffice connection
  - A new panel opens to the left of your jabref window.
  - In the top row there are two buttons shaped like plugs. If 3 is fulfilled hit the far left button which should now automatically establish a connection between jabref and Libre Office. The greyed out buttons below should now appear in black.
3. You are now able to select the settings and style for the appearance of your references.
  - Tip: Make sure to tick: Settings > Automatically sync bibliography when inserting citations.
4. Wherever in your text you want to cite (or cite in-text) put the cursor there (in your document), select the required BibTex entry in jabref and hit cite (or cite in-text).
5. Enjoy your new bibliography in Open/ Libre Office

For further help please refer to http://jabref.sourceforge.net/OOPlugin-jabref.php
