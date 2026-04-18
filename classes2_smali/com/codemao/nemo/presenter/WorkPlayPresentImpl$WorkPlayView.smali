.class public interface abstract Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;
.super Ljava/lang/Object;
.source "WorkPlayPresentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WorkPlayView"
.end annotation


# virtual methods
.method public abstract cloudStatus(Z)V
.end method

.method public abstract createScreenShot(Ljava/lang/String;)V
.end method

.method public abstract getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;
.end method

.method public abstract getPlayViewName()Ljava/lang/String;
.end method

.method public abstract hideLoadingDialog()V
.end method

.method public abstract onCollectError()V
.end method

.method public abstract onInitSuccess()V
.end method

.method public abstract onLoadFail()V
.end method

.method public abstract onLoadFinish(Ljava/lang/String;)V
.end method

.method public abstract onPraiseError()V
.end method

.method public abstract onProgressChange(I)V
.end method

.method public abstract setCollect(Z)V
.end method

.method public abstract setPraise(Z)V
.end method
