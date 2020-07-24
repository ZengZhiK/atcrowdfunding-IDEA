package com.atguigu.crowd.service.impl;

import com.atguigu.crowd.bean.TAdmin;
import com.atguigu.crowd.bean.TAdminExample;
import com.atguigu.crowd.mapper.TAdminMapper;
import com.atguigu.crowd.service.TAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @author zzk
 * @create 2020-05-17 9:23
 */
@Service
public class TAdminServiceImpl implements TAdminService {
    @Autowired
    private TAdminMapper adminMapper;

    @Override
    public TAdmin getTAdminByLogin(Map<String, String> acctPwdMap) {
        String loginacct = acctPwdMap.get("loginacct");
        String userpswd = acctPwdMap.get("userpswd");

        TAdminExample tAdminExample = new TAdminExample();
        tAdminExample.createCriteria().andLoginacctEqualTo(loginacct);

        List<TAdmin> tAdmins = adminMapper.selectByExample(tAdminExample);
        if (tAdmins == null || tAdmins.size() == 0) {
            throw new RuntimeException();
        }

        TAdmin admin = tAdmins.get(0);
        if (!admin.getUserpswd().equals(userpswd)) {
            throw new RuntimeException();
        }

        return admin;
    }
}
