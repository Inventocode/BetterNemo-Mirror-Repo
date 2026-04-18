.class public Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;,
        Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/BufferedReader;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_6
    const/4 v2, 0x3

    if-ge v1, v2, :cond_28

    .line 340
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_11

    const/4 p0, 0x0

    return-object p0

    .line 344
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 347
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static varargs a(Ljava/io/BufferedReader;[Ljava/util/regex/Pattern;)[Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_29

    if-nez p1, :cond_6

    goto :goto_29

    .line 321
    :cond_6
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 322
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v2, :cond_6

    aget-object v5, p1, v4

    .line 323
    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 324
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_26

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    aput-object v5, p0, v3

    const/4 p1, 0x1

    aput-object v1, p0, p1

    return-object p0

    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_29
    :goto_29
    return-object v0
.end method

.method private static b(Ljava/io/BufferedReader;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 356
    :goto_5
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 357
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2a

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 364
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readFirstDumpInfo(Ljava/lang/String;Z)Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p0, :cond_f

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "path:%s"

    .line 144
    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v0

    .line 147
    :cond_f
    new-instance v3, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;

    invoke-direct {v3}, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;-><init>()V

    .line 148
    new-instance v4, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$2;

    invoke-direct {v4, v3, p1}, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$2;-><init>(Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;Z)V

    invoke-static {p0, v4}, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper;->readTraceFile(Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$b;)V

    .line 187
    iget-wide p0, v3, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;->a:J

    const-wide/16 v4, 0x0

    cmp-long v6, p0, v4

    if-lez v6, :cond_2f

    iget-wide p0, v3, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;->c:J

    cmp-long v6, p0, v4

    if-lez v6, :cond_2f

    iget-object p0, v3, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;->b:Ljava/lang/String;

    if-eqz p0, :cond_2f

    return-object v3

    :cond_2f
    new-array p0, v2, [Ljava/lang/Object;

    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v3, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;->a:J

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v3, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;->c:J

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    const-string p1, "first dump error %s"

    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static readTargetDumpInfo(Ljava/lang/String;Ljava/lang/String;Z)Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_26

    if-nez p1, :cond_6

    goto :goto_26

    .line 72
    :cond_6
    new-instance v1, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;

    invoke-direct {v1}, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;-><init>()V

    .line 73
    new-instance v2, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$1;

    invoke-direct {v2, v1, p0, p2}, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$1;-><init>(Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;Ljava/lang/String;Z)V

    invoke-static {p1, v2}, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper;->readTraceFile(Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$b;)V

    .line 128
    iget-wide p0, v1, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;->a:J

    const-wide/16 v2, 0x0

    cmp-long p2, p0, v2

    if-lez p2, :cond_26

    iget-wide p0, v1, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;->c:J

    cmp-long p2, p0, v2

    if-lez p2, :cond_26

    iget-object p0, v1, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;->b:Ljava/lang/String;

    if-eqz p0, :cond_26

    return-object v1

    :cond_26
    :goto_26
    return-object v0
.end method

.method public static readTraceFile(Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$b;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    const-string v7, "\\s"

    if-eqz v0, :cond_1d6

    if-nez v6, :cond_c

    goto/16 :goto_1d6

    .line 206
    :cond_c
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_18

    return-void

    .line 212
    :cond_18
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    .line 213
    invoke-virtual {v1}, Ljava/io/File;->length()J

    const/4 v2, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 219
    :try_start_22
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v11, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2c} :catch_184
    .catchall {:try_start_22 .. :try_end_2c} :catchall_181

    :try_start_2c
    const-string v0, "-{5}\\spid\\s\\d+\\sat\\s\\d+-\\d+-\\d+\\s\\d{2}:\\d{2}:\\d{2}\\s-{5}"

    .line 224
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    const-string v0, "-{5}\\send\\s\\d+\\s-{5}"

    .line 225
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    const-string v0, "Cmd\\sline:\\s(\\S+)"

    .line 226
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    const-string v0, "\".+\"\\s(daemon\\s){0,1}prio=\\d+\\stid=\\d+\\s.*"

    .line 227
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    .line 228
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    :goto_4d
    new-array v0, v10, [Ljava/util/regex/Pattern;

    aput-object v12, v0, v9

    .line 229
    invoke-static {v11, v0}, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper;->a(Ljava/io/BufferedReader;[Ljava/util/regex/Pattern;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16a

    new-array v1, v10, [Ljava/util/regex/Pattern;

    aput-object v14, v1, v9

    .line 230
    invoke-static {v11, v1}, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper;->a(Ljava/io/BufferedReader;[Ljava/util/regex/Pattern;)[Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_78

    const-string v0, "Failed to find process name."

    new-array v1, v9, [Ljava/lang/Object;

    .line 231
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_68} :catch_17e
    .catchall {:try_start_2c .. :try_end_68} :catchall_17a

    .line 296
    :try_start_68
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c

    return-void

    :catch_6c
    move-exception v0

    move-object v1, v0

    .line 300
    invoke-static {v1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_77

    .line 301
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_77
    return-void

    .line 235
    :cond_78
    :try_start_78
    aget-object v0, v0, v10

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 236
    aget-object v2, v0, v8

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x4

    aget-object v9, v0, v16

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x5

    aget-object v0, v0, v9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    .line 240
    aget-object v0, v1, v10

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 242
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 243
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    move-wide v1, v2

    move-wide/from16 v3, v16

    move-object/from16 v16, v5

    move-object v5, v9

    .line 246
    invoke-interface/range {v0 .. v5}, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$b;->a(JJLjava/lang/String;)Z

    move-result v0
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_cb} :catch_17e
    .catchall {:try_start_78 .. :try_end_cb} :catchall_17a

    if-nez v0, :cond_dd

    .line 296
    :try_start_cd
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d0} :catch_d1

    return-void

    :catch_d1
    move-exception v0

    move-object v1, v0

    .line 300
    invoke-static {v1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_dc

    .line 301
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_dc
    return-void

    :cond_dd
    :goto_dd
    :try_start_dd
    new-array v0, v8, [Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    aput-object v15, v0, v1

    aput-object v13, v0, v10

    .line 251
    invoke-static {v11, v0}, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper;->a(Ljava/io/BufferedReader;[Ljava/util/regex/Pattern;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_165

    .line 252
    aget-object v2, v0, v1

    if-ne v2, v15, :cond_13f

    .line 254
    aget-object v0, v0, v10

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\".+\""

    .line 256
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 257
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 258
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 259
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v10

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NATIVE"

    .line 262
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    const-string v2, "tid=\\d+"

    .line 264
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 265
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 267
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    const-string v2, "="

    .line 268
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v10

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 271
    invoke-static {v11}, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v2

    .line 272
    invoke-static {v11}, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper;->b(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v3

    .line 274
    invoke-interface {v6, v1, v0, v2, v3}, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$b;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_dd

    .line 280
    :cond_13f
    aget-object v0, v0, v10

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 281
    aget-object v0, v0, v8

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 282
    invoke-interface {v6, v0, v1}, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$b;->a(J)Z

    move-result v0
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_153} :catch_17e
    .catchall {:try_start_dd .. :try_end_153} :catchall_17a

    if-nez v0, :cond_165

    .line 296
    :try_start_155
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_158
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_158} :catch_159

    return-void

    :catch_159
    move-exception v0

    move-object v1, v0

    .line 300
    invoke-static {v1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_164

    .line 301
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_164
    return-void

    :cond_165
    move-object/from16 v5, v16

    const/4 v9, 0x0

    goto/16 :goto_4d

    .line 296
    :cond_16a
    :try_start_16a
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_16d
    .catch Ljava/io/IOException; {:try_start_16a .. :try_end_16d} :catch_16e

    return-void

    :catch_16e
    move-exception v0

    move-object v1, v0

    .line 300
    invoke-static {v1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_179

    .line 301
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_179
    return-void

    :catchall_17a
    move-exception v0

    move-object v1, v0

    move-object v2, v11

    goto :goto_1c4

    :catch_17e
    move-exception v0

    move-object v2, v11

    goto :goto_185

    :catchall_181
    move-exception v0

    move-object v1, v0

    goto :goto_1c4

    :catch_184
    move-exception v0

    .line 291
    :goto_185
    :try_start_185
    invoke-static {v0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_18e

    .line 292
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_18e
    const-string v1, "trace open fail:%s : %s"

    new-array v3, v8, [Ljava/lang/Object;

    .line 294
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v10

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1b2
    .catchall {:try_start_185 .. :try_end_1b2} :catchall_181

    if-eqz v2, :cond_1c3

    .line 298
    :try_start_1b4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1b7
    .catch Ljava/io/IOException; {:try_start_1b4 .. :try_end_1b7} :catch_1b8

    return-void

    :catch_1b8
    move-exception v0

    move-object v1, v0

    .line 300
    invoke-static {v1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1c3

    .line 301
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1c3
    return-void

    :goto_1c4
    if-eqz v2, :cond_1d5

    .line 298
    :try_start_1c6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1c9
    .catch Ljava/io/IOException; {:try_start_1c6 .. :try_end_1c9} :catch_1ca

    goto :goto_1d5

    :catch_1ca
    move-exception v0

    move-object v2, v0

    .line 300
    invoke-static {v2}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1d5

    .line 301
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 305
    :cond_1d5
    :goto_1d5
    throw v1

    :cond_1d6
    :goto_1d6
    return-void
.end method
