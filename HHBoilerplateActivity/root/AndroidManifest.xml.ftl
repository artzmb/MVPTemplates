<manifest xmlns:android="http://schemas.android.com/apk/res/android"
	xmlns:tools="http://schemas.android.com/tools"
	package="${packageName}">

    <application>
        <activity
            android:name="${relativePackage}.presentation.ui${dotSubpackage}.${className}"
            android:screenOrientation="portrait"/>
    </application>
</manifest>
