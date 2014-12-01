package com.taobao.zeus.store;

import java.util.Arrays;
import java.util.List;

import com.taobao.zeus.log.Global;

public class Super {

	private static final List<String> supers = Arrays.asList(Global.getConfig("supers"));

	public static List<String> getSupers() {
		return supers;
	}
}
