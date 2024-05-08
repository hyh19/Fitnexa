package com.actions.actres;

public class ResBuilder {

    static {
        System.loadLibrary("actRes");
    }

    /**
     * 图片是否需要压缩, 非 jpeg 图片直接返回 false
     * 参数含义见 replacePicture()
     */
    public native boolean isNeedJpegCompress(String in_picture_path, int in_min_Width, int in_min_Height, boolean in_isRawJpeg);

    /**
     * 替换图片接口（替换图片宽高必须一致，否则替换失败）
     * @param in_sty_path             输入：原始的sty文件路径
     * @param in_res_path             输入：原始的res文件路径
     * @param in_scene_name           输入：场景名
     * @param in_pic_name             输入：图片名
     * @param in_picture_path         输入：替换图片路径
     * @param out_res_path            输出：替换图片后的res文件路径
     * @param out_sty_path            输出：替换图片后相应的修改
     * @param in_jpeg_min_width       输入：最小宽
     * @param in_jpeg_min_height      输入：最小高
     * @param in_jpeg_min_SplitWidth  输入：分块宽
     * @param in_jpeg_min_SplitHeight 输入：分块高
     * @param in_jpeg_quality         输入：图片质量
     * @param in_is_raw_jpeg          输入：是否打包原始 jpeg
     * @return                        返回值：1：替换成功 其他值：替换失败
     */
    public native int replacePicture(String in_sty_path, String in_res_path, String in_scene_name, String in_pic_name, String in_picture_path, String out_res_path, String out_sty_path,
                                     int in_jpeg_min_width, int in_jpeg_min_height, int in_jpeg_min_SplitWidth, int in_jpeg_min_SplitHeight, int in_jpeg_quality, boolean in_is_raw_jpeg);


    /**
     * 图片转换 .lz4资源
     * @param outputPath    输出文件路径
     * @param picPath       图片路径
     * @param optionArray   0：最小宽
     *                      1：最小高
     *                      2：分块宽
     *                      3：分块高
     *                      4：图片质量
     *                      5：是否打包原始
     *                      6：图片格式
     *                          0:PIC_RES_RGB565_AUTO
     *                          1:PIC_RES_ARGB565
     *                          2:PIC_RES_RGB888_AUTO
     *                          3:PIC_RES_ARGB888
     *                          4:PIC_RES_WATCH
     *                          5:PIC_RES_ARGB6666
     *                          6:PIC_RES_ARGB1555
     *                      7：是否压缩
     *                      8：是否质量优先
     *                      9:  分块压缩宽度
     *  *                   10: 分块压缩高度
     * @return
     */
    public native int addSinglePicture(String outputPath, String picPath, int[] optionArray);
}
