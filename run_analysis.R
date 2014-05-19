test<-read.table("UCI HAR Dataset/test/X_test.txt")
train<-read.table("UCI HAR Dataset/train/X_train.txt")

test_labels<-read.table("UCI HAR Dataset/test/y_test.txt")
train_labels<-read.table("UCI HAR Dataset/train/y_train.txt")

features<-read.table("UCI HAR Dataset/features.txt")

activity<-read.table("UCI HAR Dataset/activity_labels.txt")

test_subjects<-read.table("UCI HAR Dataset/test/subject_test.txt")
train_subjects<-read.table("UCI HAR Dataset/train/subject_train.txt")

dataset<-rbind(test,train)
dataset_labels<-rbind(test_labels,train_labels)
dataset_subjects<-rbind(test_subjects,train_subjects)



name<-as.character(features[,2])
names(dataset)<-name

dataset<-dataset[,grepl("*mean*|*std*",name)]

names(dataset_subjects)<-c("Subject")
dataset<-cbind(dataset_subjects,dataset)

names(dataset_labels)<-c("Activity")
dataset<-cbind(dataset_labels,dataset)
dataset[,1]<-activity[dataset[,1],2]

dataset2_activity<-lapply(as.matrix(activity[,2]),function(x) 
  colMeans(dataset[dataset[,1]==x,3:dim(dataset)[2]]))

dataset2_subject<-lapply(1:30,function(x) 
  colMeans(dataset[dataset[,2]==x,3:dim(dataset)[2]]))

dataset2_activity<-matrix(unlist(dataset2_activity), 
                          ncol = dim(dataset)[2]-2, byrow = TRUE)
dataset2_subject<-matrix(unlist(dataset2_subject), 
                         ncol = dim(dataset)[2]-2, byrow = TRUE)

rownames(dataset2_activity)<-as.matrix(activity[,2])
rownames(dataset2_subject)<-paste(rep("Subject ",30),1:30)


dataset2<-rbind(as.matrix(dataset2_activity),as.matrix(dataset2_subject))

name2<-grep("*mean*|*std*",name,value=TRUE)
colnames(dataset2)<-name2

write.table(dataset2,"tidyDataset.txt")
