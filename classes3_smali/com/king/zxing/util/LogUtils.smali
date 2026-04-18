.class public Lcom/king/zxing/util/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field private static isShowLog:Z = true

.field private static priority:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 3

    .line 172
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_14

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_14

    .line 173
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return-void
.end method

.method private static generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .registers 5

    .line 106
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    .line 108
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x2

    aput-object p0, v1, v0

    const-string p0, "%s.%s(L:%d)"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZXingLite"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getCallerStackLogTag()Ljava/lang/String;
    .registers 1

    const/4 v0, 0x5

    .line 131
    invoke-static {v0}, Lcom/king/zxing/util/LogUtils;->getStackTraceElement(I)Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/king/zxing/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStackTraceElement(I)Ljava/lang/StackTraceElement;
    .registers 2

    .line 123
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method private static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 1

    .line 140
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;)V
    .registers 3

    .line 193
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_14

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_14

    .line 194
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return-void
.end method

.method public static isShowLog()Z
    .registers 1

    .line 87
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    return v0
.end method

.method public static w(Ljava/lang/String;)V
    .registers 3

    .line 214
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_14

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_14

    .line 215
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 224
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_14

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_14

    .line 225
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    return-void
.end method

.method public static w(Ljava/lang/Throwable;)V
    .registers 3

    .line 219
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_14

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_14

    .line 220
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/king/zxing/util/LogUtils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return-void
.end method
