<aura:application >
    <!-- $Resource.mochatest contain sample mocha tests -->
    <ltng:require scripts="{!join(',', 
                            $Resource.mochajs, 
                            $Resource.chai, 
                            $Resource.mochatest
                           )}"
                  styles="{!$Resource.mochacss}"
                  afterScriptsLoaded="{!c.runTests}"/>
 <div id="mocha"></div>
</aura:application>