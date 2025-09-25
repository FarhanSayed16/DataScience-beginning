db.student.insertMany([
   {
      RollNo: 2,
      Name: "Priya Patel",
      Age: 21,
      Gender: "Female",
      Course: "BCom",
      Email: "priya.patel@example.com",
      Mobile: "9123456780",
      Address: { City: "Ahmedabad", State: "Gujarat" }
   },
   {
      RollNo: 3,
      Name: "Amit Verma",
      Age: 22,
      Gender: "Male",
      Course: "BSc Physics",
      Email: "amit.verma@example.com",
      Mobile: "9988776655",
      Address: { City: "Delhi", State: "Delhi" }
   },
   {
      RollNo: 4,
      Name: "Sneha Nair",
      Age: 19,
      Gender: "Female",
      Course: "BA English",
      Email: "sneha.nair@example.com",
      Mobile: "8899776655",
      Address: { City: "Kochi", State: "Kerala" }
   }
]);
db.student.find().pretty();