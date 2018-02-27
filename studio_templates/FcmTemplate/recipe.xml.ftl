<?xml version="1.0"?>
<recipe>
	<dependency mavenUrl='com.google.firebase:firebase-messaging:11.8.0'/>
	
	<merge from="AndroidManifest.xml.ftl" 
				to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
 			 
	<#if channelId>
		<merge from="res/values/strings.xml.ftl" to="${escapeXmlAttribute(resOut)}/values/strings.xml" />
	</#if>
		
	<merge from="build.gradle.ftl"
               to="${escapeXmlAttribute(projectOut)}/build.gradle" />
			   
	<merge from="project_build.gradle.ftl"
				to="build.gradle" />
				 
    <instantiate from="src/app_package/serviceClass.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${instanceServiceClass}.java" />
    <instantiate from="src/app_package/messagingClass.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${messagingServiceClass}.java" />
  
 
 
    <open file="${srcOut}/${instanceServiceClass}.java"/>
	<open file="${srcOut}/${messagingServiceClass}.java"/>
</recipe>