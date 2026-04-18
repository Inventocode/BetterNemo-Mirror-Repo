.class public final Lcom/tencent/bugly/proguard/ae;
.super Ljava/lang/Object;
.source "BUGLY"


# direct methods
.method public static a(I)Lcom/tencent/bugly/proguard/af;
    .registers 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_9

    .line 16
    new-instance p0, Lcom/tencent/bugly/proguard/ah;

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ah;-><init>()V

    goto :goto_13

    :cond_9
    const/4 v0, 0x2

    if-ne p0, v0, :cond_12

    .line 19
    new-instance p0, Lcom/tencent/bugly/proguard/ag;

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ag;-><init>()V

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return-object p0
.end method
