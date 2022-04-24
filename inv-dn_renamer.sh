for i in *.pdf
do
	INVOICE=$(pdfgrep -ir "invoice number" "$i"| awk '/INVOICE/{print $3}')
	DATE=$(pdfgrep -ir "invoice date" "$i"| awk '/INVOICE/{print $3}')
	DATE=${DATE//\//-} # removes / in date
	NAME="${DATE}_${INVOICE}"
	mv -vn "$i" "$NAME".pdf
done
