class Task {
 String taskName;
 bool isDone;

 void toggleDone(){
   isDone = !isDone;
 }

 Task({this.taskName, this.isDone = false});
}