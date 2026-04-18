.class public final Lcom/ljwx/baseapp/page/IPageStateLayout$DefaultImpls;
.super Ljava/lang/Object;
.source "IPageStateLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ljwx/baseapp/page/IPageStateLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic showStateLayout$default(Lcom/ljwx/baseapp/page/IPageStateLayout;IZLandroid/view/View;Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 8

    if-nez p6, :cond_16

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_7

    const/4 p2, 0x1

    :cond_7
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_d

    move-object p3, v0

    :cond_d
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_12

    move-object p4, v0

    .line 20
    :cond_12
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ljwx/baseapp/page/IPageStateLayout;->showStateLayout(IZLandroid/view/View;Ljava/lang/Object;)V

    return-void

    :cond_16
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showStateLayout"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
