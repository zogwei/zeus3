package com.sencha.gxt.theme.base.client.field;

import com.google.gwt.safehtml.shared.SafeHtml;
import com.google.gwt.safehtml.client.SafeHtmlTemplates.Template;

public interface FieldLabelDefaultAppearance_FieldLabelTemplate_render_SafeHtml__String_id__Style_style__SafeStyles_fieldLabelStyles__SafeStyles_fieldElementStyles___SafeHtmlTemplates extends com.google.gwt.safehtml.client.SafeHtmlTemplates {
  @Template("<label class=\"{0}\" style=\"{1}\"></label>")
  SafeHtml render0(java.lang.String arg0, com.google.gwt.safecss.shared.SafeStyles arg1);
  @Template("<label for=\"{0}\" class=\"{1}\" style=\"{2}\"></label>")
  SafeHtml render1(java.lang.String arg0, java.lang.String arg1, com.google.gwt.safecss.shared.SafeStyles arg2);
  @Template("<div class=\"{0}\">{1}{2}<div class=\"{3}\" style=\"{4}\"></div><div class=\"{5}\"></div></div>\n")
  SafeHtml render2(java.lang.String arg0, com.google.gwt.safehtml.shared.SafeHtml arg1, com.google.gwt.safehtml.shared.SafeHtml arg2, java.lang.String arg3, com.google.gwt.safecss.shared.SafeStyles arg4, java.lang.String arg5);
}
