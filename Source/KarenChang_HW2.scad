union(){
translate([0,0,6.4])
rotate([0,180,0])
	difference(){//C
		difference(){//B
			difference(){//A
				hull(){
					union(){
						translate([0,0,3.2])
						cylinder(r=13.57, h = 3.2,$fn=128);
						translate([0,0,0])		
						cylinder(r=14.125, h = 3.2,$fn=128);	
					}//end union	
				}//end hull		
			}//end difference-A
		
			for (i = [0:40]){
       			translate([sin(360*i/40)*15, cos(360*i/40)*15, 2.9])
        			resize(newsize = [2.7,2.7,9.6])
				sphere(r = 5);
			}//end for
		}//end difference-B
		
		for (i = [0:40]){
    			translate([sin(360*i/40)*15, cos(360*i/40)*15, 1.5])
        		resize(newsize = [2.7,2.7,9.6])
			sphere(r = 5);
    		}//end for

		translate([0,0,0])
		cylinder (r=13.5, h = 5.7,$fn=128);
	}//end difference-C

}//end union

//OuterD=28.25mm, InnerD = 27.14mm, h = 6.4mm
//OuterR=14.125mm, InnerR = 13.57mm
//~.7 thickness

		