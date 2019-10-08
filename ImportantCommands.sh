#	In case of listing the sub-directories of some directory in order of decreasing size.

# Gives summary and fast
sudo du -sh /* | sort -h
# Complete data
sudo du -h --max-depth=1 /some/directory | sort -hr

#   r for readonly
#   x for only stay in current filesystem, dont read mounted volumes of another filesystem   
sudo ncdu -rx /


#	If you want the contents of folders A and B to be the same, put /home/user/A/ (with the slash) as the source. 
#	This takes not the folder A but all of it's content and puts it into folder B. Like this:
#
#		rsync -avu --delete "/home/user/A/" "/home/user/B"
#
#    		-a 		Do the sync preserving all filesystem attributes
#    		-v 		run verbosely
#    		-u 		only copy files with a newer modification time (or size difference if the times are equal)
#	    	--delete 	delete the files in target folder that do not exist in the source

rsync -avu --delete "/media/mercurial/Windows/Users/Mercurial/Desktop/Sizil/" "/home/mercurial/Desktop/Sizil"

#        This will mirror the sites listed in links.dat file and moreover this will also keep retrying if network connection gets refused.
#
#        In order to avoid the --, -K/s situations you can use --read-timeout=seconds. This will timeout the connection after the amount of seconds.
#
#        This will retry refused connections and similar fatal errors (--retry-connrefused), 
#        it will wait 1 second before next retry (--waitretry), 
#        it will wait a maximum of 20 seconds in case no data is received and then try again (--read-timeout), 
#        it will wait max 15 seconds before the initial connection times out (--timeout) and 
#        finally it will retry an infinite number of times (-t 0).
#
#            -o      outputs the log file as specified log.dat
#            -m      mirrors the web pages provided
#            -c      continues the previous download (remove index.html to update already downloaded files)
#            -i      take input of the text file containg links to download
#            -r      Recursive retrieving (important)
#     --level=0      Specify recursion maximum depth level. 1 for just this directory.
#            -x      Force dirs, create an hierarchy of directories even if one would not been created otherwise
#            -np     no parent, do not ascend to parent dir when retrieving recursively
#            -A.type only download files with the extension type.
#
#
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -o log.dat -m -c -i links.dat
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 -o log.dat -c -r -A.jpg -np -i links.dat


#   Delete all the HTML files from a folder
find . -type f -iname "*.html" -delete

