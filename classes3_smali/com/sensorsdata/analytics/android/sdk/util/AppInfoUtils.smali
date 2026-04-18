.class public Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;
.super Ljava/lang/Object;
.source "AppInfoUtils.java"


# static fields
.field private static mAppVersionName:Ljava/lang/String;

.field private static mConfigBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppInfoBundle(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 3

    .line 153
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->mConfigBundle:Landroid/os/Bundle;

    if-nez v0, :cond_21

    .line 155
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 158
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sput-object p0, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->mConfigBundle:Landroid/os/Bundle;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception p0

    .line 161
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 165
    :cond_21
    :goto_21
    sget-object p0, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->mConfigBundle:Landroid/os/Bundle;

    if-nez p0, :cond_2a

    .line 166
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :cond_2a
    return-object p0
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 4

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    .line 49
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 52
    invoke-virtual {p0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-object p0

    :catchall_18
    move-exception p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SA.AppInfoUtils"

    invoke-static {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 83
    :cond_5
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->mAppVersionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 84
    sget-object p0, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->mAppVersionName:Ljava/lang/String;

    return-object p0

    .line 87
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 89
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object p0, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->mAppVersionName:Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_21} :catch_22

    goto :goto_26

    :catch_22
    move-exception p0

    .line 91
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 93
    :goto_26
    sget-object p0, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->mAppVersionName:Ljava/lang/String;

    return-object p0
.end method

.method private static getCurrentProcessName()Ljava/lang/String;
    .registers 2

    .line 178
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    .line 179
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 182
    :cond_b
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->getCurrentProcessNameByCmd()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 184
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->getCurrentProcessNameByAT()Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    :cond_19
    return-object v0

    :catch_1a
    move-exception v0

    .line 188
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getCurrentProcessNameByAT()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.app.ActivityThread"

    .line 197
    const-class v2, Landroid/app/Application;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentProcessName"

    new-array v4, v3, [Ljava/lang/Class;

    .line 198
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    .line 200
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 201
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_27

    .line 202
    check-cast v1, Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_27

    move-object v0, v1

    :catchall_27
    :cond_27
    return-object v0
.end method

.method private static getCurrentProcessNameByCmd()Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "/proc/self/cmdline"

    .line 214
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_35

    const/16 v1, 0x100

    :try_start_a
    new-array v3, v1, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 218
    :goto_e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v6

    if-lez v6, :cond_1d

    if-ge v5, v1, :cond_1d

    add-int/lit8 v7, v5, 0x1

    int-to-byte v6, v6

    .line 219
    aput-byte v6, v3, v5

    move v5, v7

    goto :goto_e

    :cond_1d
    if-lez v5, :cond_2f

    .line 222
    new-instance v1, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v1, v3, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_33

    .line 229
    :try_start_26
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception v0

    .line 231
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_2e
    return-object v1

    .line 229
    :cond_2f
    :try_start_2f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_40

    :catchall_33
    nop

    goto :goto_36

    :catchall_35
    move-object v2, v0

    :goto_36
    if-eqz v2, :cond_40

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_3b} :catch_3c

    goto :goto_40

    :catch_3c
    move-exception v1

    .line 231
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_40
    :goto_40
    return-object v0
.end method

.method public static getMainProcessName(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    .line 107
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    move-exception p0

    .line 109
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    .line 68
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception p0

    .line 70
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static isMainProcess(Landroid/content/Context;Landroid/os/Bundle;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 126
    :cond_4
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->getMainProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 127
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    if-eqz p1, :cond_16

    const-string p0, "com.sensorsdata.analytics.android.MainProcessName"

    .line 128
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 131
    :cond_16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1e

    return v1

    .line 135
    :cond_1e
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->getCurrentProcessName()Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2f

    :cond_2e
    const/4 v0, 0x1

    :cond_2f
    return v0
.end method

.method public static isTaskExecuteThread()Z
    .registers 2

    .line 144
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SA.TaskExecuteThread"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
