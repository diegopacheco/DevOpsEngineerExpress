
thisdict =	{
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}

print(thisdict)

thisdict["year"] = 2018
print(thisdict["year"])

for k in thisdict:
  print("Key: " + k)

for v in thisdict.values():
  print("Value: " + str(v))

  