.class public Lcom/sensorsdata/analytics/android/sdk/util/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exec(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "SA.Exec"

    const/4 v1, 0x0

    .line 196
    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 197
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_4a

    .line 198
    :try_start_14
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_47

    .line 200
    :try_start_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    :goto_1e
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_28

    .line 202
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 204
    :cond_28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2c
    .catchall {:try_start_19 .. :try_end_2c} :catchall_45

    .line 210
    :try_start_2c
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_38

    :catchall_30
    move-exception p0

    .line 212
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :goto_38
    :try_start_38
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_44

    :catch_3c
    move-exception p0

    .line 219
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_44
    return-object v1

    :catchall_45
    move-exception v3

    goto :goto_4d

    :catchall_47
    move-exception v3

    move-object p0, v1

    goto :goto_4d

    :catchall_4a
    move-exception v3

    move-object p0, v1

    move-object v2, p0

    .line 206
    :goto_4d
    :try_start_4d
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_71

    if-eqz p0, :cond_62

    .line 210
    :try_start_56
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_5a

    goto :goto_62

    :catchall_5a
    move-exception p0

    .line 212
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_62
    :goto_62
    if-eqz v2, :cond_70

    .line 217
    :try_start_64
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_70

    :catch_68
    move-exception p0

    .line 219
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_70
    :goto_70
    return-object v1

    :catchall_71
    move-exception v1

    if-eqz p0, :cond_80

    .line 210
    :try_start_74
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78

    goto :goto_80

    :catchall_78
    move-exception p0

    .line 212
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_80
    :goto_80
    if-eqz v2, :cond_8e

    .line 217
    :try_start_82
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_8e

    :catch_86
    move-exception p0

    .line 219
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_8e
    :goto_8e
    throw v1
.end method

.method public static getBrand()Ljava/lang/String;
    .registers 1

    .line 56
    :try_start_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 58
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    .line 61
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_11
    const-string v0, "UNKNOWN"

    return-object v0
.end method

.method public static getDeviceSize(Landroid/content/Context;)[I
    .registers 10

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_5
    const-string v3, "window"

    .line 80
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 81
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 82
    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 83
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 84
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_28

    .line 85
    invoke-virtual {v3, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 86
    iget v3, v5, Landroid/graphics/Point;->x:I

    .line 87
    iget v5, v5, Landroid/graphics/Point;->y:I

    goto :goto_3f

    :cond_28
    const/16 v7, 0xd

    if-lt v6, v7, :cond_34

    .line 89
    invoke-virtual {v3, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 90
    iget v3, v5, Landroid/graphics/Point;->x:I

    .line 91
    iget v5, v5, Landroid/graphics/Point;->y:I

    goto :goto_3f

    .line 93
    :cond_34
    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v5

    .line 94
    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    move v8, v5

    move v5, v3

    move v3, v8

    .line 96
    :goto_3f
    invoke-static {v4, v3, v5}, Lcom/sensorsdata/analytics/android/sdk/util/DeviceUtils;->getNaturalWidth(III)I

    move-result v6

    aput v6, v0, v2

    .line 97
    invoke-static {v4, v3, v5}, Lcom/sensorsdata/analytics/android/sdk/util/DeviceUtils;->getNaturalHeight(III)I

    move-result v3

    aput v3, v0, v1
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_4b} :catch_4c

    goto :goto_63

    :catch_4c
    nop

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_63

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 102
    iget v3, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    aput v3, v0, v2

    .line 103
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    aput p0, v0, v1

    :cond_63
    :goto_63
    return-object v0
.end method

.method public static getHarmonyOSVersion()Ljava/lang/String;
    .registers 2

    .line 143
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/DeviceUtils;->isHarmonyOs()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "hw_sc.build.platform.version"

    const-string v1, ""

    .line 144
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/DeviceUtils;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v0, "getprop hw_sc.build.platform.version"

    .line 146
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/DeviceUtils;->exec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :cond_1c
    :goto_1c
    return-object v0
.end method

.method public static getManufacturer()Ljava/lang/String;
    .registers 1

    .line 44
    :try_start_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    .line 49
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_11
    const-string v0, "UNKNOWN"

    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .registers 2

    .line 67
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v0, "UNKNOWN"

    goto :goto_f

    :cond_b
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method private static getNaturalHeight(III)I
    .registers 4

    if-eqz p0, :cond_5

    const/4 v0, 0x2

    if-ne p0, v0, :cond_6

    :cond_5
    move p1, p2

    :cond_6
    return p1
.end method

.method private static getNaturalWidth(III)I
    .registers 4

    if-eqz p0, :cond_7

    const/4 v0, 0x2

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    move p1, p2

    :cond_7
    :goto_7
    return p1
.end method

.method public static getOS()Ljava/lang/String;
    .registers 1

    .line 39
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, "UNKNOWN"

    :cond_6
    return-object v0
.end method

.method private static getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 173
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 174
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    .line 175
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 176
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_26

    if-eqz v0, :cond_25

    return-object p1

    :cond_25
    return-object p0

    :catchall_26
    move-exception p0

    .line 181
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SA.SystemProperties"

    invoke-static {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private static isHarmonyOs()Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "com.huawei.system.BuildEx"

    .line 159
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getOsBrand"

    new-array v3, v0, [Ljava/lang/Class;

    .line 160
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_18

    return v0

    :cond_18
    const-string v2, "harmony"

    .line 164
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_23

    return v0

    :catchall_23
    move-exception v1

    .line 166
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SA.HasHarmonyOS"

    invoke-static {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
