function findFirstDuplicate(arr) {
  // type your code here
  let mySet = new Set()
  
  for (const value of arr) {
    if (mySet.has(value)){
      return value;
    } 
       mySet.add(value)
    }
  return -1
  }

if (require.main === module) {
  // add your own tests in here

  console.log("Expecting: 'c'")
  console.log("=>", findFirstDuplicate([1, "c", "c", 2, 0]));

  console.log("")

  console.log("Expecting: 3");
  console.log("=>", findFirstDuplicate([2, 1, 3, 3, 2]));

  console.log("");

  console.log("Expecting: -1");
  console.log("=>", findFirstDuplicate([1, 2, 3, 4]));
}

module.exports = findFirstDuplicate;

// Please add your pseudocode to this file
// And a written explanation of your solution
