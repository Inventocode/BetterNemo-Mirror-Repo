.class public Lcom/tencent/tauth/DefaultUiListener;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .registers 2

    return-void
.end method

.method public onWarning(I)V
    .registers 2

    return-void
.end method
