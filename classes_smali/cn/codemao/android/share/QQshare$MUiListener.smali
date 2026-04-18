.class Lcn/codemao/android/share/QQshare$MUiListener;
.super Ljava/lang/Object;
.source "QQshare.java"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/share/QQshare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MUiListener"
.end annotation


# instance fields
.field private mResult:Lcn/codemao/android/share/interfaces/IshareResult;


# direct methods
.method public constructor <init>(Lcn/codemao/android/share/QQshare;Lcn/codemao/android/share/interfaces/IshareResult;)V
    .registers 3

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p2, p0, Lcn/codemao/android/share/QQshare$MUiListener;->mResult:Lcn/codemao/android/share/interfaces/IshareResult;

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 3

    .line 106
    iget-object v0, p0, Lcn/codemao/android/share/QQshare$MUiListener;->mResult:Lcn/codemao/android/share/interfaces/IshareResult;

    if-eqz v0, :cond_a

    const-string/jumbo v1, "分享取消"

    .line 107
    invoke-interface {v0, v1}, Lcn/codemao/android/share/interfaces/IshareResult;->onCancel(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 3

    .line 92
    iget-object p1, p0, Lcn/codemao/android/share/QQshare$MUiListener;->mResult:Lcn/codemao/android/share/interfaces/IshareResult;

    if-eqz p1, :cond_a

    const-string/jumbo v0, "分享成功"

    .line 93
    invoke-interface {p1, v0}, Lcn/codemao/android/share/interfaces/IshareResult;->onSuccess(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .registers 3

    .line 99
    iget-object p1, p0, Lcn/codemao/android/share/QQshare$MUiListener;->mResult:Lcn/codemao/android/share/interfaces/IshareResult;

    if-eqz p1, :cond_a

    const-string/jumbo v0, "分享失败"

    .line 100
    invoke-interface {p1, v0}, Lcn/codemao/android/share/interfaces/IshareResult;->onFailure(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public onWarning(I)V
    .registers 2

    return-void
.end method
