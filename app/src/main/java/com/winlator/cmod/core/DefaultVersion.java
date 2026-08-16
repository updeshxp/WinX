package com.winlator.cmod.core;

public abstract class DefaultVersion {
    public static final String BOX64 = "0.4.4";
    public static final String WOWBOX64 = "0.4.4";
    public static final String FEXCORE = "2608";
    public static final String WRAPPER = "System";
    public static final String WRAPPER_ADRENO = "turnip-mainline-V31";
    public static final String DXVK = GPUInformation.getRenderer(null, null).contains("Mali") ? "1.11.1-sarek" : "3.1.1-binsem-arm64ec-gplasync";
    public static final String D8VK = "1.0";
    public static final String VKD3D = "None";
}