<aura:application >
    <ltng:require styles="{!join(',', 
    	$Resource.jasmine + '/lib/jasmine-2.5.2/jasmine.css'
    )}"
    
	scripts="{!join(',', 
    	$Resource.jasmine + '/lib/jasmine-2.5.2/jasmine.js',
    	$Resource.jasmine + '/lib/jasmine-2.5.2/jasmine-html.js', 
   	 	$Resource.jasmine + '/lib/jasmine-2.5.2/boot.js',  
		$Resource.jasmineTest             
    )}"
    
    afterScriptsLoaded="{!c.runTests}"     
    />

</aura:application>