
## setwd("F:/gitrepo/coursera_ds/Get_Clean_Data/CourseProject")
## source("run_analysis.R")

##*****************************************************************
##
## *****             Load library                             *****
##  
##*****************************************************************
print(date())
require(dplyr)

##*****************************************************************
##
## *****           prepare training dataset                   *****
##
##*****************************************************************

## files to join - 
## subject_train.txt   - identifies person - make this column 1
## y_train.txt         - activity   labels - make this column 2
## activity_labels.txt - activity descriptive label  - make this column 3
## x_train.txt         - actual data

##
##  load subject list 
##

if (exists("st")) rm(st) 
st <- read.csv("dataset/train/subject_train.txt", sep=" ", header=FALSE) 
colnames(st)[1] <- "Subject"

##
##  load activity list 
##

if (exists("yt")) rm(yt) 
yt <- read.csv("dataset/train/Y_train.txt", sep=" ", header=FALSE)
colnames(yt)[1] <- "Activity"

##
##  load activity label list 
##  merge labels with activity loaded above
##

if (exists("al")) rm(al) 
al <- read.csv("dataset/activity_labels.txt", sep=" ", header=FALSE)
colnames(al) <- c("Activity", "ActivityLabel")

yt <- merge(yt,al,by="Activity")

##
##  Specify the column positions for the file 
##  File is fixed width type with numeric data 
##  each field is of 15 character with space as delimiter
##  in effect, each field occupies 16 characters
##

w <- rep.int(16,561)
if (exists("x")) rm(x)
if (exists("xt")) rm(xt)

##
##  The training data set has ~7400 lines of data and is NOT possible to load in one step
##  The below loop loads 100 rows at a time and retains only the mean and std dev columns 
##  The maximum memory used during the loop process is 600MB
##

for (i in 1:74) {
	x <- read.fwf("dataset/train/X_train.txt", widths=w, sep="", header=FALSE, n=100, skip=i*100-100)
	if (!exists("xt")) {
		xt <- x[,c( ## mean columns
					"V1","V2","V3","V41","V42","V43","V81","V82","V83","V121","V122","V123","V161","V162"
					,"V163","V201","V214","V227","V240","V253","V266","V267","V268","V294","V295","V296"
					,"V345","V346","V347","V373","V374","V375","V424","V425","V426","V452","V453","V454"
					,"V503","V513","V516","V526","V529","V539","V542","V552","V555","V556","V556","V557"
					,"V557","V558","V558","V559","V560","V561"
					## standard deviation columns
					,"V4","V5","V6"
					,"V44","V45","V46","V84","V85","V86"
					,"V124","V125","V126","V164","V165","V166","V202","V215","V228","V241","V254","V269"
					,"V270","V271","V348","V349","V350","V427","V428","V429","V504","V517","V530","V543")]
		}
	else {
		xt <- rbind(xt, x[,c("V1","V2","V3","V41","V42","V43","V81","V82","V83","V121","V122","V123","V161","V162"
					,"V163","V201","V214","V227","V240","V253","V266","V267","V268","V294","V295","V296"
					,"V345","V346","V347","V373","V374","V375","V424","V425","V426","V452","V453","V454"
					,"V503","V513","V516","V526","V529","V539","V542","V552","V555","V556","V556","V557"
					,"V557","V558","V558","V559","V560","V561"					
					## standard deviation columns
					,"V4","V5","V6"
					,"V44","V45","V46","V84","V85","V86"
					,"V124","V125","V126","V164","V165","V166","V202","V215","V228","V241","V254","V269"
					,"V270","V271","V348","V349","V350","V427","V428","V429","V504","V517","V530","V543")])
		}
	}

#str(xt, list.len=999)

##
##  combine the subject, activity and actual data into a single data frame 
##  confirm the combined data frame has the expected data
##

atn <- cbind(st, yt)
atn <- cbind(atn, xt)

print(paste("Training data set rows:columns = ", nrow(atn), ncol(atn) ))

##*****************************************************************
##
## *****             prepare test dataset                     *****
##
##*****************************************************************


## files to join - 
## subject_train.txt   - identifies person - make this column 1
## y_train.txt         - activity   labels - make this column 2
## activity_labels.txt - activity descriptive label  - make this column 3
## x_train.txt         - actual data
 
##
##  load subject list 
##

