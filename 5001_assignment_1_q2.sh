#change the directory to /home first
cd /home
#create the DDM from 1 to 100 file for the directory /home/DDM1 to DDM100
for i in {1..100};
do mkdir ./DDM${i};
done

#create the text file inside each of the directory
for i in {1..100};
do cd /home/DDM${i} && touch time_till_now.txt ; done

#attach the nanosecond information and heading to the text file
for i in {1..100};
do cd /home/DDM${i} &&
echo "nanoseconds since 1970-01-01 00:00:00 UTC">>time_till_now.txt ;
echo "<""$(date +%s%N)"">">>time_till_now.txt;
done