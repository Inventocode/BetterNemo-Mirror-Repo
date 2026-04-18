.class public Lcom/tencent/bugly/proguard/ab;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    if-nez p0, :cond_3

    return-object p0

    .line 738
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_a

    return-object p0

    :cond_a
    return-object v0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    if-eqz p1, :cond_8

    const/4 v0, 0x0

    .line 1399
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/io/File;)Ljava/io/BufferedReader;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_26

    .line 1290
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_26

    .line 1295
    :cond_10
    :try_start_10
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string p0, "utf-8"

    invoke-direct {v2, v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_22

    return-object v1

    :catchall_22
    move-exception p0

    .line 1300
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    :cond_26
    :goto_26
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/BufferedReader;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1317
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1b

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_1b

    .line 1321
    :cond_16
    invoke-static {v1}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/io/File;)Ljava/io/BufferedReader;

    move-result-object p0
    :try_end_1a
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_1a} :catch_1c

    return-object p0

    :cond_1b
    :goto_1b
    return-object v0

    :catch_1c
    move-exception p0

    .line 1324
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p2, 0x0

    .line 816
    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 817
    invoke-virtual {p0, p1, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x1

    .line 818
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 819
    invoke-virtual {p0, p2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    return-object p2
.end method

.method public static a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 983
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 985
    :try_start_c
    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_14

    .line 991
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_14
    move-exception p0

    .line 987
    :try_start_15
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1d

    .line 991
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const/4 p0, 0x0

    return-object p0

    :catchall_1d
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 993
    throw p0
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/ab;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILjava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "threadtime"

    const-string v1, "-v"

    const-string v2, "-d"

    const-string v3, "logcat"

    const/4 v4, 0x0

    if-nez p1, :cond_10

    .line 1004
    filled-new-array {v3, v2, v1, v0}, [Ljava/lang/String;

    move-result-object p1

    goto :goto_27

    :cond_10
    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    aput-object v3, v5, v4

    const/4 v3, 0x1

    aput-object v2, v5, v3

    const/4 v2, 0x2

    aput-object v1, v5, v2

    const/4 v1, 0x3

    aput-object v0, v5, v1

    const/4 v0, 0x4

    const-string v1, "-s"

    aput-object v1, v5, v0

    const/4 v0, 0x5

    aput-object p1, v5, v0

    move-object p1, v5

    :goto_27
    const/4 v0, 0x0

    .line 1009
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1011
    :try_start_2d
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 1012
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 1013
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1015
    :cond_43
    :goto_43
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_62

    .line 1016
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez p0, :cond_43

    .line 1017
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-le v2, p0, :cond_43

    .line 1018
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, p0

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_43

    .line 1021
    :cond_62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_66
    .catchall {:try_start_2d .. :try_end_66} :catchall_8b

    .line 1030
    :try_start_66
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_6d} :catch_6e

    goto :goto_72

    :catch_6e
    move-exception p1

    .line 1032
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1035
    :goto_72
    :try_start_72
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_79} :catch_7a

    goto :goto_7e

    :catch_7a
    move-exception p1

    .line 1037
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1040
    :goto_7e
    :try_start_7e
    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_85} :catch_86

    goto :goto_8a

    :catch_86
    move-exception p1

    .line 1042
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_8a
    return-object p0

    :catchall_8b
    move-exception p0

    .line 1023
    :try_start_8c
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_95

    .line 1024
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_95
    const-string p1, "\n[error:"

    .line 1026
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_aa
    .catchall {:try_start_8c .. :try_end_aa} :catchall_d1

    if-eqz v0, :cond_d0

    .line 1030
    :try_start_ac
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_b3} :catch_b4

    goto :goto_b8

    :catch_b4
    move-exception p1

    .line 1032
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1035
    :goto_b8
    :try_start_b8
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bf} :catch_c0

    goto :goto_c4

    :catch_c0
    move-exception p1

    .line 1037
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1040
    :goto_c4
    :try_start_c4
    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_cb} :catch_cc

    goto :goto_d0

    :catch_cc
    move-exception p1

    .line 1042
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_d0
    :goto_d0
    return-object p0

    :catchall_d1
    move-exception p0

    if-eqz v0, :cond_f8

    .line 1030
    :try_start_d4
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_db} :catch_dc

    goto :goto_e0

    :catch_dc
    move-exception p1

    .line 1032
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1035
    :goto_e0
    :try_start_e0
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e7} :catch_e8

    goto :goto_ec

    :catch_e8
    move-exception p1

    .line 1037
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1040
    :goto_ec
    :try_start_ec
    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_f3} :catch_f4

    goto :goto_f8

    :catch_f4
    move-exception p1

    .line 1042
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1045
    :cond_f8
    :goto_f8
    throw p0
