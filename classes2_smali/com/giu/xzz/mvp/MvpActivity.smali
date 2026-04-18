.class public abstract Lcom/giu/xzz/mvp/MvpActivity;
.super Lcom/giu/xzz/BaseActivity;
.source "MvpActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lcom/giu/xzz/mvp/BasePresenter;",
        ">",
        "Lcom/giu/xzz/BaseActivity;"
    }
.end annotation


# instance fields
.field protected presenter:Lcom/giu/xzz/mvp/BasePresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    return-void
.end method

.method private initPresenter()V
    .registers 2

    .line 29
    invoke-virtual {p0}, Lcom/giu/xzz/mvp/MvpActivity;->createPresenter()Lcom/giu/xzz/mvp/BasePresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    return-void
.end method


# virtual methods
.method protected abstract createPresenter()Lcom/giu/xzz/mvp/BasePresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 21
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-direct {p0}, Lcom/giu/xzz/mvp/MvpActivity;->initPresenter()V

    .line 23
    iget-object p1, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    if-eqz p1, :cond_d

    .line 24
    invoke-interface {p1}, Lcom/giu/xzz/mvp/BasePresenter;->onCreate()V

    :cond_d
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 43
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onDestroy()V

    .line 44
    iget-object v0, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    if-eqz v0, :cond_a

    .line 45
    invoke-interface {v0}, Lcom/giu/xzz/mvp/BasePresenter;->onDestroy()V

    :cond_a
    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onResume()V

    .line 36
    iget-object v0, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    if-eqz v0, :cond_a

    .line 37
    invoke-interface {v0}, Lcom/giu/xzz/mvp/BasePresenter;->onResume()V

    :cond_a
    return-void
.end method
