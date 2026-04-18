.class public final Lcom/ljwx/baseapp/vm/BaseDataRequestCallback$DefaultImpls;
.super Ljava/lang/Object;
.source "BaseDataRequestCallback.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ljwx/baseapp/vm/BaseDataRequestCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic onError$default(Lcom/ljwx/baseapp/vm/BaseDataRequestCallback;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .registers 7

    if-nez p5, :cond_16

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_8

    move-object p1, v0

    :cond_8
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_d

    move-object p2, v0

    :cond_d
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    move-object p3, v0

    .line 9
    :cond_12
    invoke-interface {p0, p1, p2, p3}, Lcom/ljwx/baseapp/vm/BaseDataRequestCallback;->onError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_16
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: onError"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic onFail$default(Lcom/ljwx/baseapp/vm/BaseDataRequestCallback;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 7

    if-nez p5, :cond_16

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_8

    move-object p1, v0

    :cond_8
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_d

    move-object p2, v0

    :cond_d
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    move-object p3, v0

    .line 7
    :cond_12
    invoke-interface {p0, p1, p2, p3}, Lcom/ljwx/baseapp/vm/BaseDataRequestCallback;->onFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_16
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: onFail"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
