.class public Lcom/sensorsdata/analytics/android/sdk/SALog;
.super Ljava/lang/Object;
.source "SALog.java"


# static fields
.field private static final CHUNK_SIZE:I = 0xfa0

.field private static debug:Z

.field private static disableSDK:Z

.field private static enableLog:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 30
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/SALog;->debug:Z

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/SALog;->disableSDK:Z

    if-nez v0, :cond_c

    const/4 v0, 0x0

    .line 31
    invoke-static {p0, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 36
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/SALog;->debug:Z

    if-eqz v0, :cond_b

    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/SALog;->disableSDK:Z

    if-nez v0, :cond_b

    .line 37
    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 43
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/SALog;->enableLog:Z

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/SALog;->disableSDK:Z

    if-nez v0, :cond_c

    const/4 v0, 0x0

    .line 44
    invoke-static {p0, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 55
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/SALog;->enableLog:Z

    if-eqz v0, :cond_b

    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/SALog;->disableSDK:Z

    if-nez v0, :cond_b

    .line 56
    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 61
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/SALog;->enableLog:Z

    if-eqz v0, :cond_10

    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/SALog;->disableSDK:Z

    if-nez v0, :cond_10

    .line 62
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 49
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/SALog;->enableLog:Z

    if-eqz v0, :cond_d

    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/SALog;->disableSDK:Z

    if-nez v0, :cond_d

    const-string v0, ""

    .line 50
    invoke-static {p0, v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_35

    .line 77
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 78
    array-length v2, v1

    const/16 v3, 0xfa0

    if-gt v2, v3, :cond_10

    .line 80
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d

    :cond_10
    const/4 p1, 0x0

    :goto_11
    add-int/lit16 v4, v2, -0xfa0

    if-ge p1, v4, :cond_29

    .line 85
    invoke-static {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->lastIndexOfLF([BI)I

    move-result v4

    sub-int v5, v4, p1

    .line 87
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1, p1, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-static {p0, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-ge v5, v3, :cond_27

    add-int/lit8 v4, v4, 0x1

    :cond_27
    move p1, v4

    goto :goto_11

    :cond_29
    if-le v2, p1, :cond_3d

    .line 96
    new-instance v0, Ljava/lang/String;

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-static {p0, v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d

    .line 100
    :cond_35
    invoke-static {p0, v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_38} :catch_39

    goto :goto_3d

    :catch_39
    move-exception p0

    .line 103
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method public static isDebug()Z
    .registers 1

    .line 164
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/SALog;->debug:Z

    return v0
.end method

.method public static isLogEnabled()Z
    .registers 1

    .line 160
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/SALog;->enableLog:Z

    return v0
.end method

.method private static lastIndexOfLF([BI)I
    .registers 5

    add-int/lit16 p1, p1, 0xfa0

    .line 115
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    move v0, p1

    :goto_a
    add-int/lit16 v1, p1, -0xfa0

    if-le v0, v1, :cond_18

    .line 118
    aget-byte v1, p0, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_15

    return v0

    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_18
    return p1
.end method

.method public static printStackTrace(Ljava/lang/Exception;)V
    .registers 3

    .line 132
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/SALog;->enableLog:Z

    if-eqz v0, :cond_11

    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/SALog;->disableSDK:Z

    if-nez v0, :cond_11

    if-eqz p0, :cond_11

    const-string v0, "SA.Exception"

    const-string v1, ""

    .line 133
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    return-void
.end method

.method static setDebug(Z)V
    .registers 1

    .line 143
    sput-boolean p0, Lcom/sensorsdata/analytics/android/sdk/SALog;->debug:Z

    return-void
.end method

.method public static setDisableSDK(Z)V
    .registers 1

    .line 156
    sput-boolean p0, Lcom/sensorsdata/analytics/android/sdk/SALog;->disableSDK:Z

    return-void
.end method

.method public static setEnableLog(Z)V
    .registers 1

    .line 152
    sput-boolean p0, Lcom/sensorsdata/analytics/android/sdk/SALog;->enableLog:Z

    return-void
.end method
