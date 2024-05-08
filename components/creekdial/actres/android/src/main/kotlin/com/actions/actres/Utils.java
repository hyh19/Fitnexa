package com.actions.actres;

import java.io.File;

public class Utils {
    private static Utils mUtil;

    public static Utils getInstance() {
        if (mUtil == null) {
            synchronized (Utils.class) {
                if (mUtil == null) {
                    mUtil = new Utils();
                }
            }
        }
        return mUtil;
    }

    public String getFileName(String filePath) {
        File file = new File(filePath);
        return file.getName();
    }

}
