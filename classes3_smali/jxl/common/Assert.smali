.class public final Ljxl/common/Assert;
.super Ljava/lang/Object;
.source "Assert.java"


# direct methods
.method public static verify(Z)V
    .registers 1

    if-eqz p0, :cond_3

    return-void

    .line 37
    :cond_3
    new-instance p0, Ljxl/common/AssertionFailed;

    invoke-direct {p0}, Ljxl/common/AssertionFailed;-><init>()V

    throw p0
.end method

.method public static verify(ZLjava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_3

    return-void

    .line 51
    :cond_3
    new-instance p0, Ljxl/common/AssertionFailed;

    invoke-direct {p0, p1}, Ljxl/common/AssertionFailed;-><init>(Ljava/lang/String;)V

    throw p0
.end method
