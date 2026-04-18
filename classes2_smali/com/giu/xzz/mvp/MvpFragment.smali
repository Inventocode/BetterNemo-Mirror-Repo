.class public abstract Lcom/giu/xzz/mvp/MvpFragment;
.super Lcom/giu/xzz/BaseFragment;
.source "MvpFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lcom/giu/xzz/mvp/BasePresenter;",
        ">",
        "Lcom/giu/xzz/BaseFragment;"
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

    .line 12
    invoke-direct {p0}, Lcom/giu/xzz/BaseFragment;-><init>()V

    return-void
.end method

.method private initPresenter()V
    .registers 2

    .line 26
    invoke-virtual {p0}, Lcom/giu/xzz/mvp/MvpFragment;->createPresenter()Lcom/giu/xzz/mvp/BasePresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/giu/xzz/mvp/MvpFragment;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

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

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 21
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-direct {p0}, Lcom/giu/xzz/mvp/MvpFragment;->initPresenter()V

    return-void
.end method
