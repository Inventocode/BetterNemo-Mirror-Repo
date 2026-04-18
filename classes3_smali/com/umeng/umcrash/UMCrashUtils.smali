.class public Lcom/umeng/umcrash/UMCrashUtils;
.super Ljava/lang/Object;
.source "UMCrashUtils.java"


# static fields
.field public static final UNKNOW:Ljava/lang/String; = ""


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 95
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x1

    if-lt v1, v2, :cond_2e

    :try_start_b
    const-string v1, "android.content.Context"

    .line 97
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "checkSelfPermission"

    new-array v4, v3, [Ljava/lang/Class;

    .line 98
    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v0

    .line 99
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_3d

    if-nez p0, :cond_3d

    goto :goto_3c

    .line 109
    :cond_2e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_3d

    :goto_3c
    const/4 v0, 0x1

    :catchall_3d
    :cond_3d
    return v0
.end method

.method public static getActiveUser(Landroid/content/Context;)[Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 27
    :cond_4
    :try_start_4
    const-class v1, Lcom/umeng/commonsdk/utils/UMUtils;

    sget-object v2, Lcom/umeng/commonsdk/utils/UMUtils;->UNKNOW:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_8} :catch_9

    goto :goto_a

    :catch_9
    move-object v1, v0

    :goto_a
    if-eqz v1, :cond_2b

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_e
    const-string v4, "getActiveUser"

    new-array v5, v3, [Ljava/lang/Class;

    .line 33
    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e .. :try_end_1a} :catch_1b

    goto :goto_1c

    :catch_1b
    move-object v1, v0

    :goto_1c
    if-eqz v1, :cond_2b

    :try_start_1e
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    .line 38
    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2b

    .line 40
    check-cast p0, [Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_1e .. :try_end_2a} :catch_2b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1e .. :try_end_2a} :catch_2b

    move-object v0, p0

    :catch_2b
    :cond_2b
    return-object v0
.end method

.method public static getNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    :try_start_5
    const-string v1, "phone"

    .line 73
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 74
    invoke-static {p0, v2}, Lcom/umeng/umcrash/UMCrashUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1c

    if-eqz v1, :cond_1c

    .line 76
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-object p0

    :catchall_1c
    :cond_1c
    return-object v0
.end method

.method public static setPuidAndProvider(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 56
    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->getInstance()Lcom/uc/crashsdk/export/CrashApi;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 57
    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->getInstance()Lcom/uc/crashsdk/export/CrashApi;

    move-result-object v0

    const-string v1, "um_app_puid"

    invoke-virtual {v0, v1, p0}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->getInstance()Lcom/uc/crashsdk/export/CrashApi;

    move-result-object p0

    const-string v0, "um_app_provider"

    invoke-virtual {p0, v0, p1}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public static splitByByte(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    .line 118
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 120
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v2, v1, :cond_23

    .line 123
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 124
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 125
    array-length v5, v5

    add-int/2addr v3, v5

    if-lt p1, v3, :cond_23

    .line 127
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_23

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 133
    :catchall_23
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
