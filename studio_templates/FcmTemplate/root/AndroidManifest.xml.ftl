<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android">

    <application>
	
		<#if defaultIcon>
			<!-- Set custom default icon. This is used when no icon is set for incoming notification messages. -->
			<meta-data
				android:name="com.google.firebase.messaging.default_notification_icon"
				android:resource="@mipmap/ic_launcher" />
		</#if>
		
	
		<#if defaultColor>
			<!-- Set color used with incoming notification messages. This is used when no color is set for the incoming notification message. -->
			<meta-data
				android:name="com.google.firebase.messaging.default_notification_color"
				android:resource="@color/colorAccent" />
		</#if>
		
		
		<#if channelId>
			<meta-data
				android:name="com.google.firebase.messaging.default_notification_channel_id"
				android:value="@string/default_notification_channel_id"/>
		</#if>
		
        <service android:name="${packageName}.${messagingServiceClass}">
            <intent-filter>
                <action android:name="com.google.firebase.MESSAGING_EVENT" />
            </intent-filter>
        </service>
 
        <service android:name="${packageName}.${instanceServiceClass}">
            <intent-filter>
                <action android:name="com.google.firebase.INSTANCE_ID_EVENT" />
            </intent-filter>
        </service>
	</application>

</manifest>