package com.actions.actres;

public class JPGUtilStatus {

    public static String getErrStatus(int errCode) {
        String res = "";
        switch(errCode) {
            case 0:
                res = "JPG_DEC/ENC_OK";
                break;
            case -1:
                res = "JPG_DEC_FILE_ERROR";
                break;
            case -2:
                res = "JPG_DEC_START_ERROR";
                break;
            case -3:
                res = "JPG_DEC_PROCESS_ERROR";
                break;
            case -4:
                res = "JPG_DEC_CLOSE_ERROR";
                break;
            case -5:
                res = "JPG_DEC_MALLOC_ERROR";
                break;
            case -6:
                res = "JPG_DEC_PARSER_ERROR";
                break;
            case -11:
                res = "JPG_ENC_OPEN_ERROR";
                break;
            case -12:
                res = "JPG_ENC_PROCESS_ERROR";
                break;
            case -13:
                res = "JPG_ENC_CLOSE_ERROR";
                break;
            case -14:
                res = "JPG_ENC_FILENAME_ERROR";
                break;
            case -15:
                res = "JPG_ENC_FILELEN_ERROR";
                break;
            case -16:
                res = "JPG_ENC_MALLOC_ERROR";
                break;
        }
        return res;
    }

}
