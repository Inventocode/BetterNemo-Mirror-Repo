.class public final Lcom/tencent/bugly/crashreport/crash/jni/b;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_a2

    if-eqz p1, :cond_a2

    if-nez p2, :cond_a

    goto/16 :goto_a2

    .line 248
    :cond_a
    new-instance v2, Ljava/io/File;

    const-string v3, "rqd_record.eup"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_a1

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result p1

    if-nez p1, :cond_1f

    goto/16 :goto_a1

    .line 255
    :cond_1f
    :try_start_1f
    new-instance p1, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_29} :catch_84
    .catchall {:try_start_1f .. :try_end_29} :catchall_82

    .line 256
    :try_start_29
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6e

    const-string v4, "NATIVE_RQD_REPORT"

    .line 257
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    goto :goto_6e

    .line 262
    :cond_39
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :goto_3e
    move-object v4, v1

    .line 265
    :goto_3f
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4d

    if-nez v4, :cond_49

    move-object v4, v5

    goto :goto_3f

    .line 269
    :cond_49
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    :cond_4d
    if-eqz v4, :cond_61

    const-string p0, "record not pair! drop! %s"

    new-array p2, v3, [Ljava/lang/Object;

    aput-object v4, p2, v0

    .line 274
    invoke-static {p0, p2}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_58} :catch_80
    .catchall {:try_start_29 .. :try_end_58} :catchall_94

    .line 275
    :try_start_58
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_60

    :catch_5c
    move-exception p0

    .line 287
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_60
    return-object v1

    .line 278
    :cond_61
    :try_start_61
    invoke-static {p0, v2, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Landroid/content/Context;Ljava/util/Map;Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    move-result-object p0
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_65} :catch_80
    .catchall {:try_start_61 .. :try_end_65} :catchall_94

    .line 283
    :try_start_65
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    goto :goto_6d

    :catch_69
    move-exception p1

    .line 287
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_6d
    return-object p0

    :cond_6e
    :goto_6e
    :try_start_6e
    const-string p0, "record read fail! %s"

    new-array p2, v3, [Ljava/lang/Object;

    aput-object v2, p2, v0

    .line 258
    invoke-static {p0, p2}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_77} :catch_80
    .catchall {:try_start_6e .. :try_end_77} :catchall_94

    .line 259
    :try_start_77
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b

    goto :goto_7f

    :catch_7b
    move-exception p0

    .line 287
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_7f
    return-object v1

    :catch_80
    move-exception p0

    goto :goto_86

    :catchall_82
    move-exception p0

    goto :goto_96

    :catch_84
    move-exception p0

    move-object p1, v1

    .line 280
    :goto_86
    :try_start_86
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_94

    if-eqz p1, :cond_93

    .line 285
    :try_start_8b
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_8f

    goto :goto_93

    :catch_8f
    move-exception p0

    .line 287
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_93
    :goto_93
    return-object v1

    :catchall_94
    move-exception p0

    move-object v1, p1

    :goto_96
    if-eqz v1, :cond_a0

    .line 285
    :try_start_98
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_9c

    goto :goto_a0

    :catch_9c
    move-exception p1

    .line 287
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 290
    :cond_a0
    :goto_a0
    throw p0

    :cond_a1
    :goto_a1
    return-object v1

    :cond_a2
    :goto_a2
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "get eup record file args error"

    .line 244
    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v1
.end method