.end method

.method public static a(J)Ljava/lang/String;
    .registers 5

    .line 101
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 102
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return-object p0

    .line 104
    :catch_13
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 630
    const-class v0, Lcom/tencent/bugly/proguard/ab;

    const-string v1, ""

    if-eqz p1, :cond_af

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto/16 :goto_af

    .line 633
    :cond_12
    sget-object v1, Lcom/tencent/bugly/proguard/ab;->a:Ljava/util/Map;

    if-nez v1, :cond_9b

    .line 634
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/tencent/bugly/proguard/ab;->a:Ljava/util/Map;

    const-string v1, "/system/bin/sh"

    .line 636
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_35

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->canExecute()Z

    move-result v2

    if-nez v2, :cond_37

    :cond_35
    const-string v1, "sh"

    :cond_37
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "-c"

    const/4 v4, 0x1

    aput-object v1, v2, v4

    const-string v1, "getprop"

    const/4 v5, 0x2

    aput-object v1, v2, v5

    .line 639
    invoke-static {p0, v2}, Lcom/tencent/bugly/proguard/ab;->a(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_9b

    .line 640
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9b

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Successfully get \'getprop\' list."

    .line 641
    invoke-static {v0, v2, v1}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "\\[(.+)\\]: \\[(.*)\\]"

    .line 642
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 643
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_64
    :goto_64
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_88

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 644
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 645
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_64

    .line 646
    sget-object v6, Lcom/tencent/bugly/proguard/ab;->a:Ljava/util/Map;

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_64

    :cond_88
    new-array p0, v4, [Ljava/lang/Object;

    .line 649
    sget-object v1, Lcom/tencent/bugly/proguard/ab;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v3

    const-string v1, "Systems properties number: %d."

    invoke-static {v0, v1, p0}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 652
    :cond_9b
    sget-object p0, Lcom/tencent/bugly/proguard/ab;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ac

    .line 654
    sget-object p0, Lcom/tencent/bugly/proguard/ab;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_ac
    const-string p0, "fail"

    return-object p0

    :cond_af
    :goto_af
    return-object v1
.end method

.method public static a(Ljava/io/File;IZ)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_7c

    .line 1246
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_7c

    .line 1251
    :cond_11
    :try_start_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1252
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string p0, "utf-8"

    invoke-direct {v3, v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_60

    .line 1255
    :cond_27
    :goto_27
    :try_start_27
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_51

    .line 1256
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez p1, :cond_27

    .line 1257
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-le p0, p1, :cond_27

    if-eqz p2, :cond_47

    .line 1259
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    invoke-virtual {v1, p1, p0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_51

    :cond_47
    const/4 p0, 0x0

    .line 1262
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-virtual {v1, p0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 1266
    :cond_51
    :goto_51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_55
    .catchall {:try_start_27 .. :try_end_55} :catchall_5e

    .line 1272
    :try_start_55
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_5d

    :catch_59
    move-exception p1

    .line 1277
    invoke-static {p1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    :goto_5d
    return-object p0

    :catchall_5e
    move-exception p0

    goto :goto_62

    :catchall_60
    move-exception p0

    move-object v2, v0

    .line 1269
    :goto_62
    :try_start_62
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_70

    if-eqz v2, :cond_6f

    .line 1274
    :try_start_67
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_6b

    goto :goto_6f

    :catch_6b
    move-exception p0

    .line 1277
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    :cond_6f
    :goto_6f
    return-object v0

    :catchall_70
    move-exception p0

    if-eqz v2, :cond_7b

    .line 1274
    :try_start_73
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_7b

    :catch_77
    move-exception p1

    .line 1277
    invoke-static {p1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    .line 1280
    :cond_7b
    :goto_7b
    throw p0

    :cond_7c
    :goto_7c
    return-object v0
.end method

.method public static a(Ljava/lang/Thread;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 1123
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1124
    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    .line 1125
    array-length v1, p0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_23

    aget-object v3, p0, v2

    .line 1126
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1128
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 73
    :cond_5
    :try_start_5
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 74
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 75
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-object p0

    :catchall_1b
    move-exception p0

    .line 77
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 78
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_25
    const-string p0, "fail"

    return-object p0
.end method

.method public static a(Ljava/util/Date;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 119
    :cond_4
    :try_start_4
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 120
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_12

    return-object p0

    .line 122
    :catch_12
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([B)Ljava/lang/String;
    .registers 6

    if-eqz p0, :cond_50

    .line 424
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_50

    :cond_6
    :try_start_6
    const-string v0, "SHA-1"

    .line 430
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 431
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 432
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    if-nez p0, :cond_18

    const-string p0, ""

    return-object p0

    :cond_18
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_1e
    array-length v2, p0

    if-ge v1, v2, :cond_3b

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_35

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_3b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0
    :try_end_43
    .catchall {:try_start_6 .. :try_end_43} :catchall_44

    return-object p0

    :catchall_44
    move-exception p0

    .line 434
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 435
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4e
    const/4 p0, 0x0

    return-object p0

    :cond_50
    :goto_50
    const-string p0, "NULL"

    return-object p0
.end method

.method public static a(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;
    .registers 3

    .line 1338
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1339
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1340
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    return-object v0

    :catchall_c
    move-exception p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1344
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v0

    const-string p0, "[Util] Failed to start a thread to execute task with message: %s"

    .line 1343
    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 582
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->e(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 583
    new-instance p0, Ljava/util/ArrayList;

    const-string p1, "unknown(low memory)"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    .line 587
    :cond_16
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 589
    :try_start_1c
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    .line 590
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_32
    .catchall {:try_start_1c .. :try_end_32} :catchall_6a

    .line 592
    :goto_32
    :try_start_32
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 593
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 595
    :cond_3c
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4a
    .catchall {:try_start_32 .. :try_end_4a} :catchall_67

    .line 596
    :goto_4a
    :try_start_4a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_54

    .line 597
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_53
    .catchall {:try_start_4a .. :try_end_53} :catchall_65

    goto :goto_4a

    .line 605
    :cond_54
    :try_start_54
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_5c

    :catch_58
    move-exception p1

    .line 609
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 613
    :goto_5c
    :try_start_5c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_64

    :catch_60
    move-exception p1

    .line 617
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_64
    return-object p0

    :catchall_65
    move-exception p0

    goto :goto_6d

    :catchall_67
    move-exception p0

    move-object v2, v0

    goto :goto_6d

    :catchall_6a
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    .line 600
    :goto_6d
    :try_start_6d
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_76

    .line 601
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_76
    .catchall {:try_start_6d .. :try_end_76} :catchall_8b

    :cond_76
    if-eqz v1, :cond_80

    .line 607
    :try_start_78
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_80

    :catch_7c
    move-exception p0

    .line 609
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_80
    :goto_80
    if-eqz v2, :cond_8a

    .line 615
    :try_start_82
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_8a

    :catch_86
    move-exception p0

    .line 617
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8a
    :goto_8a
    return-object v0

    :catchall_8b
    move-exception p0

    if-eqz v1, :cond_96

    .line 607
    :try_start_8e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_92

    goto :goto_96

    :catch_92
    move-exception p1

    .line 609
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_96
    :goto_96
    if-eqz v2, :cond_a0

    .line 615
    :try_start_98
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_9c

    goto :goto_a0

    :catch_9c
    move-exception p1

    .line 617
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 620
    :cond_a0
    :goto_a0
    throw p0
.end method

.method private static a(IZ)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1075
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1076
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_f

    const/4 p0, 0x0

    return-object p0

    .line 1080
    :cond_f
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    .line 1081
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 1082
    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    :cond_24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    .line 1085
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1086
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_39
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    if-eqz p1, :cond_55

    .line 1087
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    cmp-long v8, v2, v6

    if-eqz v8, :cond_39

    :cond_55
    const/4 v6, 0x0

    .line 1088
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1092
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_39

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/StackTraceElement;

    array-length v7, v7

    if-eqz v7, :cond_39

    .line 1093
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/StackTraceElement;

    array-length v8, v7

    :goto_6f
    if-ge v6, v8, :cond_a1

    aget-object v9, v7, v6

    if-lez p0, :cond_92

    .line 1097
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lt v10, p0, :cond_92

    .line 1099
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\n[Stack over limit size :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , has been cut!]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a1

    .line 1104
    :cond_92
    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_6f

    .line 1107
    :cond_a1
    :goto_a1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1108
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1107
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_39

    :cond_d7
    return-object v0
.end method

.method public static a(Landroid/os/Parcel;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation

    .line 863
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    .line 867
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 868
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "pluginNum"

    .line 869
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_20
    if-ge v5, v3, :cond_3a

    .line 871
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "pluginKey"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_3a
    const/4 v5, 0x0

    :goto_3b
    if-ge v5, v3, :cond_89

    .line 874
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "pluginVal"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "plugInId"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 875
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "plugInUUID"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 876
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "plugInVersion"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 877
    new-instance v9, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;

    invoke-direct {v9, v6, v7, v8}, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 881
    :cond_89
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne p0, v3, :cond_b6

    .line 882
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(I)V

    .line 883
    :goto_9c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v4, p0, :cond_bd

    .line 884
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-class v3, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_9c

    :cond_b6
    new-array p0, v4, [Ljava/lang/Object;

    const-string v1, "map plugin parcel error!"

    .line 887
    invoke-static {v1, p0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_bd
    return-object v0
.end method

.method public static a(ZIZ)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p2, 0x0

    if-nez p0, :cond_10

    new-array p0, p2, [Ljava/lang/Object;

    const-string p1, "get all thread stack not enable"

    .line 1058
    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1059
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    .line 1061
    :cond_10
    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/ab;->a(IZ)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_1b

    .line 1063
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :cond_1b
    return-object p0
.end method

.method public static a(Landroid/os/Parcel;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/crashreport/common/info/PlugInBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_ce

    .line 832
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_a

    goto/16 :goto_ce

    .line 836
    :cond_a
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 837
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 838
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 839
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 840
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 843
    :cond_3b
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 844
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v3, "pluginNum"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 845
    :goto_4b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6b

    .line 846
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pluginKey"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 848
    :cond_6b
    :goto_6b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_ca

    .line 849
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pluginVal"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "plugInId"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;

    iget-object v5, v5, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;->a:Ljava/lang/String;

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "plugInUUID"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;

    iget-object v5, v5, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;->c:Ljava/lang/String;

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "plugInVersion"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;

    iget-object v4, v4, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;->b:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    .line 853
    :cond_ca
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void

    :cond_ce
    :goto_ce
    const/4 p1, 0x0

    .line 833
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 795
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    .line 796
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 p1, 0x0

    .line 797
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_c

    :catch_c
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)Z
    .registers 12

    const/4 p2, 0x3

    new-array p3, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    .line 1175
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, p3, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, p3, v3

    const-string v1, "[Util] Try to lock file:%s (pid=%d | tid=%d)"

    .line 1174
    invoke-static {v1, p3}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1177
    :try_start_21
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 1178
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1179
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1180
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_60

    .line 1182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2710

    cmp-long p3, v4, v6

    if-gez p3, :cond_54

    return v0

    :cond_54
    const-string p3, "[Util] Lock file (%s) is expired, unlock it."

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v0

    .line 1187
    invoke-static {p3, v4}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1188
    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/ab;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1191
    :cond_60
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-eqz p0, :cond_84

    const-string p0, "[Util] Successfully locked file: %s (pid=%d | tid=%d)"

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    .line 1193
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v3

    .line 1192
    invoke-static {p0, p2}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v2

    :cond_84
    const-string p0, "[Util] Failed to locked file: %s (pid=%d | tid=%d)"

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    .line 1197
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v3

    .line 1196
    invoke-static {p0, p2}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_a1
    .catchall {:try_start_21 .. :try_end_a1} :catchall_a2

    return v0

    :catchall_a2
    move-exception p0

    .line 1202
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    return v0
.end method

.method private static a(Ljava/io/File;Ljava/io/File;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_5b

    if-eqz p1, :cond_5b

    .line 547
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_5b

    .line 552
    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result p0

    if-nez p0, :cond_19

    goto :goto_53

    .line 558
    :cond_19
    :try_start_19
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_30

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_30

    .line 559
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 562
    :cond_30
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_44

    .line 563
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_39
    .catchall {:try_start_19 .. :try_end_39} :catchall_3a

    goto :goto_44

    :catchall_3a
    move-exception p0

    .line 566
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 567
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 571
    :cond_44
    :goto_44
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_52

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result p0

    if-eqz p0, :cond_52

    const/4 p0, 0x1

    return p0

    :cond_52
    return v0

    :cond_53
    :goto_53
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "rqdp{  !sFile.exists() || !sFile.canRead(),pls check ,return!}"

    .line 553
    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    :cond_5b
    :goto_5b
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "rqdp{  err ZF 1R!}"

    .line 548
    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0
.end method

.method public static a(Ljava/io/File;Ljava/io/File;I)Z
    .registers 9

    const-string p2, "rqdp{  ZF end}"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "rqdp{  ZF start}"

    .line 492
    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 493
    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_11

    return v0

    :cond_11
    const/4 v1, 0x0

    .line 500
    :try_start_12
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_6e

    .line 501
    :try_start_17
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_6a

    const/16 p1, 0x8

    .line 502
    :try_start_28
    invoke-virtual {v3, p1}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    .line 503
    new-instance p1, Ljava/util/zip/ZipEntry;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v3, p1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/16 p0, 0x1388

    const/16 p1, 0x3e8

    .line 506
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 507
    new-array p0, p0, [B

    .line 509
    :goto_41
    invoke-virtual {v2, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    if-lez p1, :cond_4b

    .line 510
    invoke-virtual {v3, p0, v0, p1}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_41

    .line 512
    :cond_4b
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 513
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_51
    .catchall {:try_start_28 .. :try_end_51} :catchall_68

    .line 514
    :try_start_51
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_59

    :catch_55
    move-exception p0

    .line 525
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 529
    :goto_59
    :try_start_59
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_61

    :catch_5d
    move-exception p0

    .line 533
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_61
    new-array p0, v0, [Ljava/lang/Object;

    .line 536
    invoke-static {p2, p0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :catchall_68
    move-exception p0

    goto :goto_6c

    :catchall_6a
    move-exception p0

    move-object v3, v1

    :goto_6c
    move-object v1, v2

    goto :goto_70

    :catchall_6e
    move-exception p0

    move-object v3, v1

    .line 516
    :goto_70
    :try_start_70
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_79

    .line 517
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_79
    .catchall {:try_start_70 .. :try_end_79} :catchall_93

    :cond_79
    if-eqz v1, :cond_83

    .line 523
    :try_start_7b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_83

    :catch_7f
    move-exception p0

    .line 525
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_83
    :goto_83
    if-eqz v3, :cond_8d

    .line 531
    :try_start_85
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_89

    goto :goto_8d

    :catch_89
    move-exception p0

    .line 533
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8d
    :goto_8d
    new-array p0, v0, [Ljava/lang/Object;

    .line 536
    invoke-static {p2, p0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    :catchall_93
    move-exception p0

    if-eqz v1, :cond_9e

    .line 523
    :try_start_96
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_9a

    goto :goto_9e

    :catch_9a
    move-exception p1

    .line 525
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_9e
    :goto_9e
    if-eqz v3, :cond_a8

    .line 531
    :try_start_a0
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_a4

    goto :goto_a8

    :catch_a4
    move-exception p1

    .line 533
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_a8
    :goto_a8
    new-array p1, v0, [Ljava/lang/Object;

    .line 536
    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 537
    throw p0
.end method

.method public static a(Ljava/lang/Runnable;)Z
    .registers 4

    if-eqz p0, :cond_27

    .line 1357
    invoke-static {}, Lcom/tencent/bugly/proguard/x;->a()Lcom/tencent/bugly/proguard/x;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1359
    invoke-virtual {v0, p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Runnable;)Z

    move-result p0

    return p0

    .line 1361
    :cond_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1362
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object p0

    if-eqz p0, :cond_27

    return v2

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 1

    if-eqz p0, :cond_e

    .line 678
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Landroid/os/Parcelable;)[B
    .registers 3

    .line 954
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 955
    invoke-interface {p0, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 956
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0

    .line 957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 8

    const-string p0, "rqdp{  ZF end}"

    const/4 v0, 0x0

    if-eqz p1, :cond_8e

    .line 195
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_8e

    :cond_d
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "rqdp{  ZF start}"

    .line 198
    invoke-static {v3, v2}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :try_start_15
    const-string v2, "UTF-8"

    .line 203
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 208
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 209
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 210
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v3, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2a
    .catchall {:try_start_15 .. :try_end_2a} :catchall_62

    const/16 v4, 0x8

    .line 211
    :try_start_2c
    invoke-virtual {v3, v4}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    .line 212
    new-instance v4, Ljava/util/zip/ZipEntry;

    invoke-direct {v4, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v3, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/16 p2, 0x400

    new-array p2, p2, [B

    .line 216
    :goto_3b
    invoke-virtual {v2, p2}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_45

    .line 222
    invoke-virtual {v3, p2, v1, v4}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_3b

    .line 224
    :cond_45
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 225
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 226
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 227
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_52
    .catchall {:try_start_2c .. :try_end_52} :catchall_60

    .line 234
    :try_start_52
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_5a

    :catch_56
    move-exception p2

    .line 246
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :goto_5a
    new-array p2, v1, [Ljava/lang/Object;

    .line 249
    invoke-static {p0, p2}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object p1

    :catchall_60
    move-exception p1

    goto :goto_64

    :catchall_62
    move-exception p1

    move-object v3, v0

    .line 229
    :goto_64
    :try_start_64
    invoke-static {p1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_6d

    .line 230
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6d
    .catchall {:try_start_64 .. :try_end_6d} :catchall_7d

    :cond_6d
    if-eqz v3, :cond_77

    .line 244
    :try_start_6f
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_77

    :catch_73
    move-exception p1

    .line 246
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_77
    :goto_77
    new-array p1, v1, [Ljava/lang/Object;

    .line 249
    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v0

    :catchall_7d
    move-exception p1

    if-eqz v3, :cond_88

    .line 244
    :try_start_80
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_84

    goto :goto_88

    :catch_84
    move-exception p2

    .line 246
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_88
    :goto_88
    new-array p2, v1, [Ljava/lang/Object;

    .line 249
    invoke-static {p0, p2}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 250
    throw p1

    :cond_8e
    :goto_8e
    return-object v0
.end method

.method public static a([BI)[B
    .registers 5

    if-nez p0, :cond_3

    return-object p0

    :cond_3
    const/4 p1, 0x2

    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 266
    array-length v2, p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Gzip"

    aput-object v2, v0, v1

    const-string v1, "[Util] Zip %d bytes data with type %s"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 273
    :try_start_19
    invoke-static {p1}, Lcom/tencent/bugly/proguard/ae;->a(I)Lcom/tencent/bugly/proguard/af;

    move-result-object p1

    if-nez p1, :cond_20

    return-object v0

    .line 278
    :cond_20
    invoke-interface {p1, p0}, Lcom/tencent/bugly/proguard/af;->a([B)[B

    move-result-object p0
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_25

    return-object p0

    :catchall_25
    move-exception p0

    .line 282
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_2f

    .line 283
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2f
    return-object v0
.end method

.method public static b()J
    .registers 4

    .line 383
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    .line 387
    div-long/2addr v0, v2

    mul-long v0, v0, v2

    .line 388
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1f

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0

    :catchall_1f
    move-exception v0

    .line 390
    invoke-static {v0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 391
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_29
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static b([B)J
    .registers 5

    const-wide/16 v0, -0x1

    if-nez p0, :cond_5

    return-wide v0

    .line 724
    :cond_5
    :try_start_5
    new-instance v2, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_10} :catch_11

    return-wide v0

    :catch_11
    move-exception p0

    .line 726
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    return-wide v0
.end method

.method public static b(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 754
    :cond_5
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 755
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 756
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 757
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 758
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/os/Parcel;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 926
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    const-string v1, "keys"

    .line 932
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "values"

    .line 933
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz v1, :cond_40

    if-eqz p0, :cond_40

    .line 935
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_40

    .line 936
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 937
    :goto_2c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_47

    .line 938
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_40
    new-array p0, v2, [Ljava/lang/Object;

    const-string v1, "map parcel error!"

    .line 941
    invoke-static {v1, p0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_47
    return-object v0
.end method

.method public static b(J)V
    .registers 2

    .line 665
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 667
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void
.end method

.method public static b(Landroid/os/Parcel;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4d

    .line 900
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_9

    goto :goto_4d

    .line 905
    :cond_9
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 907
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 908
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 909
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 910
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 913
    :cond_3a
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "keys"

    .line 914
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "values"

    .line 915
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 916
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void

    :cond_4d
    :goto_4d
    const/4 p1, 0x0

    .line 901
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    .line 694
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 695
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_1d

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1d

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 696
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1d
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1411
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->E:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1f

    .line 1412
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->E:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1f
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 1214
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v1, v5

    const-string v3, "[Util] Try to unlock file: %s (pid=%d | tid=%d)"

    .line 1213
    invoke-static {v3, v1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1216
    :try_start_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 1217
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1218
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1219
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_69

    .line 1220
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_68

    const-string p0, "[Util] Successfully unlocked file: %s (pid=%d | tid=%d)"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 1222
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v5

    .line 1221
    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_67
    .catchall {:try_start_21 .. :try_end_67} :catchall_6a

    return v4

    :cond_68
    return v2

    :cond_69
    return v4

    :catchall_6a
    move-exception p0

    .line 1232
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    return v2
.end method

.method public static b([BI)[B
    .registers 6

    if-nez p0, :cond_3

    return-object p0

    :cond_3
    const/4 p1, 0x2

    new-array v0, p1, [Ljava/lang/Object;

    .line 301
    array-length v1, p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v3, "Gzip"

    aput-object v3, v0, v1

    const-string v1, "[Util] Unzip %d bytes data with type %s"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 308
    :try_start_19
    invoke-static {p1}, Lcom/tencent/bugly/proguard/ae;->a(I)Lcom/tencent/bugly/proguard/af;

    move-result-object p1

    if-nez p1, :cond_20

    return-object v0

    .line 313
    :cond_20
    invoke-interface {p1, p0}, Lcom/tencent/bugly/proguard/af;->b([B)[B

    move-result-object p0
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_25

    return-object p0

    :catchall_25
    move-exception p0

    .line 317
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_42

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Not in GZIP format"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 318
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_4b

    .line 320
    :cond_42
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_4b

    .line 321
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4b
    :goto_4b
    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1424
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->E:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_19

    .line 1425
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->E:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_19
    const-string p0, ""

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_10

    .line 1377
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_10

    const/4 v2, 0x0

    goto :goto_11

    :cond_10
    const/4 v2, 0x1

    :goto_11
    if-eqz v2, :cond_14

    return v1

    .line 1380
    :cond_14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xff

    if-le v2, v3, :cond_26

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    const-string p0, "URL(%s)\'s length is larger than 255."

    .line 1381
    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v1

    .line 1384
    :cond_26
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3c

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    const-string p0, "URL(%s) is not start with \"http\"."

    .line 1385
    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v1

    :cond_3c
    return v0
.end method

.method public static c(J)[B
    .registers 3

    .line 705
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "utf-8"

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    move-exception p0

    .line 707
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
