/*
In this space I ran an algorithm that performs binary search.
*/
import 'dart:io'; 

List<int> collection = [1, 3, 7,8,9];


void main(){
  stdout.write("type the number to search: ");
  int target = int.parse(stdin.readLineSync()!);
  int result = binarySearch(collection, target);
  if (result != -1) {
    print("Element found at index $result");
  } else {
    print("Element not found");
  }
}

int binarySearch(List<int> collection, int target) {
  int left = 0;
  int right = collection.length - 1;
  while (left <= right) {
    int mid = (right+left)  ~/ 2;
    if (collection[mid] == target) {
      
       return mid;
       break; 
    } else if (collection[mid] < target) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }
  return -1;
}