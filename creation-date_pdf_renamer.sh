for i in *.pdf
do
    YEAR=$(pdfinfo "$i"| awk '/CreationDate/{print $6}')
    MONTH=$(pdfinfo "$i"| awk '/CreationDate/{print $3}')
    DAY=$(pdfinfo "$i"| awk '/CreationDate/{print $4}')
    TIME=$(pdfinfo "$i"| awk '/CreationDate/{print $5}')
# convert month 3-letter-abbreviation to 2-digit month
    case "$MONTH" in
        Jan) MONTH='01' ;;
        Feb) MONTH='02' ;;
        Mar) MONTH='03' ;;
        Apr) MONTH='04' ;;
        May) MONTH='05' ;;
        Jun) MONTH='06' ;;
        Jul) MONTH='07' ;;
        Aug) MONTH='08' ;;
        Sep) MONTH='09' ;;
        Oct) MONTH='10' ;;
        Nov) MONTH='11' ;;
        Dec) MONTH='12' ;;
    esac
# convert 1-digit day to 2-digit day
    case "$DAY" in
	1) DAY='01' ;;
	2) DAY='02' ;;
	3) DAY='03' ;;
	4) DAY='04' ;;
	5) DAY='05' ;;
	6) DAY='06' ;;
	7) DAY='07' ;;
	8) DAY='08' ;;
	9) DAY='09' ;;
    esac
# remove : from TIME
    TIME=${TIME//:/-}
# arrange date
    FULLD="${YEAR}-${MONTH}-${DAY}-${TIME}"
    mv -vn "$i" "$FULLD".pdf
done



