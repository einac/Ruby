l=->a,b=28,c=1{puts (("Love"*a).center(b))*c}
l.call(2,14,2)
l.call(3,14,2);
[7,7,7,6,5,4,3,2,1].map{|x|l.call(x)}