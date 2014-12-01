package com.sencha.gxt.theme.base.client.field;

public class FieldLabelDefaultAppearance_FieldLabelTemplate_render_SafeHtml__String_id__Style_style__SafeStyles_fieldLabelStyles__SafeStyles_fieldElementStyles___SafeHtmlTemplatesImpl implements com.sencha.gxt.theme.base.client.field.FieldLabelDefaultAppearance_FieldLabelTemplate_render_SafeHtml__String_id__Style_style__SafeStyles_fieldLabelStyles__SafeStyles_fieldElementStyles___SafeHtmlTemplates {
  
  public com.google.gwt.safehtml.shared.SafeHtml render0(java.lang.String arg0,com.google.gwt.safecss.shared.SafeStyles arg1) {
    StringBuilder sb = new java.lang.StringBuilder();
    sb.append("<label class=\"");
    sb.append(com.google.gwt.safehtml.shared.SafeHtmlUtils.htmlEscape(arg0));
    sb.append("\" style=\"");
    sb.append(com.google.gwt.safehtml.shared.SafeHtmlUtils.htmlEscape(arg1.asString()));
    sb.append("\"></label>");
return new com.google.gwt.safehtml.shared.OnlyToBeUsedInGeneratedCodeStringBlessedAsSafeHtml(sb.toString());
}

public com.google.gwt.safehtml.shared.SafeHtml render1(java.lang.String arg0,java.lang.String arg1,com.google.gwt.safecss.shared.SafeStyles arg2) {
StringBuilder sb = new java.lang.StringBuilder();
sb.append("<label for=\"");
sb.append(com.google.gwt.safehtml.shared.SafeHtmlUtils.htmlEscape(arg0));
sb.append("\" class=\"");
sb.append(com.google.gwt.safehtml.shared.SafeHtmlUtils.htmlEscape(arg1));
sb.append("\" style=\"");
sb.append(com.google.gwt.safehtml.shared.SafeHtmlUtils.htmlEscape(arg2.asString()));
sb.append("\"></label>");
return new com.google.gwt.safehtml.shared.OnlyToBeUsedInGeneratedCodeStringBlessedAsSafeHtml(sb.toString());
}

public com.google.gwt.safehtml.shared.SafeHtml render2(java.lang.String arg0,com.google.gwt.safehtml.shared.SafeHtml arg1,com.google.gwt.safehtml.shared.SafeHtml arg2,java.lang.String arg3,com.google.gwt.safecss.shared.SafeStyles arg4,java.lang.String arg5) {
StringBuilder sb = new java.lang.StringBuilder();
sb.append("<div class=\"");
sb.append(com.google.gwt.safehtml.shared.SafeHtmlUtils.htmlEscape(arg0));
sb.append("\">");
sb.append(arg1.asString());
sb.append(arg2.asString());
sb.append("<div class=\"");
sb.append(com.google.gwt.safehtml.shared.SafeHtmlUtils.htmlEscape(arg3));
sb.append("\" style=\"");
sb.append(com.google.gwt.safehtml.shared.SafeHtmlUtils.htmlEscape(arg4.asString()));
sb.append("\"></div><div class=\"");
sb.append(com.google.gwt.safehtml.shared.SafeHtmlUtils.htmlEscape(arg5));
sb.append("\"></div></div>\n");
return new com.google.gwt.safehtml.shared.OnlyToBeUsedInGeneratedCodeStringBlessedAsSafeHtml(sb.toString());
}
}
