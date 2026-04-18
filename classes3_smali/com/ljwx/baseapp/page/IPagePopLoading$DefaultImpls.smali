.class public final Lcom/ljwx/baseapp/page/IPagePopLoading$DefaultImpls;
.super Ljava/lang/Object;
.source "IPagePopLoading.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ljwx/baseapp/page/IPagePopLoading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic dismissPopLoading$default(Lcom/ljwx/baseapp/page/IPagePopLoading;ZILjava/lang/Object;)V
    .registers 4

    if-nez p3, :cond_b

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_7

    const/4 p1, 0x1

    .line 21
    :cond_7
    invoke-interface {p0, p1}, Lcom/ljwx/baseapp/page/IPagePopLoading;->dismissPopLoading(Z)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: dismissPopLoading"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic showPopLoading$default(Lcom/ljwx/baseapp/page/IPagePopLoading;ZLjava/lang/CharSequence;ZZIILjava/lang/Object;)V
    .registers 9

    if-nez p7, :cond_20

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x1

    if-eqz p7, :cond_8

    const/4 p1, 0x1

    :cond_8
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_d

    const/4 p2, 0x0

    :cond_d
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_12

    const/4 p3, 0x1

    :cond_12
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_17

    const/4 p4, 0x1

    :cond_17
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_1c

    const/4 p5, 0x3

    .line 10
    :cond_1c
    invoke-interface/range {p0 .. p5}, Lcom/ljwx/baseapp/page/IPagePopLoading;->showPopLoading(ZLjava/lang/CharSequence;ZZI)V

    return-void

    :cond_20
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showPopLoading"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
