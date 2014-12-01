package com.taobao.zeus.broadcast.alarm;

import java.util.List;
import javax.annotation.Resource;
import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

import com.taobao.zeus.log.Global;

/**
 * 
 * @author Changqi Cai
 * 增加报警发送邮件
 * 使用spring的javaMailSender
 */
public class MailAlarm extends AbstractZeusAlarm{

	@Resource
	private JavaMailSender mailSender;
	
	@Override
	public void alarm(List<String> users, String title, String content)	throws Exception {

		try {
			MimeMessage mailMessage = mailSender.createMimeMessage();
			// 设置utf-8或GBK编码，否则邮件会有乱码
			MimeMessageHelper messageHelper = new MimeMessageHelper(mailMessage, true, "utf-8");
			messageHelper.setTo(Global.getConfig("mail.sendtolist"));    // 邮件接受者
			messageHelper.setFrom(Global.getConfig("mail.username")); // 邮件发送者
			messageHelper.setSubject(title); // 主题
			// 邮件内容，注意加参数true，表示启用html格式
			String htmlString = content;
			messageHelper.setText(htmlString, true);
			mailSender.send(mailMessage);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}