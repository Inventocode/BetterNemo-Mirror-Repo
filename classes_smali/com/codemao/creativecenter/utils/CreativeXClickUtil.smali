.class public final Lcom/codemao/creativecenter/utils/CreativeXClickUtil;
.super Ljava/lang/Object;
.source "CreativeXClickUtil.java"


# static fields
.field private static mLastClickTime:J


# direct methods
.method public static isFastClick()Z
    .registers 5

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/codemao/creativecenter/utils/CreativeXClickUtil;->mLastClickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-gez v4, :cond_f

    const/4 v0, 0x1

    return v0

    .line 52
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/codemao/creativecenter/utils/CreativeXClickUtil;->mLastClickTime:J

    const/4 v0, 0x0

    return v0
.end method
