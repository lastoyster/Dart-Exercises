import ‘dart:isolate’;

void main(){
Isolate.spawn<IsolateModel>(heavyTask, IsolateModel(35500, 500));
}

void heavyTask(IsolateModel model){
int total = 0;

for(int i=1 ; i< model.iteration; i++){
total += (i * model.multiplier);
}

log("FINAL TOTAL: $total");
}

class IsolateModel{
IsolateModel(this.iteration, this.multiplier);

final int iteration;
final int multiplier;
}