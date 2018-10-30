<?xml version="1.0"?>
<recipe>

    <#if includeLayout>
        <instantiate from="res/layout/fragment_blank.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />

        <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />
    </#if>

    <instantiate from="src/app_package/ui/BlankFragment.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presentation/ui/${subpackage}${className}.kt" />

    <open file="${escapeXmlAttribute(srcOut)}/ui/${subpackage}${className}.kt" />

    <#if includeView>
    <instantiate from="src/app_package/ui/BlankView.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presentation/ui/${subpackage}${viewName}.kt" />

    <open file="${escapeXmlAttribute(srcOut)}/presentation/ui/${subpackage}${viewName}.kt" />
    </#if>

    <#if includePresenter>
    <instantiate from="src/app_package/ui/BlankPresenter.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presentation/ui/${subpackage}${presenterName}.kt" />

    <open file="${escapeXmlAttribute(srcOut)}/ui/${subpackage}${presenterName}.java" />
    </#if>

</recipe>
