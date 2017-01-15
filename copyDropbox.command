rsync -avz --delete /Users/Florian/Home/Teaching/Vorlesungen/ResearchSkills/ResearchSkills/LectureNotes/ResearchSkills.pdf /Users/Florian/Dropbox/Lehre/ResearchSkills/LectureNotes

rsync -avz --delete /Users/Florian/Home/Teaching/Vorlesungen/ResearchSkills/ResearchSkills/Labs/LaTeX/Script/how_to_latex.pdf /Users/Florian/Dropbox/Lehre/ResearchSkills/LectureNotes

rsync -avz --delete /Users/Florian/Home/Teaching/Vorlesungen/ResearchSkills/ResearchSkills/Labs/Statistics/Practicals/GraphicsInR/Rgraphics.html /Users/Florian/Dropbox/Lehre/ResearchSkills/LectureNotes/TutorialRgraphics.html

rsync -avz --delete /Users/Florian/Home/Teaching/Vorlesungen/ResearchSkills/ResearchSkills/Labs/Statistics/Practicals/StatisticalAnalysisInR/Statistics.html /Users/Florian/Dropbox/Lehre/ResearchSkills/LectureNotes/TutorialRegression.html

DEST="/Users/Florian/Dropbox/Lehre/ResearchSkills/RS-2017"

rsync -avz --delete /Users/Florian/Home/Teaching/Vorlesungen/ResearchSkills/ResearchSkills/LectureNotes/ResearchSkills.pdf $DEST  

rsync -avz --delete /Users/Florian/Home/Teaching/Vorlesungen/ResearchSkills/ResearchSkills/Labs/LaTeX/Script/how_to_latex.pdf $DEST/labmaterial/  



