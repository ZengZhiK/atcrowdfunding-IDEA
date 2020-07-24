package com.atguigu.crowd.service;


import com.atguigu.crowd.bean.TAdmin;

import java.util.Map;

/**
 * @author zzk
 * @create 2020-05-17 9:21
 */
public interface TAdminService {
    TAdmin getTAdminByLogin(Map<String, String> acctPwdMap);
}
