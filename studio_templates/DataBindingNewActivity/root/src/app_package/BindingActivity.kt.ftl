package ${packageName}

import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import com.livinglifetechway.k4kotlin.setBindingView
import ${applicationPackage}.R
import ${applicationPackage}.databinding.${underscoreToCamelCase(layoutName)}Binding

class ${activityClass} : AppCompatActivity() {

    private lateinit var mBinding: ${underscoreToCamelCase(layoutName)}Binding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        mBinding = setBindingView(R.layout.${layoutName})


    }
}
