# officetools
These are scripts I've used at work. 

## PDF Renamers

**[Creation Date](https://github.com/alaternus/officetools/blob/main/creation-date_pdf_renamer.sh)**

This script is a re-worked version of [pdf-rename-by-cdate.sh](https://gist.github.com/tjluoma/205e3d85e46eb6025b87c6db5b77375b) which didn't work at all for me. Mine is a lot simpler and includes the time as well as the date which helps to generate unique file names. I use this to batch rename invoices every month. Not all PDFs have a creation date in its metadata though, which has led me to make another renaming script. 

**Invoice date & number**

If you use this script you will need to tweak it depending on the invoice. I have various iterations of this script. If you are hoping to use this on scanned PDF files you will have to add an OCR text layer first using [OCRmyPDF](https://github.com/ocrmypdf/OCRmyPDF) or something similar. 
