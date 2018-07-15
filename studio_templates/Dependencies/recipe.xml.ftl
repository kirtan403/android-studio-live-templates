<?xml version="1.0"?>
<recipe>

    <#if K4Kotlin && !hasDependency('com.github.kirtan403.k4kotlin:k4kotlin')>
        <merge from="project_build.gradle.ftl"
                to="build.gradle" />
	     <dependency mavenUrl='com.github.kirtan403.k4kotlin:k4kotlin:0.5.3'/>
    </#if>

    <#if K4KotlinRetrofit && !hasDependency('com.github.kirtan403.k4kotlin:k4kotlin-retrofit')>
        <merge from="project_build.gradle.ftl"
                to="build.gradle" />
	     <dependency mavenUrl='com.github.kirtan403.k4kotlin:k4kotlin-retrofit:0.5.3'/>
    </#if>

    <#if QuickpermissionsKotlin && !hasDependency('com.github.quickpermissions:quickpermissions-kotlin')>
        <merge from="project_build.gradle.ftl"
                to="build.gradle" />
	     <dependency mavenUrl='com.github.quickpermissions:quickpermissions-kotlin:0.2.0'/>
    </#if>

    <#if LastAdapter && !hasDependency('com.github.nitrico.lastadapter:lastadapter')>
        <merge from="project_build.gradle.ftl"
                to="build.gradle" />
	     <dependency mavenUrl='com.github.nitrico.lastadapter:lastadapter:2.3.0'/>
    </#if>

    <#if Retrofit && !hasDependency('com.squareup.retrofit2:retrofit')>
	     <dependency mavenUrl='com.squareup.retrofit2:retrofit:2.4.0'/>
    </#if>

    <#if Glide && !hasDependency('com.github.bumptech.glide:glide')>
        <merge from="app_build.gradle.ftl"
                to="${escapeXmlAttribute(projectOut)}/build.gradle" />
	     <dependency mavenUrl='com.github.bumptech.glide:glide:4.7.1'/>
    </#if>

</recipe>
