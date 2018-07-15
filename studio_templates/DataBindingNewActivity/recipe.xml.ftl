<?xml version="1.0"?>
<recipe>

    <#if !hasDependency('com.github.kirtan403.k4kotlin:k4kotlin')>
        <merge from="project_build.gradle.ftl"
                to="build.gradle" />
	     <dependency mavenUrl='com.github.kirtan403.k4kotlin:k4kotlin:0.5.3'/>
    </#if>

    <instantiate from="src/app_package/BindingActivity.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.kt" />

    <instantiate from="res/activity_layout.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <merge from="AndroidManifest.xml.ftl"
               to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />


    <#if enableDataBinding>
        <merge from="app_build.gradle.ftl"
                        to="${escapeXmlAttribute(projectOut)}/build.gradle" />

        <merge from="project_build.gradle.ftl"
         				to="build.gradle" />
    </#if>

    <open file="${srcOut}/${activityClass}.kt"/>
</recipe>
