.class public Lcn/codemao/android/account/util/DeviceInformationUtil;
.super Ljava/lang/Object;
.source "DeviceInformationUtil.java"


# static fields
.field private static final ANDROID_OS:Ljava/lang/String; = "android"

.field private static final HARMONY_OS:Ljava/lang/String; = "harmony"

.field private static final INVALID_DEVICE_ID:Ljava/lang/String; = "000000000000000"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppVersionCode()I
    .registers 3

    .line 126
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 130
    :try_start_9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 131
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_13} :catch_14

    return v0

    :catch_14
    move-exception v0

    .line 133
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v2
.end method

.method public static getAppVersionName()Ljava/lang/String;
    .registers 3

    .line 144
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 149
    :try_start_8
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 150
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    move-exception v0

    .line 153
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v0, "1.0"

    return-object v0
.end method

.method public static getBlueToothName()Ljava/lang/String;
    .registers 1

    .line 171
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    const-string v0, ""

    return-object v0
.end method

.method public static getCurrentNetType()Ljava/lang/String;
    .registers 4

    .line 250
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    .line 252
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 253
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const-string v1, "unknow"

    if-nez v0, :cond_15

    goto :goto_54

    .line 256
    :cond_15
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f

    const-string v1, "wifi"

    goto :goto_54

    .line 258
    :cond_1f
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_54

    .line 259
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_51

    if-eq v0, v3, :cond_51

    const/4 v1, 0x2

    if-ne v0, v1, :cond_32

    goto :goto_51

    :cond_32
    const/4 v1, 0x3

    if-eq v0, v1, :cond_4e

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4e

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4e

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4e

    const/16 v1, 0xc

    if-ne v0, v1, :cond_44

    goto :goto_4e

    :cond_44
    const/16 v1, 0xd

    if-ne v0, v1, :cond_4b

    const-string v0, "4g"

    goto :goto_53

    :cond_4b
    const-string v0, ""

    goto :goto_53

    :cond_4e
    :goto_4e
    const-string v0, "3g"

    goto :goto_53

    :cond_51
    :goto_51
    const-string v0, "2g"

    :goto_53
    move-object v1, v0

    :cond_54
    :goto_54
    return-object v1
.end method

.method public static getDensity()I
    .registers 1

    .line 189
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method public static getDeviceHeader()Ljava/lang/String;
    .registers 3

    .line 40
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 41
    invoke-static {}, Lcn/codemao/android/account/util/DeviceInformationUtil;->getPhoneBrand()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceName"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcn/codemao/android/account/util/DeviceInformationUtil;->getPhoneModel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceModel"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "deviceType"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 44
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/codemao/android/account/util/DeviceInformationUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {v1}, Lcn/codemao/android/account/util/DeviceInformationUtil;->isLegalIMEI(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v1, ""

    :cond_31
    const-string v2, "deviceId"

    .line 48
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getUmengId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "umengId"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcn/codemao/android/account/util/UniqueId;->getInstance()Lcn/codemao/android/account/util/UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcn/codemao/android/account/util/UniqueId;->getUniquePseudoId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceSn"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceName()Ljava/lang/String;
    .registers 2

    .line 159
    invoke-static {}, Lcn/codemao/android/account/util/DeviceInformationUtil;->getBlueToothName()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 161
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    :cond_c
    return-object v0
.end method

.method public static getHarmonyOsVersion()Ljava/lang/String;
    .registers 6

    .line 309
    invoke-static {}, Lcn/codemao/android/account/util/DeviceInformationUtil;->isHarmonyOs()Z

    move-result v0

    if-eqz v0, :cond_2b

    :try_start_6
    const-string v0, "android.os.SystemProperties"

    .line 311
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 312
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "hw_sc.build.platform.version"

    aput-object v3, v2, v5

    .line 313
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_26} :catch_27

    goto :goto_2d

    :catch_27
    move-exception v0

    .line 315
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2b
    const-string v0, ""

    :goto_2d
    return-object v0
.end method

