package com.sboot.service;

import org.junit.Assert;
import org.junit.Test;

public class CalServiceTest {

    @Test
    public void testAdd() {
        CalService calService = new CalService();
        int res = calService.add(2, 3);
        Assert.assertEquals(5, res);
    }

    @Test
    public void testSubtract() {
        CalService calService = new CalService();
        int res = calService.subtract(5, 3);
        Assert.assertEquals(2, res);
    }
}