if (exists("st")) rm(st) 
st <- read.csv("dataset/test/subject_test.txt", sep=" ", header=FALSE) 
colnames(st)[1] <- "Subject"

##
##  load activity list 
##

if (exists("yt")) rm(yt) 
yt <- read.csv("dataset/test/Y_test.txt", sep=" ", header=FALSE)
colnames(yt)[1] <- "Activity"

##
##  load activity label list 
##  merge labels with activity loaded above
##

if (exists("al")) rm(al) 
al <- read.csv("dataset/activity_labels.txt", sep=" ", header=FALSE)
colnames(al) <- c("Activity", "ActivityLabel")

yt <- merge(yt,al,by="Activity")

w <- rep.int(16,561)
if (exists("x")) rm(x)
if (exists("xt")) rm(xt)

##
##  The test data set has ~3000 lines of data and is NOT possible to load in one step
##  The below loop loads 100 rows at a time and retains only the mean and std dev columns 
##  The maximum memory used during the loop process is 600MB
##

for (i in 1:30) {
	x <- read.fwf("dataset/test/X_test.txt", widths=w, sep="", header=FALSE, n=100, skip=i*100-100)
	if (!exists("xt")) {
		xt <- x[,c( ## mean columns
					"V1","V2","V3","V41","V42","V43","V81","V82","V83","V121","V122","V123","V161","V162"
					,"V163","V201","V214","V227","V240","V253","V266","V267","V268","V294","V295","V296"
					,"V345","V346","V347","V373","V374","V375","V424","V425","V426","V452","V453","V454"
					,"V503","V513","V516","V526","V529","V539","V542","V552","V555","V556","V556","V557"
					,"V557","V558","V558","V559","V560","V561"
					## standard deviation columns
					,"V4","V5","V6"
					,"V44","V45","V46","V84","V85","V86"
					,"V124","V125","V126","V164","V165","V166","V202","V215","V228","V241","V254","V269"
					,"V270","V271","V348","V349","V350","V427","V428","V429","V504","V517","V530","V543")]
		}
	else {
		xt <- rbind(xt, x[,c("V1","V2","V3","V41","V42","V43","V81","V82","V83","V121","V122","V123","V161","V162"
					,"V163","V201","V214","V227","V240","V253","V266","V267","V268","V294","V295","V296"
					,"V345","V346","V347","V373","V374","V375","V424","V425","V426","V452","V453","V454"
					,"V503","V513","V516","V526","V529","V539","V542","V552","V555","V556","V556","V557"
					,"V557","V558","V558","V559","V560","V561"					
					## standard deviation columns
					,"V4","V5","V6"
					,"V44","V45","V46","V84","V85","V86"
					,"V124","V125","V126","V164","V165","V166","V202","V215","V228","V241","V254","V269"
					,"V270","V271","V348","V349","V350","V427","V428","V429","V504","V517","V530","V543")])
		}
	}

#str(xt, list.len=999)

##
##  combine the subject, activity and actual data into a single data frame 
##  confirm the combined data frame has the expected data
##

ats <- cbind(st, yt)
ats <- cbind(ats, xt)
print(paste("Test data set rows:columns = ", nrow(ats), ncol(ats)))

##*****************************************************************
##
## *****       combine training and test dataset              *****
## *****           prepare final tidy dataset                 *****
##
##*****************************************************************

##
## combine training and test datasets
##

dataset <- rbind(atn, ats)
print(paste("Combined data set rows:columns = ", nrow(dataset), ncol(dataset)))

##
## Rename columns with descriptive names drawn from feature list
##

ColNameList <- read.csv("FieldNames.txt", sep="", header=FALSE)
ColNameVector <- vector()
for (i in 1:nrow(ColNameList)) ColNameVector[i] <- as.character(ColNameList[i,"V1"])
colnames(dataset) <- ColNameVector

##
## generate the mean of each measure by subject and activity 
## rename the columns in new dataset 
##

datasetAVG <- dataset %>% group_by(dataset[,1], dataset[,2], dataset[,3]) %>% summarise_each(funs(mean), 4:92)
colnames(datasetAVG)[1:3] <-  c("Subject", "Activity",  "ActivityLabel")
write.table(datasetAVG, "datasetAVG.txt", sep="\t", row.name=FALSE)
print(paste("Tidy data set rows:columns = ", nrow(datasetAVG), ncol(datasetAVG)))
print("Process complete")
print(date())

