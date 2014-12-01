package com.taobao.zeus.jobs.sub.conf;

import org.apache.hadoop.conf.Configuration;

import com.taobao.zeus.log.Global;

public class OnlineConf extends Configuration{
	public OnlineConf(){
		set("hadoop.job.ugi", "tbresys,cug-tbauction,cug-tbdp,cug-tbptd-dev,cug-verticalmarket,cug-tbdataapplication,cug-taobao-sns,cug-mercury,#resys123");
		set("mapred.job.queue.name","cug-tbdataapplication");
		set("proxy.hosts","172.24.160.65:1080");
		set("hadoop.rpc.socket.factory.class.default","com.taobao.cmp.proxy.HadoopProxy");
		set("fs.default.name",Global.getConfig("fs.default.name"));
		set("mapred.job.tracker",Global.getConfig("mapred.job.tracker"));
		set("mapred.working.dir",Global.getConfig("mapred.working.dir"));
	}
}
