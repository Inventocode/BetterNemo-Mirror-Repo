.class public Lcom/umeng/commonsdk/statistics/common/MLog;
.super Ljava/lang/Object;
.source "MLog.java"


# static fields
.field public static DEBUG:Z = false

.field private static final LEVEL_DEBUG:I = 0x2

.field private static final LEVEL_ERROR:I = 0x5

.field private static final LEVEL_INFO:I = 0x3

.field private static final LEVEL_VERBOSE:I = 0x1

.field private static final LEVEL_WARN:I = 0x4

.field private static LOG_MAXLENGTH:I = 0x7d0

.field private static TAG:Ljava/lang/String; = "MobclickAgent"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 3

    .line 225
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 249
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    .line 250
    invoke-static {v0, p0, p1, p2}, Lcom/umeng/commonsdk/statistics/common/MLog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 210
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    :try_start_0
    const-string v0, ""

    const-string v1, "%"

    .line 107
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 108
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 109
    sget-object p1, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    invoke-static {p1, p0, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2e

    :cond_1e
    if-eqz p1, :cond_26

    const/4 v0, 0x0

    .line 112
    aget-object p1, p1, v0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 114
    :cond_26
    invoke-static {p0, v0, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception p0

    .line 118
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :goto_2e
    return-void
.end method

.method public static d(Ljava/lang/Throwable;)V
    .registers 3

    .line 188
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs d(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 49
    :try_start_0
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 50
    sget-object p1, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    goto :goto_18

    :catchall_14
    move-exception p0

    .line 52
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :goto_18
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 3

    .line 237
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 267
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    .line 268
    invoke-static {v0, p0, p1, p2}, Lcom/umeng/commonsdk/statistics/common/MLog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 214
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    :try_start_0
    const-string v0, ""

    const-string v1, "%"

    .line 125
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 126
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 127
    sget-object p1, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    invoke-static {p1, p0, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2e

    :cond_1e
    if-eqz p1, :cond_26

    const/4 v0, 0x0

    .line 130
    aget-object p1, p1, v0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 132
    :cond_26
    invoke-static {p0, v0, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception p0

    .line 135
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :goto_2e
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .registers 3

    .line 192
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs e(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 59
    :try_start_0
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 60
    sget-object p1, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    goto :goto_18

    :catchall_14
    move-exception p0

    .line 62
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :goto_18
    return-void
.end method

.method public static getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 371
    :try_start_1
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_22

    .line 372
    :try_start_6
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_1f

    .line 373
    :try_start_b
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 374
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 375
    invoke-virtual {v1}, Ljava/io/StringWriter;->flush()V

    .line 376
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_20

    .line 381
    :try_start_18
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1b

    .line 386
    :catchall_1b
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    goto :goto_31

    :catchall_1f
    move-object v2, v0

    :catchall_20
    move-object v0, v1

    goto :goto_23

    :catchall_22
    move-object v2, v0

    :goto_23
    if-eqz v0, :cond_2a

    .line 381
    :try_start_25
    invoke-virtual {v0}, Ljava/io/StringWriter;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_2a

    :catchall_29
    nop

    :cond_2a
    :goto_2a
    if-eqz v2, :cond_2f

    .line 386
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    :cond_2f
    const-string p0, ""

    :goto_31
    return-object p0
.end method

.method public static i(Ljava/lang/String;)V
    .registers 3

    .line 229
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 255
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    .line 256
    invoke-static {v0, p0, p1, p2}, Lcom/umeng/commonsdk/statistics/common/MLog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 198
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    :try_start_0
    const-string v0, ""

    const-string v1, "%"

    .line 90
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 91
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 92
    sget-object p1, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    invoke-static {p1, p0, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2e

    :cond_1e
    if-eqz p1, :cond_26

    const/4 v0, 0x0

    .line 95
    aget-object p1, p1, v0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 97
    :cond_26
    invoke-static {p0, v0, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception p0

    .line 100
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :goto_2e
    return-void
.end method

.method public static i(Ljava/lang/Throwable;)V
    .registers 3

    .line 176
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs i(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 39
    :try_start_0
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 40
    sget-object p1, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    goto :goto_18

    :catchall_14
    move-exception p0

    .line 42
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :goto_18
    return-void
.end method

.method private static print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 15

    .line 281
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v0, :cond_86

    .line 282
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 284
    sget v6, Lcom/umeng/commonsdk/statistics/common/MLog;->LOG_MAXLENGTH:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_13
    const/16 v9, 0x64

    if-ge v7, v9, :cond_86

    if-le v0, v6, :cond_54

    if-eq p0, v5, :cond_44

    if-eq p0, v4, :cond_3c

    if-eq p0, v3, :cond_34

    if-eq p0, v2, :cond_2c

    if-eq p0, v1, :cond_24

    goto :goto_4b

    .line 296
    :cond_24
    invoke-virtual {p2, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 302
    :cond_2c
    invoke-virtual {p2, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 293
    :cond_34
    invoke-virtual {p2, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 290
    :cond_3c
    invoke-virtual {p2, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 299
    :cond_44
    invoke-virtual {p2, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :goto_4b
    sget v8, Lcom/umeng/commonsdk/statistics/common/MLog;->LOG_MAXLENGTH:I

    add-int/2addr v8, v6

    add-int/lit8 v7, v7, 0x1

    move v10, v8

    move v8, v6

    move v6, v10

    goto :goto_13

    :cond_54
    if-eq p0, v5, :cond_7f

    if-eq p0, v4, :cond_77

    if-eq p0, v3, :cond_6f

    if-eq p0, v2, :cond_67

    if-eq p0, v1, :cond_5f

    goto :goto_86

    .line 319
    :cond_5f
    invoke-virtual {p2, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    .line 325
    :cond_67
    invoke-virtual {p2, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    .line 316
    :cond_6f
    invoke-virtual {p2, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    .line 313
    :cond_77
    invoke-virtual {p2, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    .line 322
    :cond_7f
    invoke-virtual {p2, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    :goto_86
    if-eqz p3, :cond_b0

    .line 337
    invoke-static {p3}, Lcom/umeng/commonsdk/statistics/common/MLog;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 338
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_b0

    if-eq p0, v5, :cond_ad

    if-eq p0, v4, :cond_a9

    if-eq p0, v3, :cond_a5

    if-eq p0, v2, :cond_a1

    if-eq p0, v1, :cond_9d

    goto :goto_b0

    .line 347
    :cond_9d
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0

    .line 353
    :cond_a1
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0

    .line 344
    :cond_a5
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0

    .line 341
    :cond_a9
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0

    .line 350
    :cond_ad
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b0
    :goto_b0
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .registers 3

    .line 221
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 243
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 244
    invoke-static {v0, p0, p1, p2}, Lcom/umeng/commonsdk/statistics/common/MLog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 202
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    :try_start_0
    const-string v0, ""

    const-string v1, "%"

    .line 142
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 143
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 144
    sget-object p1, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    invoke-static {p1, p0, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2e

    :cond_1e
    if-eqz p1, :cond_26

    const/4 v0, 0x0

    .line 147
    aget-object p1, p1, v0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 149
    :cond_26
    invoke-static {p0, v0, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception p0

    .line 152
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :goto_2e
    return-void
.end method

.method public static v(Ljava/lang/Throwable;)V
    .registers 3

    .line 180
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs v(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 69
    :try_start_0
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 70
    sget-object p1, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/umeng/commonsdk/statistics/common/MLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    goto :goto_18

    :catchall_14
    move-exception p0

    .line 72
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :goto_18
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 3

    .line 233
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 261
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    .line 262
    invoke-static {v0, p0, p1, p2}, Lcom/umeng/commonsdk/statistics/common/MLog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 206
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    :try_start_0
    const-string v0, ""

    const-string v1, "%"

    .line 159
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 160
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 161
    sget-object p1, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    invoke-static {p1, p0, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2e

    :cond_1e
    if-eqz p1, :cond_26

    const/4 v0, 0x0

    .line 164
    aget-object p1, p1, v0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 166
    :cond_26
    invoke-static {p0, v0, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception p0

    .line 170
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :goto_2e
    return-void
.end method

.method public static w(Ljava/lang/Throwable;)V
    .registers 3

    .line 184
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs w(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 79
    :try_start_0
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 80
    sget-object p1, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    goto :goto_18

    :catchall_14
    move-exception p0

    .line 82
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :goto_18
    return-void
.end method
