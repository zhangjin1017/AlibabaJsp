package com.zj.uuid;

import com.zj.commons.CommonUtils;
import org.junit.Test;

import java.util.Locale;
import java.util.UUID;

public class UUIDTest {
    @Test
    public void fun1(){
        UUID uuid = UUID.randomUUID();
        String string=uuid.toString();
        string=string.replace("-","");
        string=string.toUpperCase();
        System.out.println(string);
        System.out.println(CommonUtils.uuid());
    }
}
