.class public Lcom/umeng/umzid/ZIDManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static c:Lcom/umeng/umzid/ZIDManager;


# instance fields
.field public a:Z

.field public b:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/umzid/ZIDManager;->a:Z

    iput-boolean v0, p0, Lcom/umeng/umzid/ZIDManager;->b:Z

    return-void
.end method

.method public static synthetic a(Lcom/umeng/umzid/ZIDManager;Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    .line 1
    iget-boolean v0, p0, Lcom/umeng/umzid/ZIDManager;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    goto/16 :goto_8b

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/umzid/ZIDManager;->a:Z

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_f
    invoke-static {}, Lcom/umeng/umzid/Spy;->getID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "zdata"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/umeng/umzid/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mac"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/umeng/umzid/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "oaid"

    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0, p1, v2}, Lcom/umeng/umzid/ZIDManager;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_2d
    .catchall {:try_start_f .. :try_end_2d} :catchall_88

    const-string v6, "https://aaid.umeng.com/api/postZdata"

    :try_start_2f
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/umeng/umzid/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_88

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "suc"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v0, :cond_88

    invoke-static {p1, v3}, Lcom/umeng/umzid/c;->f(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v4}, Lcom/umeng/umzid/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v5}, Lcom/umeng/umzid/c;->b(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "aaid"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6a

    invoke-static {p1, v1}, Lcom/umeng/umzid/c;->e(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6a
    const-string v0, "uabc"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_79

    invoke-static {p1, v0}, Lcom/umeng/umzid/c;->d(Landroid/content/Context;Ljava/lang/String;)V

    :cond_79
    const-string v0, "resetToken"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_88

    invoke-static {p1, v0}, Lcom/umeng/umzid/c;->c(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_88
    .catchall {:try_start_2f .. :try_end_88} :catchall_88

    :catchall_88
    :cond_88
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/umeng/umzid/ZIDManager;->a:Z

    :goto_8b
    return-object v1
.end method

.method public static declared-synchronized getInstance()Lcom/umeng/umzid/ZIDManager;
    .registers 2

    const-class v0, Lcom/umeng/umzid/ZIDManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/umeng/umzid/ZIDManager;->c:Lcom/umeng/umzid/ZIDManager;

    if-nez v1, :cond_e

    new-instance v1, Lcom/umeng/umzid/ZIDManager;

    invoke-direct {v1}, Lcom/umeng/umzid/ZIDManager;-><init>()V

    sput-object v1, Lcom/umeng/umzid/ZIDManager;->c:Lcom/umeng/umzid/ZIDManager;

    :cond_e
    sget-object v1, Lcom/umeng/umzid/ZIDManager;->c:Lcom/umeng/umzid/ZIDManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .registers 1

    const-string v0, "1.4.1"

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 12

    const-class v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;

    const-string v1, ""

    invoke-static {}, Lcom/umeng/umzid/Spy;->getVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zdata_ver"

    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2
    :try_start_f
    sget-object v4, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->UNKNOW:Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_33

    const-string v4, "getAndroidId"

    :try_start_13
    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_33

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_33

    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_33

    check-cast v4, Ljava/lang/String;
    :try_end_32
    .catchall {:try_start_13 .. :try_end_32} :catchall_33

    goto :goto_34

    :catchall_33
    :cond_33
    move-object v4, v1

    :goto_34
    const-string v5, "android_id"

    .line 3
    invoke-virtual {p2, v5, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-wide/16 v4, 0x0

    .line 4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mounted"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_52

    const-string v7, "mounted_ro"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    goto :goto_52

    :cond_50
    const/4 v6, 0x0

    goto :goto_53

    :cond_52
    :goto_52
    const/4 v6, 0x1

    :goto_53
    if-eqz v6, :cond_63

    .line 5
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x9

    if-lt v6, v7, :cond_63

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v4

    .line 6
    :cond_63
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "storage"

    invoke-virtual {p2, v5, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v5, "os_version"

    invoke-virtual {p2, v5, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v4, 0x0

    if-nez p1, :cond_77

    goto :goto_a3

    .line 7
    :cond_77
    :try_start_77
    new-instance v5, Landroid/content/res/Configuration;

    invoke-direct {v5}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {v5}, Landroid/content/res/Configuration;->setToDefaults()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_88
    .catchall {:try_start_77 .. :try_end_88} :catchall_89

    goto :goto_8a

    :catchall_89
    move-object v5, v4

    :goto_8a
    if-nez v5, :cond_90

    :try_start_8c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 8
    :cond_90
    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v5

    if-eqz v5, :cond_a3

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    const v6, 0x36ee80

    div-int/2addr v5, v6
    :try_end_a2
    .catchall {:try_start_8c .. :try_end_a2} :catchall_a3

    goto :goto_a5

    :catchall_a3
    :cond_a3
    :goto_a3
    const/16 v5, 0x8

    .line 9
    :goto_a5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "timezone"

    invoke-virtual {p2, v6, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "model"

    invoke-virtual {p2, v6, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    :try_start_b5
    sget-object v5, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->UNKNOW:Ljava/lang/String;
    :try_end_b7
    .catchall {:try_start_b5 .. :try_end_b7} :catchall_d9

    const-string v5, "getImeiNew"

    :try_start_b9
    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v2

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_d9

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p1, v6, v2

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_d9

    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_d9

    check-cast v5, Ljava/lang/String;
    :try_end_d8
    .catchall {:try_start_b9 .. :try_end_d8} :catchall_d9

    goto :goto_da

    :catchall_d9
    :cond_d9
    move-object v5, v1

    :goto_da
    const-string v6, "imei"

    .line 11
    invoke-virtual {p2, v6, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    :try_start_df
    const-class v5, Landroid/os/Build;
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e1} :catch_137

    const-string v6, "getString"

    :try_start_e3
    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "net.hostname"

    aput-object v7, v6, v2

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_fe} :catch_137

    if-eqz v5, :cond_138

    :try_start_100
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_104} :catch_135

    if-nez v6, :cond_138

    :try_start_106
    const-string v6, "MD5"

    .line 13
    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v7, 0x0

    :goto_11d
    array-length v8, v5

    if-ge v7, v8, :cond_12e

    aget-byte v8, v5, v7

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_11d

    :cond_12e
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_132
    .catchall {:try_start_106 .. :try_end_132} :catchall_133

    goto :goto_138

    :catchall_133
    move-object v5, v1

    goto :goto_138

    :catch_135
    nop

    goto :goto_138

    :catch_137
    move-object v5, v4

    :cond_138
    :goto_138
    const-string v6, "hostname"

    .line 14
    invoke-virtual {p2, v6, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "sdk_version"

    const-string v6, "1.4.1"

    invoke-virtual {p2, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez p1, :cond_148

    move-object v5, v4

    goto :goto_14c

    .line 15
    :cond_148
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    :goto_14c
    const-string v6, "package_name"

    .line 16
    invoke-virtual {p2, v6, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "sdk_type"

    const-string v6, "Android"

    invoke-virtual {p2, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    invoke-static {p1}, Lcom/umeng/umzid/a;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "uuid"

    if-eqz v5, :cond_165

    invoke-interface {v5, v6, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_166

    :cond_165
    move-object v5, v1

    .line 18
    :goto_166
    invoke-virtual {p2, v6, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "source_id"

    const-string v6, "umeng"

    invoke-virtual {p2, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    :try_start_170
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_17e
    .catch Ljava/lang/Exception; {:try_start_170 .. :try_end_17e} :catch_17f

    goto :goto_184

    :catch_17f
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v4

    :goto_184
    const-string v6, "app_version"

    .line 20
    invoke-virtual {p2, v6, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    :try_start_189
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_1a1
    .catch Ljava/lang/Exception; {:try_start_189 .. :try_end_1a1} :catch_1a2

    goto :goto_1a7

    :catch_1a2
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v4

    :goto_1a7
    const-string v6, "app_name"

    .line 22
    invoke-virtual {p2, v6, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    :try_start_1ac
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5
    :try_end_1ba
    .catch Ljava/lang/Exception; {:try_start_1ac .. :try_end_1ba} :catch_1bb

    goto :goto_1c0

    :catch_1bb
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v4

    :goto_1c0
    const-string v6, "country"

    .line 24
    invoke-virtual {p2, v6, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "appkey"

    if-eqz p1, :cond_1d3

    .line 25
    invoke-static {p1}, Lcom/umeng/umzid/a;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    if-eqz v6, :cond_1d3

    invoke-interface {v6, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 26
    :cond_1d3
    invoke-virtual {p2, v5, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    :try_start_1d6
    sget-object v4, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->UNKNOW:Ljava/lang/String;
    :try_end_1d8
    .catchall {:try_start_1d6 .. :try_end_1d8} :catchall_1fa

    const-string v4, "getIdfa"

    :try_start_1da
    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_1fa

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {v4, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1fa

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1fa

    check-cast p1, Ljava/lang/String;
    :try_end_1f9
    .catchall {:try_start_1da .. :try_end_1f9} :catchall_1fa

    move-object v1, p1

    :catchall_1fa
    :cond_1fa
    const-string p1, "gaid"

    .line 28
    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p2
.end method

.method public declared-synchronized getZID(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    monitor-enter p0

    if-nez p1, :cond_7

    :try_start_3
    const-string p1, ""
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_23

    monitor-exit p0

    return-object p1

    :cond_7
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/umzid/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    new-instance v0, Lcom/umeng/umzid/ZIDManager$c;

    invoke-direct {v0, p0, p1}, Lcom/umeng/umzid/ZIDManager$c;-><init>(Lcom/umeng/umzid/ZIDManager;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/umeng/umzid/b;->a(Ljava/lang/Runnable;)V

    const-string p1, ""
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_23

    monitor-exit p0

    return-object p1

    :cond_21
    monitor-exit p0

    return-object v0

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Lcom/umeng/umzid/IZIDCompletionCallback;)V
    .registers 7

    monitor-enter p0

    if-nez p1, :cond_e

    if-eqz p3, :cond_c

    :try_start_5
    const-string p1, "1001"

    const-string p2, "传入参数Context为null"

    invoke-interface {p3, p1, p2}, Lcom/umeng/umzid/IZIDCompletionCallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_9c

    :cond_c
    monitor-exit p0

    return-void

    :cond_e
    :try_start_e
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    if-eqz p3, :cond_1d

    const-string p1, "1003"

    const-string p2, "传入参数appkey为空"

    invoke-interface {p3, p1, p2}, Lcom/umeng/umzid/IZIDCompletionCallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_9c

    :cond_1d
    monitor-exit p0

    return-void

    :cond_1f
    :try_start_1f
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_42

    if-eqz p2, :cond_42

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_42

    invoke-static {v0}, Lcom/umeng/umzid/a;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_42

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_42

    const-string v2, "appkey"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2
    :cond_42
    invoke-static {v0}, Lcom/umeng/umzid/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5d

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4f

    goto :goto_5d

    :cond_4f
    new-instance v1, Lcom/umeng/umzid/ZIDManager$b;

    invoke-direct {v1, p0, v0}, Lcom/umeng/umzid/ZIDManager$b;-><init>(Lcom/umeng/umzid/ZIDManager;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/umeng/umzid/b;->a(Ljava/lang/Runnable;)V

    if-eqz p3, :cond_65

    invoke-interface {p3, p2}, Lcom/umeng/umzid/IZIDCompletionCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_65

    :cond_5d
    :goto_5d
    new-instance p2, Lcom/umeng/umzid/ZIDManager$a;

    invoke-direct {p2, p0, v0, p3}, Lcom/umeng/umzid/ZIDManager$a;-><init>(Lcom/umeng/umzid/ZIDManager;Landroid/content/Context;Lcom/umeng/umzid/IZIDCompletionCallback;)V

    invoke-static {p2}, Lcom/umeng/umzid/b;->a(Ljava/lang/Runnable;)V

    :cond_65
    :goto_65
    const-string p2, ""

    .line 3
    invoke-static {p1}, Lcom/umeng/umzid/a;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p3

    if-eqz p3, :cond_75

    const-string p2, "uuid"

    const-string v0, ""

    invoke-interface {p3, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4
    :cond_75
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9a

    const-string p2, ""

    .line 5
    invoke-static {p1}, Lcom/umeng/umzid/a;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p3
    :try_end_85
    .catchall {:try_start_1f .. :try_end_85} :catchall_9c

    :try_start_85
    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_89
    .catchall {:try_start_85 .. :try_end_89} :catchall_8a

    goto :goto_8b

    :catchall_8a
    nop

    :goto_8b
    if-eqz p1, :cond_9a

    :try_start_8d
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p3, "uuid"

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_9a
    .catchall {:try_start_8d .. :try_end_9a} :catchall_9c

    :cond_9a
    monitor-exit p0

    return-void

    :catchall_9c
    move-exception p1

    monitor-exit p0

    throw p1
.end method
