// Tower of Hanoi
// https://www.ocf.berkeley.edu/~shidi/cs61a/w/images/f/f8/Hanoi0.png
// Find possible moves for the given state of Hanoi towers
// input: [[3,4],[1,2],[]]
// output: [[[1,3,4],[2],[]], [[3,4],[2],[1]], [[4],[1,2],[3]]]

List<List<List<int>>> possibleMoves(List<List<int>> input){
  List<List<int>> copy=[];
  List<List<List<int>>> result = [];
//  for (List x in input){
//    List temp = x;
    copy.addAll(input);
//  }

    print('$input = input  || $copy = copy');
    ///TODO : Logic to be created here
    for(int i = 0; i< input.length; i++){
      for(int j = 0; j< input.length; j++){
        if(validMove(input, i, j)){
          copy[j].insert(0, copy[i][0]);
          copy[i].remove(copy[i][0]);
          result.add(copy);
        }
      }
    }
    print('after func $input = input  || $copy = copy');
    return result;
  }



bool validMove(List<List> input, int from, int to){
  return(input[to].isEmpty || input[to].first > input[from].first);
}

main() {
  print(possibleMoves([[3,4],[1,2],[]]));
}
