.class public final Lcom/ljwx/baseapp/page/IPageStartPage$DefaultImpls;
.super Ljava/lang/Object;
.source "IPageStartPage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ljwx/baseapp/page/IPageStartPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic startActivity$default(Lcom/ljwx/baseapp/page/IPageStartPage;Ljava/lang/Class;Ljava/lang/Integer;ILjava/lang/Object;)V
    .registers 5

    if-nez p4, :cond_b

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    .line 7
    :cond_7
    invoke-interface {p0, p1, p2}, Lcom/ljwx/baseapp/page/IPageStartPage;->startActivity(Ljava/lang/Class;Ljava/lang/Integer;)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: startActivity"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
