#Abstract class
class _Vector
  constructor:(x=0,y=0,z=0) ->
    @x = x
    @y = y
    @z = z
    @sum = 0

class Vector extends _Vector
#Simple add to vectors
#vector - constructor of Vector class
   add: (vector) ->
       [@x+=vector.x,@y+=vector.y,@z+=vector.z]

   #add sin and cos
   @add_ang: (vector)->
       C = Math.sqrt(Math.pow(vector.x,2) + Math.pow(vector.y,2))
       sum = result: C, ang: vector.y/C

   add_ang: () ->
      C = Math.sqrt Math.pow(@x,2) + Math.pow(@y,2)
      sum = result: C, ang: @y/C    
   
   @two_vectors: (len, sin) ->
     @next = len * Math.sin  Math.PI * sin/180
     @first = len * Math.cos  Math.PI * sin/180
     new Vector @first, @next
    
    
    sub: (vector) ->
       [@x-=vector.x,@y-=vector.y,@z-=vector.z]
   
    mul: (num) ->
       [@x*=num, @y*=num, @z*=num]
    
    div: (num) ->
        if num
         [@x/=num, @y/=num, @z/=num]
    
    rect_rule: (cos) ->
       sum = Math.sqrt Math.pow(@x,2) + 
             Math.pow(@y,2) -
             2 *  @x * @y * 
             Math.cos(cos)

   length: () ->
      @sum = Math.sqrt (Math.pow(@x,2) * Math.pow(@y,2) * Math.pow(@z,2))
             
      

    @random: (n=10) ->
       vector =  (k for n in [1..3] when k=Math.floor(  Math.random()*10)-1)
       new Vector vector[1], vector[2], vector[3]

    swap: () ->
       [@x,@y] = [@y,@x]
   
    #in the future more clear...
    triple: (vector1, vector2) ->
        @x * vector1.y * vector2.z +
        @y * vector1.z * vector2.x + 
        @z * vector1.x * vector2.y - 
        @z * vector1.y * vector2.x -
        @y * vector1.x * vector2.z - 
        @x * vector1.z * vector2.y              
        
       

    

    #just experement...
   @add_dict: (vec1,vec2) ->
      @name1= key for key,value of vec1
      @name2= key for key,value of vec2
     
      
      vector1 = new Vector vec1[@name1][0],vec1[@name1][1],vec1[@name1][2]
      vector2 = new Vector vec2[@name2][0],vec2[@name2][1],vec2[@name2][2]
      str = "#{@name1}"
      @vector=[]
      @vector["#{@name1}#{@name2}"]= vector1.add (vector2)
      @vector


vec1 = "a":[4,7,3]
vec2 = "b":[2,1,4]

qq = Vector.add_dict vec1, vec2
alert qq["ab"]
#pvec = new Vector 5,7,2
#alert Vector.random()
#vec = new Vector 4,5,6
#sydo =vec.sub pvec
#alert sydo[2]
#alert vec.z
#vec2 = new Vector 7,2,-1
#vec3 =  new Vector 2,9,8
#alert vec.triple vec2, vec3
#Vector.add_dict  "a":[3,1] ,"b":[7,8]
