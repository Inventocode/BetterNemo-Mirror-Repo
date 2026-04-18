.class public Lcom/chuanglan/shanyan_sdk/utils/q;
.super Ljava/lang/Object;


# static fields
.field private static a:J


# direct methods
.method public static a(Landroid/content/Context;)Z
    .registers 11

    const-string v0, "authPageFlag"

    const-wide/16 v1, 0x2

    invoke-static {p0, v0, v1, v2}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/chuanglan/shanyan_sdk/utils/q;->a:J

    sub-long v6, v2, v4

    const-wide/16 v8, 0x3e8

    mul-long v0, v0, v8

    cmp-long p0, v6, v0

    if-gez p0, :cond_23

    sub-long v0, v2, v4

    const-wide/16 v4, 0x0

    cmp-long p0, v0, v4

    if-gez p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    goto :goto_26

    :cond_23
    :goto_23
    const/4 p0, 0x1

    sput-wide v2, Lcom/chuanglan/shanyan_sdk/utils/q;->a:J

    :goto_26
    return p0
.end method
