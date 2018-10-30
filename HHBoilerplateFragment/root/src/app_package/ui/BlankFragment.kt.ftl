package ${packageName}.presentation.ui${dotSubpackage}

import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
<#if includePresenter>
import javax.inject.Inject
import ${packageName}.presentation.ui.base.BaseActivity
</#if>
import ${packageName}.R


class ${className} : Fragment() <#if includeView>, ${viewName} </#if>{

  <#if includePresenter>
  @Inject lateinit var presenter: ${presenterName} 
  </#if>

<#if includeFactory>
  companion object {
    fun newInstance(): ${className} {
      val fragment = ${className}()
      val args = Bundle()
      fragment.arguments = args
      return fragment
    }
  }
</#if>

  override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
    return inflater.inflate(R.layout.${fragmentName}, container, false)
  }

<#if includePresenter>
  override fun onActivityCreated(savedInstanceState: Bundle?) {
    super.onActivityCreated(savedInstanceState)
    (activity as BaseActivity).activityComponent().inject(this)
    presenter.attachView(this)

    setupLayout()

    presenter.onViewCreated()
  }

  override fun onResume() {
    super.onResume()
    presenter.attachView(this)
  }

  override fun onPause() {
   super.onPause()
   presenter.detachView()
  }

  private fun setupLayout() {
  }
</#if>

}
