.class public final Lcom/nostra13/universalimageloader/utils/L;
.super Ljava/lang/Object;
.source "L.java"


# static fields
.field private static volatile writeDebugLogs:Z = false

.field private static volatile writeLogs:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 72
    sget-boolean v0, Lcom/nostra13/universalimageloader/utils/L;->writeDebugLogs:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 73
    invoke-static {v0, v1, p0, p1}, Lcom/nostra13/universalimageloader/utils/L;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 86
    invoke-static {v1, p0, v2, v0}, Lcom/nostra13/universalimageloader/utils/L;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 78
    invoke-static {v0, v1, p0, p1}, Lcom/nostra13/universalimageloader/utils/L;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 98
    sget-boolean v0, Lcom/nostra13/universalimageloader/utils/L;->writeLogs:Z

    if-nez v0, :cond_5

    return-void

    .line 99
    :cond_5
    array-length v0, p3

    if-lez v0, :cond_c

    .line 100
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_c
    if-nez p1, :cond_f

    goto :goto_28

    :cond_f
    if-nez p2, :cond_15

    .line 107
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 108
    :cond_15
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    const/4 p2, 0x1

    aput-object p1, p3, p2

    const-string p1, "%1$s\n%2$s"

    .line 109
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 111
    :goto_28
    sget-object p1, Lcom/nostra13/universalimageloader/core/ImageLoader;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 82
    invoke-static {v0, v1, p0, p1}, Lcom/nostra13/universalimageloader/utils/L;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static writeDebugLogs(Z)V
    .registers 1

    .line 63
    sput-boolean p0, Lcom/nostra13/universalimageloader/utils/L;->writeDebugLogs:Z

    return-void
.end method
