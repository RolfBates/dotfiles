for f in .*
do 
	if [ $f = ".git" ] || [ $f = "." ] || [ $f = ".." ]
	then
		continue;
	else
		rm ~/$f
		ln  -s $f ~/$f;
	fi
done 