.method private static a(Landroid/content/Context;Ljava/util/Map;Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;",
            ")",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "unknown"

    const-string v2, "intStateStr"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_c

    :goto_a
    const/4 v5, 0x0

    goto :goto_37

    .line 99
    :cond_c
    invoke-static/range {p0 .. p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v5

    if-nez v5, :cond_1a

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "abnormal com info not created"

    invoke-static {v6, v5}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_a

    :cond_1a
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_2f

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 v5, 0x1

    goto :goto_37

    :cond_2f
    :goto_2f
    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "no intStateStr"

    invoke-static {v6, v5}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_a

    :goto_37
    const/4 v6, 0x0

    if-nez v5, :cond_3b

    return-object v6

    .line 103
    :cond_3b
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_59

    new-array v1, v3, [Ljava/lang/Object;

    .line 105
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    const-string v0, "parse intSateMap fail"

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v6

    :cond_59
    :try_start_59
    const-string v5, "sino"

    .line 111
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    const-string v5, "sud"

    .line 112
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    const-string v5, "soVersion"

    .line 114
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v20, v5

    check-cast v20, Ljava/lang/String;

    .line 115
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_87

    const-string v0, "error format at version"

    new-array v1, v4, [Ljava/lang/Object;

    .line 116
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v6

    :cond_87
    const-string v5, "codeMsg"

    .line 120
    invoke-static {v0, v5, v1}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "signalName"

    .line 121
    invoke-static {v0, v7, v1}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "errnoMsg"

    .line 123
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "stack"

    .line 125
    invoke-static {v0, v8, v1}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "jstack"

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_c2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "java:\n"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_c2
    const-string v9, "sico"

    .line 130
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;
    :try_end_ca
    .catchall {:try_start_59 .. :try_end_ca} :catchall_23e

    const-string v10, ")"

    const-string v11, "("

    if-eqz v9, :cond_f0

    .line 132
    :try_start_d0
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_f0

    .line 135
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "KERNEL"

    move-object v12, v5

    move-object v15, v7

    goto :goto_f2

    :cond_f0
    move-object v15, v5

    move-object v12, v7

    :goto_f2
    const-string v5, "nativeLog"

    .line 141
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_10b

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_10b

    const-string v7, "BuglyNativeLog.txt"

    invoke-static {v6, v5, v7}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    move-object/from16 v21, v5

    goto :goto_10d

    :cond_10b
    move-object/from16 v21, v6

    :goto_10d
    const-string v5, "sendingProcess"

    .line 143
    invoke-static {v0, v5, v1}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "spd"

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_134

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_134
    move-object/from16 v16, v5

    const-string v5, "threadName"

    .line 145
    invoke-static {v0, v5, v1}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "et"

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_15d

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_15d
    move-object v9, v5

    const-string v5, "processName"

    .line 147
    invoke-static {v0, v5, v1}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "ep"

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_185

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 149
    :cond_185
    invoke-static/range {p1 .. p1}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v22

    const-string v7, "ets"

    .line 150
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v10, v7

    const-string v7, "etms"

    .line 151
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v13, v2

    const-wide/16 v17, 0x3e8

    mul-long v10, v10, v17

    .line 152
    div-long v13, v13, v17

    add-long/2addr v10, v13

    const-string v2, "errorAddr"

    .line 154
    invoke-static {v0, v2, v1}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Ljava/lang/String;

    .line 155
    invoke-static {v8}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v2, "sysLogPath"

    .line 157
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Ljava/lang/String;

    const-string v2, "jniLogPath"

    .line 158
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Ljava/lang/String;

    const-string v2, "tombPath"

    .line 160
    invoke-static {v0, v2, v1}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Ljava/lang/String;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v7, p2

    move-object v8, v5

    .line 161
    invoke-interface/range {v7 .. v24}, Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;->packageCrashDatas(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;ZZ)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    move-result-object v1

    if-eqz v1, :cond_23d

    const-string v2, "userId"

    .line 165
    iget-object v5, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    invoke-static {v0, v2, v5}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    const-string v5, "[Native record info] userId: %s"

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v2, v7, v4

    .line 166
    invoke-static {v5, v7}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v2, "sysLog"

    .line 168
    iget-object v5, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    invoke-static {v0, v2, v5}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    const-string v5, "appVersion"

    .line 169
    invoke-static {v0, v5, v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    const-string v5, "[Native record info] appVersion: %s"

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v2, v7, v4

    .line 170
    invoke-static {v5, v7}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v2, "isAppForeground"

    .line 173
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_230

    const-string v5, "[Native record info] isAppForeground: %s"

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v2, v7, v4

    invoke-static {v5, v7}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v5, "true"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_231

    :cond_230
    const/4 v2, 0x0

    :goto_231
    iput-boolean v2, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Q:Z

    .line 175
    invoke-static/range {p1 .. p1}, Lcom/tencent/bugly/crashreport/crash/jni/b;->b(Ljava/util/Map;)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->P:J

    .line 177
    iput-object v6, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/util/Map;

    .line 178
    iput-boolean v3, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->k:Z
    :try_end_23d
    .catchall {:try_start_d0 .. :try_end_23d} :catchall_23e

    :cond_23d
    return-object v1

    :catchall_23e
    move-exception v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "error format"

    .line 182
    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 183
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v6
.end method

.method private static a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<KeyT:",
            "Ljava/lang/Object;",
            "ValueT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TKeyT;TValueT;>;TKeyT;TValueT;)TValueT;"
        }
    .end annotation

    .line 200
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_7

    if-eqz p0, :cond_b

    return-object p0

    :catch_7
    move-exception p0

    .line 205
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    :cond_b
    return-object p2
.end method

.method private static a(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 219
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_2d

    .line 221
    :goto_b
    :try_start_b
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_27

    if-nez v2, :cond_23

    .line 223
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const-string v3, "UTf-8"

    invoke-direct {p0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_2b

    .line 230
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p0

    .line 225
    :cond_23
    :try_start_23
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2b

    goto :goto_b

    .line 230
    :cond_27
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_37

    :catchall_2b
    move-exception p0

    goto :goto_2f

    :catchall_2d
    move-exception p0

    move-object v1, v0

    .line 228
    :goto_2f
    :try_start_2f
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_38

    if-eqz v1, :cond_37

    .line 231
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_37
    :goto_37
    return-object v0

    :catchall_38
    move-exception p0

    if-eqz v1, :cond_3e

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 233
    :cond_3e
    throw p0
.end method

.method protected static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    const-string v0, "\n"

    .line 79
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 80
    array-length v2, v1

    if-nez v2, :cond_11

    goto :goto_31

    .line 84
    :cond_11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    array-length v2, v1

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_2d

    aget-object v4, v1, v3

    const-string v5, "java.lang.Thread.getStackTrace("

    .line 86
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 87
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 90
    :cond_2d
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_31
    :goto_31
    return-object p0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    if-eqz p0, :cond_ef

    if-gtz p1, :cond_7

    goto/16 :goto_ef

    .line 490
    :cond_7
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 491
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_ef

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_1a

    goto/16 :goto_ef

    :cond_1a
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 494
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    .line 495
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "Read system log from native record file(length: %s bytes): %s"

    .line 494
    invoke-static {v3, v2}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 496
    sget-object v2, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "Add this record file to list for cleaning lastly."

    .line 497
    invoke-static {v3, v2}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-nez p2, :cond_4d

    .line 500
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p1, p3}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/io/File;IZ)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_e2

    .line 503
    :cond_4d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 505
    :try_start_52
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v1, "utf-8"

    invoke-direct {v3, v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_63
    .catchall {:try_start_52 .. :try_end_63} :catchall_bb

    .line 508
    :cond_63
    :goto_63
    :try_start_63
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ab

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "[ ]*:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 511
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_90

    .line 512
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_90
    if-lez p1, :cond_63

    .line 514
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-le v0, p1, :cond_63

    if-eqz p3, :cond_a2

    .line 516
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_ab

    .line 519
    :cond_a2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v4, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_63

    .line 523
    :cond_ab
    :goto_ab
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_af
    .catchall {:try_start_63 .. :try_end_af} :catchall_b8

    .line 529
    :try_start_af
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b2} :catch_b3

    goto :goto_e2

    :catch_b3
    move-exception p1

    .line 534
    invoke-static {p1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    goto :goto_e2

    :catchall_b8
    move-exception p1

    move-object v0, v2

    goto :goto_bc

    :catchall_bb
    move-exception p1

    .line 526
    :goto_bc
    :try_start_bc
    invoke-static {p1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    .line 527
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\n[error:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_dd
    .catchall {:try_start_bc .. :try_end_dd} :catchall_e3

    if-eqz v0, :cond_e2

    .line 531
    :try_start_df
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e2} :catch_b3

    :cond_e2
    :goto_e2
    return-object p0

    :catchall_e3
    move-exception p0

    if-eqz v0, :cond_ee

    :try_start_e6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_e9} :catch_ea

    goto :goto_ee

    :catch_ea
    move-exception p1

    .line 534
    invoke-static {p1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    .line 537
    :cond_ee
    :goto_ee
    throw p0

    :cond_ef
    :goto_ef
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p0, :cond_42

    if-nez p1, :cond_5

    goto :goto_42

    .line 386
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    invoke-static {p0, p1}, Lcom/tencent/bugly/crashreport/crash/jni/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 389
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "Register infos:\n"

    .line 390
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_1e
    invoke-static {p0, p1}, Lcom/tencent/bugly/crashreport/crash/jni/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3d

    .line 395
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3d

    .line 396
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_35

    const-string p1, "\n"

    .line 397
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_35
    const-string p1, "System SO infos:\n"

    .line 399
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    :cond_3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_42
    :goto_42
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/util/Map;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "key-value"

    .line 645
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_32

    .line 647
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "\n"

    .line 649
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 650
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v1, :cond_31

    aget-object v4, p0, v3

    const-string v5, "="

    .line 651
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 652
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2e

    .line 653
    aget-object v5, v4, v2

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_31
    return-object v0

    :cond_32
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(ZLjava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_37

    .line 458
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/util/List;

    new-instance v1, Ljava/io/File;

    const-string v2, "rqd_record.eup"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/util/List;

    new-instance v1, Ljava/io/File;

    const-string v2, "reg_record.txt"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/util/List;

    new-instance v1, Ljava/io/File;

    const-string v2, "map_record.txt"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/util/List;

    new-instance v1, Ljava/io/File;

    const-string v2, "backup_record.txt"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p0, :cond_37

    .line 464
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/crash/jni/b;->c(Ljava/lang/String;)V

    .line 467
    :cond_37
    sget-object p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/util/List;

    if-eqz p0, :cond_72

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_72

    .line 468
    sget-object p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_47
    :goto_47
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_72

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 469
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 470
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 471
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Delete record file %s"

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_47

    :cond_72
    return-void
.end method

.method private static b(Ljava/util/Map;)J
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    const-string v0, "launchTime"

    .line 682
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_24

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string v1, "[Native record info] launchTime: %s"

    .line 684
    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 686
    :try_start_15
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_19} :catch_1a

    return-wide v0

    :catch_1a
    move-exception p0

    .line 688
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 689
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_24
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 416
    :cond_4
    new-instance v1, Ljava/io/File;

    const-string v2, "backup_record.txt"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_16

    .line 418
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const-string v0, "reg_record.txt"

    .line 294
    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return-object v0

    .line 299
    :cond_a
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_67

    .line 301
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1c

    goto :goto_67

    :cond_1c
    const-string p1, "                "

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 308
    :goto_23
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6
    :try_end_27
    .catchall {:try_start_a .. :try_end_27} :catchall_70

    const-string v7, "\n"

    if-eqz v6, :cond_57

    .line 309
    :try_start_2b
    rem-int/lit8 v8, v4, 0x4

    if-nez v8, :cond_3a

    if-lez v4, :cond_34

    .line 311
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_34
    const-string v5, "  "

    .line 313
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4d

    .line 315
    :cond_3a
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x10

    if-le v7, v8, :cond_44

    const/16 v2, 0x1c

    :cond_44
    sub-int v5, v2, v5

    .line 318
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :goto_4d
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    .line 321
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 324
    :cond_57
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_5e
    .catchall {:try_start_2b .. :try_end_5e} :catchall_70

    .line 333
    :try_start_5e
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_61} :catch_62

    goto :goto_66

    :catch_62
    move-exception p0

    .line 336
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    :goto_66
    return-object p1

    .line 333
    :cond_67
    :goto_67
    :try_start_67
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_6b

    goto :goto_6f

    :catch_6b
    move-exception p0

    .line 336
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    :goto_6f
    return-object v0

    :catchall_70
    move-exception p1

    .line 328
    :try_start_71
    invoke-static {p1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_7d

    .line 333
    :try_start_74
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_78

    goto :goto_7c

    :catch_78
    move-exception p0

    .line 336
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    :goto_7c
    return-object v0

    :catchall_7d
    move-exception p1

    .line 333
    :try_start_7e
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_82

    goto :goto_86

    :catch_82
    move-exception p0

    .line 336
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    .line 339
    :goto_86
    throw p1
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "map_record.txt"

    .line 343
    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return-object v0

    .line 348
    :cond_a
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 350
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1c

    goto :goto_3d

    .line 353
    :cond_1c
    :goto_1c
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_30

    const-string v2, "  "

    .line 354
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    .line 356
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 358
    :cond_30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_46

    .line 366
    :try_start_34
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_3c

    :catch_38
    move-exception p0

    .line 369
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    :goto_3c
    return-object p1

    .line 366
    :cond_3d
    :goto_3d
    :try_start_3d
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_45

    :catch_41
    move-exception p0

    .line 369
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    :goto_45
    return-object v0

    :catchall_46
    move-exception p1

    .line 361
    :try_start_47
    invoke-static {p1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_53

    .line 366
    :try_start_4a
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_52

    :catch_4e
    move-exception p0

    .line 369
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    :goto_52
    return-object v0

    :catchall_53
    move-exception p1

    .line 366
    :try_start_54
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_5c

    :catch_58
    move-exception p0

    .line 369
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    .line 372
    :goto_5c
    throw p1
.end method

.method public static c(Ljava/lang/String;)V
    .registers 10

    if-nez p0, :cond_3

    return-void

    .line 433
    :cond_3
    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p0

    if-eqz p0, :cond_4b

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_4b

    .line 435
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_4b

    .line 437
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v0, :cond_4b

    aget-object v3, p0, v2

    .line 438
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_48

    .line 439
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    const-string v4, "Delete empty record file %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 440
    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_4c

    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_4b
    return-void

    :catchall_4c
    move-exception p0

    .line 446
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    return-void
.end method

.method private static d(Ljava/lang/String;)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 53
    :try_start_6
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, ","

    .line 54
    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 55
    array-length v5, v4

    const/4 v6, 0x0

    :goto_13
    if-ge v6, v5, :cond_3d

    aget-object v7, v4, v6

    const-string v8, ":"

    .line 56
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 57
    array-length v9, v8

    const/4 v10, 0x2

    if-eq v9, v10, :cond_2b

    const-string v3, "error format at %s"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v7, v4, v1

    .line 58
    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v0

    .line 62
    :cond_2b
    aget-object v7, v8, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 63
    aget-object v8, v8, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3a} :catch_3e

    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_3d
    return-object v3

    :catch_3e
    move-exception v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    const-string p0, "error format intStateStr %s"

    .line 68
    invoke-static {p0, v2}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method
