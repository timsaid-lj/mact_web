package com.thinkgem.javamg.modules.mact.mobile;


import java.util.concurrent.atomic.AtomicInteger;

import static com.thinkgem.javamg.modules.mact.mobile.MactMobileController.threadLocal;

public class ThreadLocalThread extends Thread {
    public MactMobileController mactMobileController;
    private static AtomicInteger ai = new AtomicInteger();

    public ThreadLocalThread(String name)
    {
        super(name);
    }


    public void setThreadLocal(String value) {

        threadLocal.set(value);
    }

    public String getThreadLocal() {

        return threadLocal.get();
    }

    public void run() {
        try
        {
            for (int i = 0; i < 3; i++)
            {
              //  threadLocal.set(MactMobileController.CurrentId);
                System.out.println(this.getName() + " get value--->" + threadLocal.get());
                Thread.sleep(200);
            }
        }
        catch (InterruptedException e)
        {
            e.printStackTrace();
        }
    }
}