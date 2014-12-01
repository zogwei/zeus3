package com.taobao.zeus.jobs.sub.conf;

import org.apache.hadoop.conf.Configuration;

import com.taobao.zeus.log.Global;


public class DailyConf extends Configuration{

	public DailyConf(){
		set("hadoop.job.ugi", "tbauction,cug-dev-other,cug-dev-tbdp,#commodity");
		set("mapred.job.queue.name","cug-dev-other");
		set("proxy.hosts","10.232.101.170:1080");
		set("hadoop.rpc.socket.factory.class.default","com.taobao.cmp.proxy.HadoopProxy");
		set("fs.default.name",Global.getConfig("fs.default.name"));
		set("mapred.working.dir",Global.getConfig("mapred.working.dir"));
	}
}
