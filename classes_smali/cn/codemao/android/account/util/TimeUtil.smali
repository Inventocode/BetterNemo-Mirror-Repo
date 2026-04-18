.class public Lcn/codemao/android/account/util/TimeUtil;
.super Ljava/lang/Object;
.source "TimeUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentTime()J
    .registers 4

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static inTime(JJ)Z
    .registers 7

    .line 23
    invoke-static {}, Lcn/codemao/android/account/util/TimeUtil;->getCurrentTime()J

    move-result-wide v0

    sub-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_11

    cmp-long v0, p0, p2

    if-gtz v0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public static outTime(J)Z
    .registers 5

    .line 30
    invoke-static {}, Lcn/codemao/android/account/util/TimeUtil;->getCurrentTime()J

    move-result-wide v0

    sub-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method