.method public static getHeader()Ljava/lang/String;
    .registers 4

    const-string v0, "model"

    .line 63
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v2, "platform"

    const-string v3, "android"

    .line 64
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v2

    if-nez v2, :cond_17

    const-wide/16 v2, 0x0

    goto :goto_1f

    .line 70
    :cond_17
    invoke-virtual {v2}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 71
    :goto_1f
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "uid"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcn/codemao/android/account/util/DeviceInformationUtil;->getAppVersionCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "swvc"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 73
    invoke-static {}, Lcn/codemao/android/account/util/DeviceInformationUtil;->getAppVersionName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "swvn"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :try_start_3e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/codemao/android/account/util/DeviceInformationUtil;->getPhoneBrand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/codemao/android/account/util/DeviceInformationUtil;->getPhoneModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_63
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3e .. :try_end_63} :catch_64

    goto :goto_6f

    :catch_64
    move-exception v2

    const-string v3, "UnsupportedEncodingException:"

    .line 78
    invoke-static {v3, v2}, Lcn/codemao/android/account/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v2, "unknown"

    .line 79
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :goto_6f
    invoke-static {}, Lcn/codemao/android/account/util/DeviceInformationUtil;->getScreenResolution()Ljava/lang/String;

    move-result-object v0

    const-string v2, "resolution"

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcn/codemao/android/account/util/DeviceInformationUtil;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "la"

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcn/codemao/android/account/util/DeviceInformationUtil;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    const-string v2, "sysv"

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcn/codemao/android/account/util/DeviceInformationUtil;->getHarmonyOsVersion()Ljava/lang/String;

    move-result-object v0

    const-string v2, "harmonyos"

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getPID()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pid"

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pkg"

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "policy"

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 91
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getChannel()Ljava/lang/String;

    move-result-object v0

    const-string v2, "channel"

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 115
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_d

    :catch_b
    const-string p0, "000000000000000"

    :goto_d
    return-object p0
.end method

.method public static getLanguage()Ljava/lang/String;
    .registers 3

    .line 238
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 240
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1c

    .line 241
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    goto :goto_26

    .line 243
    :cond_1c
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 245
    :goto_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOsVersion()Ljava/lang/String;
    .registers 1

    .line 281
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneBrand()Ljava/lang/String;
    .registers 1

    .line 179
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneModel()Ljava/lang/String;
    .registers 1

    .line 184
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getScreen()Ljava/lang/String;
    .registers 5

    .line 194
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 197
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "x"

    const-string v3, "window"

    const/16 v4, 0x11

    if-ge v1, v4, :cond_33

    .line 199
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5b

    .line 203
    :cond_33
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 204
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 205
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 206
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 207
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 208
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5b
    return-object v0
.end method

.method public static getScreenResolution()Ljava/lang/String;
    .registers 5

    .line 217
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 219
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "x"

    const-string v3, "window"

    const/16 v4, 0x11

    if-ge v1, v4, :cond_33

    .line 221
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5b

    .line 225
    :cond_33
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 226
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 227
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 228
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 229
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5b
    return-object v0
.end method

.method public static isHarmonyOs()Z
    .registers 5

    .line 286
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getOS()Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "harmony"

    if-eqz v1, :cond_36

    const/4 v0, 0x0

    :try_start_d
    const-string v1, "com.huawei.system.BuildEx"

    .line 289
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getOsBrand"

    new-array v4, v0, [Ljava/lang/Class;

    .line 290
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    .line 291
    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 293
    invoke-static {v2}, Lcn/codemao/android/account/util/PlatformConfig;->setOS(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2a} :catch_2c

    const/4 v0, 0x1

    return v0

    :catch_2c
    move-exception v1

    .line 297
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_30
    const-string v1, "android"

    .line 299
    invoke-static {v1}, Lcn/codemao/android/account/util/PlatformConfig;->setOS(Ljava/lang/String;)V

    return v0

    .line 302
    :cond_36
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isLegalIMEI(Ljava/lang/String;)Z
    .registers 2

    .line 101
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "000000000000000"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method
