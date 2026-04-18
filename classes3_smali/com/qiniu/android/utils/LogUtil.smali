.class public Lcom/qiniu/android/utils/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static enableDate:Z = false

.field private static enableFile:Z = true

.field private static enableFunction:Z = false

.field private static enableLog:Z = false

.field private static logLevel:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static d(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 76
    invoke-static {v0, v1, p0, v1}, Lcom/qiniu/android/utils/LogUtil;->println(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 182
    invoke-static {v0, v1, p0, v1}, Lcom/qiniu/android/utils/LogUtil;->println(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 108
    invoke-static {v0, v1, p0, v1}, Lcom/qiniu/android/utils/LogUtil;->println(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method private static println(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5

    .line 209
    invoke-static {p0, p1, p2, p3}, Lcom/qiniu/android/utils/LogUtil;->shouldLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_a4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_88

    const/4 v0, 0x3

    if-eq p0, v0, :cond_6c

    const/4 v0, 0x4

    if-eq p0, v0, :cond_50

    const/4 v0, 0x5

    if-eq p0, v0, :cond_34

    const/4 v0, 0x6

    if-eq p0, v0, :cond_18

    const/16 p0, -0x2711

    return p0

    :cond_18
    if-nez p3, :cond_27

    .line 241
    invoke-static {p1}, Lcom/qiniu/android/utils/LogUtil;->recreateLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lcom/qiniu/android/utils/LogUtil;->recreateLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 243
    :cond_27
    invoke-static {p1}, Lcom/qiniu/android/utils/LogUtil;->recreateLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lcom/qiniu/android/utils/LogUtil;->recreateLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_34
    if-nez p3, :cond_43

    .line 234
    invoke-static {p1}, Lcom/qiniu/android/utils/LogUtil;->recreateLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lcom/qiniu/android/utils/LogUtil;->recreateLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 236
    :cond_43
    invoke-static {p1}, Lcom/qiniu/android/utils/LogUtil;->recreateLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lcom/qiniu/android/utils/LogUtil;->recreateLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_50
    if-nez p3, :cond_5f

    .line 227
    invoke-static {p1}, Lcom/qiniu/android/utils/LogUtil;->recreateLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lcom/qiniu/android/utils/LogUtil;->recreateLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 229
    :cond_5f
    invoke-static {p1}, Lcom/qiniu/android/utils/LogUtil;->recreateLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lcom/qiniu/android/utils/LogUtil;->recreateLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_6c
    if-nez p3, :cond_7b

    .line 220
    invoke-static {p1}, Lcom/qiniu/android/utils/LogUtil;->recreateLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lcom/qiniu/android/utils/LogUtil;->recreateLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 222
    :cond_7b
    invoke-static {p1}, Lcom/qiniu/android/utils/LogUtil;->recreateLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lcom/qiniu/android/utils/LogUtil;->recreateLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_88
    if-nez p3, :cond_97

    .line 213
    invoke-static {p1}, Lcom/qiniu/android/utils/LogUtil;->recreateLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lcom/qiniu/android/utils/LogUtil;->recreateLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 215
    :cond_97
    invoke-static {p1}, Lcom/qiniu/android/utils/LogUtil;->recreateLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lcom/qiniu/android/utils/LogUtil;->recreateLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_a4
    const/16 p0, -0x2710

    return p0
.end method

.method private static recreateLogMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_3

    goto :goto_5

    :cond_3
    const-string p0, ""

    :goto_5
    return-object p0
.end method

.method private static recreateLogTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const-string v0, ":"

    const-string v1, ""

    if-eqz p0, :cond_16

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_17

    :cond_16
    move-object p0, v1

    .line 265
    :goto_17
    sget-boolean v2, Lcom/qiniu/android/utils/LogUtil;->enableDate:Z

    if-eqz v2, :cond_30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_31

    :cond_30
    move-object v2, v1

    .line 267
    :goto_31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 268
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 270
    array-length v4, v3

    const-string v5, "]"

    const-string v6, "[QiNiu:"

    const/4 v7, 0x5

    if-le v4, v7, :cond_d2

    aget-object v4, v3, v7

    if-eqz v4, :cond_d2

    .line 271
    aget-object v3, v3, v7

    .line 272
    sget-boolean v4, Lcom/qiniu/android/utils/LogUtil;->enableFile:Z

    if-eqz v4, :cond_7f

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_80

    :cond_7f
    move-object v4, v1

    .line 273
    :goto_80
    sget-boolean v7, Lcom/qiniu/android/utils/LogUtil;->enableFunction:Z

    const-string v8, "->"

    if-eqz v7, :cond_9d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 274
    :cond_9d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 276
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 278
    :cond_d2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static shouldLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z
    .registers 4

    .line 256
    sget-boolean p1, Lcom/qiniu/android/utils/LogUtil;->enableLog:Z

    if-eqz p1, :cond_15

    sget p1, Lcom/qiniu/android/utils/LogUtil;->logLevel:I

    if-lt p0, p1, :cond_15

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_13

    :cond_10
    if-nez p3, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x1

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x0

    return p0
.end method
