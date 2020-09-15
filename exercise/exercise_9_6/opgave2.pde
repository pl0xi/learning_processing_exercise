// Opgave 2
{
  int [] nums = {5, 4, 2, 7, 6, 8, 5, 2, 8, 14};

  for (int i = 0; i < nums.length; i++) {
    nums[i] += random(10);
  }

  println(nums);
}
