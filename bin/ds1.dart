
void main() {
  List<int> array = [10, 20, 30, 40, 50, 60];
  print(binarySearch(array, 60));
}

int binarySearch(List<int> list, int target) {
  return binaryRecSearch(list, target, 0, list.length-1);
}

int binaryRecSearch(List<int> list, int target, int startIdx, int endIdx) {
  int middle = (startIdx + (endIdx - startIdx) / 2).round();
  if (startIdx > endIdx) {
    return -1;
  }
  if(list[middle]==target)
  {
    return middle;
  } 
  else if (list[middle] > target) {
    return binaryRecSearch(list, target, startIdx, middle - 1);
  } else {
    return binaryRecSearch(list, target, middle + 1, endIdx);
  }
}
