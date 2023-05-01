class Sort {
  bool sorted;
  bool unsorted;
  bool empty;

  Sort(this.sorted, this.unsorted, this.empty);

  Map<String, dynamic> toJson() => {
    "sorted": sorted,
    "unsorted": unsorted,
    "empty": empty
  };

  Sort.fromJson(Map<String, dynamic> json)
      : sorted = json["sorted"],
        unsorted = json["unsorted"],
        empty = json["empty"];
}