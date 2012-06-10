vec= new Vector 1,2,3
vec2 = new Vector 4,5,6
alert vec.add vec2
#or
vec.x,vec.y,vec.z

vec= new Vector 1,2,3
vec2 = new Vector 4,5,6
alert vec.sub vec2
#or
vec.x,vec.y,vec.z


one = "a":[1,2,3]
two = "b":[4,5,6]

result = Vector.add_dict one,two
#in the result vector rename to "ab"
alert result["ab"] #-> [5,7,9]

