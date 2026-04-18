.class public interface abstract Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$LoginResultListener;
.super Ljava/lang/Object;
.source "FullScreenWechatPop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoginResultListener"
.end annotation


# virtual methods
.method public abstract onFailure(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Lcn/codemao/android/account/bean/WechatLoginResultVO;)V
.end method
