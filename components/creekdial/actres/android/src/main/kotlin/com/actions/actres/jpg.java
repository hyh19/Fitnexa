package com.actions.actres;

public class jpg {

    static {
        System.loadLibrary("jpg");
    }

    public native int api(String in_filePath, String out_filePath, int quality);
}
