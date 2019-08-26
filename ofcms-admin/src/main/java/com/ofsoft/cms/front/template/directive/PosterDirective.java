package com.ofsoft.cms.front.template.directive;

import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Record;
import com.ofsoft.cms.front.template.freemarker.TagBase;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 链接标签
 * Created by dachao on 2019/7/12.
 */
public class PosterDirective extends TagBase {
    public static final String sqlid = "cms.poster.query";

    @Override
    public void onRender() {
        Map<String,Object> parmas = new HashMap<String,Object>();
        parmas.put("site_id",getParam("site_id"));
        List<Record> list = Db.find(Db.getSqlPara(sqlid,parmas));
        setVariable("poster", list);
        renderBody();
    }
}
