head -n 68 $1/bin/activate > $1/bin/new_activate
echo "    elif [ \"\$PS1_marker\" != \"\" ] ; then" >> $1/bin/new_activate
echo "        PS1=\"\${PS1::-\$PS1_marker} (\`basename \\\"\$VIRTUAL_ENV\\\"\`) \${PS1: -\$PS1_marker}\"" >> $1/bin/new_activate
tail -n +69 $1/bin/activate >> $1/bin/new_activate

mv $1/bin/activate $1/bin/old_activate
mv $1/bin/new_activate $1/bin/activate
