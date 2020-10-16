#change the directory to the place where the blocklist file is stored/downloaded
cd ./Download
#copy the blocklist xml file to the /home directory
cp blocklist.xml /home

# question 3-1 print out the blockID start with i or g, end with number
grep 'blockID="i.*[0-9]"\|blockID="g.*[0-9]"' blocklist.xml

#question 3-2 print out the id with email and no special character

grep 'id="[0-9a-zA-Z]*@[0-9a-zA-Z]*.com' blocklist.xml 
