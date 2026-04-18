.class public final Lcom/ljwx/baseapp/page/IPageStatusBar$DefaultImpls;
.super Ljava/lang/Object;
.source "IPageStatusBar.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ljwx/baseapp/page/IPageStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic setStatusBarTransparent$default(Lcom/ljwx/baseapp/page/IPageStatusBar;ZILjava/lang/Object;)V
    .registers 4

    if-nez p3, :cond_b

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_7

    const/4 p1, 0x1

    .line 23
    :cond_7
    invoke-interface {p0, p1}, Lcom/ljwx/baseapp/page/IPageStatusBar;->setStatusBarTransparent(Z)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setStatusBarTransparent"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
