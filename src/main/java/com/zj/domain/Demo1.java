package com.zj.domain;

import com.zj.commons.CommonUtils;
import org.apache.commons.beanutils.BeanUtils;
import org.junit.Test;

import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Map;

public class Demo1 {
    @Test
    public void fun1() throws ClassNotFoundException, InstantiationException, IllegalAccessException, InvocationTargetException, NoSuchMethodException {
        String className="com.zj.domain.Person";
        Class<?> clazz= Class.forName(className);
        Object bean=clazz.newInstance();
        BeanUtils.setProperty(bean,"name","zj");
        BeanUtils.setProperty(bean,"age","20");
        BeanUtils.setProperty(bean,"gender","男");
        BeanUtils.setProperty(bean,"xxx","XXX");
        String age=BeanUtils.getProperty(bean,"age");

        System.out.println(bean);
        System.out.println(age);
    }
    @Test
    public void fun2() throws InvocationTargetException, IllegalAccessException {
        Map<String,String> map=new HashMap<>();
        map.put("username","zj");
        map.put("password","1017");
        User user=new User();
        BeanUtils.populate(user,map);
        System.out.println(user);
    }
    @Test
    public void fun3() throws InvocationTargetException, InstantiationException, IllegalAccessException {
        Map<String,String> map=new HashMap<>();
        map.put("username","zj");
        map.put("password","1017");
        User user= CommonUtils.toBean(map,User.class);
        System.out.println(user);

    }
}
