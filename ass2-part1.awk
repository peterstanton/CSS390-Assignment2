BEGIN {FS="    ";}


{
++nalbums[$1];

albums[$1][$2] = 1;
}

END {
print "<html>"
print "<body>"
print "<table border="1">"
print "  <tr>"
print "    <th>Artists</th>"
print "    <th>Album</th>"
print "  </tr>"
	nartists = asorti(nalbums, artists);
	for (i = 1; i <= nartists; i++) {
		a = artists[i]
		print "  <tr>"
		m = asorti(albums[a], albums_of_artist)
		print "  <td rowspan="m">"a"</td>"
		print "    <td>", albums_of_artist[1], "</td>"
		print "  </tr>"
		
		for (j = 2; j <= m; j++) {
			print "  <tr>"
			print "    <td>", albums_of_artist[j], "</td>" 
			print "  </tr>"
		}

	}
	print "</table>"
	print "</body>"
}



