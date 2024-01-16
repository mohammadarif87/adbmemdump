adbcurrentfocus() {  
	output=$(adb shell dumpsys window windows | grep -E 'mCurrentFocus')

	while IFS=' ' read -A args; do
		ident=${args[3]%/*}
  done <<<"$output"

  echo $ident
}

adbmemdump() {
  ident=$(adbcurrentfocus)  
  pssline=$(adb shell dumpsys meminfo $ident | grep -E 'TOTAL SWAP PSS')
  
	while IFS=' ' read -A args; do
    pss=${args[2]}
  done <<<"$pssline"
  
  # echo "Total PSS used by $ident: $pss"
  printf "Total PSS used by $ident: " && printf '%.2f' $(echo "$pss/1000" | bc -l) && echo "MB"
}
