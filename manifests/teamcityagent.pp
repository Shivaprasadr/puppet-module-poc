class poc::teamcityagent(
  $ensure = running,
  $enable = true,
){
  service{'TCBuildAgent':
   ensure=>$ensure,
   enable=>$enable,
 }
}

