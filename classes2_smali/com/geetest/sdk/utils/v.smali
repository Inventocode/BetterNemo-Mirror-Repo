.class public Lcom/geetest/sdk/utils/v;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)Z
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_9

    const/4 v0, -0x2

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p0, 0x1

    :goto_a
    return p0
.end method
