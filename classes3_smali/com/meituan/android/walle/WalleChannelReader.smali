.class public final Lcom/meituan/android/walle/WalleChannelReader;
.super Ljava/lang/Object;
.source "WalleChannelReader.java"


# direct methods
.method private static getApkPath(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 94
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-nez p0, :cond_8

    return-object v0

    .line 98
    :cond_8
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_a

    :catchall_a
    return-object v0
.end method

.method public static getChannel(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 25
    invoke-static {p0, v0}, Lcom/meituan/android/walle/WalleChannelReader;->getChannel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getChannel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 37
    invoke-static {p0}, Lcom/meituan/android/walle/WalleChannelReader;->getChannelInfo(Landroid/content/Context;)Lcom/meituan/android/walle/ChannelInfo;

    move-result-object p0

    if-nez p0, :cond_7

    return-object p1

    .line 41
    :cond_7
    invoke-virtual {p0}, Lcom/meituan/android/walle/ChannelInfo;->getChannel()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getChannelInfo(Landroid/content/Context;)Lcom/meituan/android/walle/ChannelInfo;
    .registers 2

    .line 52
    invoke-static {p0}, Lcom/meituan/android/walle/WalleChannelReader;->getApkPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 53
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_c
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/meituan/android/walle/ChannelReader;->get(Ljava/io/File;)Lcom/meituan/android/walle/ChannelInfo;

    move-result-object p0

    return-object p0
.end method
