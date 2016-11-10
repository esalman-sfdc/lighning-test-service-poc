const assert = chai.assert;
mocha.setup('bdd');

describe('DemoAssertFailure', function() {
  describe('Simple demo showing assertion failure', function() {
    it('should fail as 10 !== 100', function() {
      	assert.equal(10, 10); // passing assert
        debugger;
        assert.equal(10, 100, "What did you expect..."); // failing assert
    });
  });
});

describe('Array', function() {
  describe('#indexOf()', function() {
    it('should return -1 when the value is not present', function() {
      assert.equal(-1, [1,2,3].indexOf(4));
    });
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
                	assert.equal("Success!",actual);
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
                	assert.equal("Fail",actual);
                    done();
                }
                catch(e){
                	done(e);    
                }
   		 });
       });
       
  });
});


describe('ui:outputText', function(){
    it('attribute value should have been what we set', function(done) {
        var actual;
   		$A.run(function(){
     	 $A.createComponent("ui:outputText", {
         	value : "actualVal"
      	 	}, 
           	function(component){
                debugger;
                actual = component.get("v.value");     
                done(assert.equal("actualVal",actual));
                
   		 });
       });   
  });   
});



