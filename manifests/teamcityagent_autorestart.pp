class poc::teamcityagent(
			  $run,
 			  $ensure = running,
 			  $enable = true,
			){
  			  if ($run == 'true'){ service{'TCBuildAgent':
           		   	   			ensure=>$ensure,
   		   	           			enable=>$enable,
			  	  		       }			  
			   		      }
			  elsif ($run == 'false'){
						   notify {'did not run anything as the $run was ${run}': }
						  }
			  }

