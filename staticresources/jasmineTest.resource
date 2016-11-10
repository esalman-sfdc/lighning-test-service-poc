describe("A suite", function() {
  it("contains spec with an expectation", function() {
    expect(true).toBe(true);
  });
});

describe('c:cmpUnderTest1', function(){
    it('Invoking sampleMethod should update status to Success!', function(done) {
   		$A.run(function(){
     	 $A.createComponent("c:cmpUnderTest1", null, 
           	function(component){
                try{
                	component.sampleMethod();
                	var actual = component.get("v.status");
                	expect(actual).toBe("Success!");
                    done();
                }
                catch(e){
                	done(e);    
                }
   		 });
       });
       
  });
});

describe('c:cmpUnderTest1', function(){
    it('Invoking sampleMethod should update status to Fail!', function(done) {
   		$A.run(function(){
     	 $A.createComponent("c:cmpUnderTest1", null, 
           	function(component){
                try{
                	component.sampleMethod();
                	var actual = component.get("v.status");
                	expect(actual).toBe("Fail!");
                    done();
                }
                catch(e){
                	done(e);    
                }
   		 });
       });
       
  });
});