.class Lcom/tencent/connect/auth/AuthAgent$a;
.super Lcom/tencent/tauth/DefaultUiListener;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/connect/auth/AuthAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Lcom/tencent/tauth/IUiListener;

.field final synthetic b:Lcom/tencent/connect/auth/AuthAgent;


# direct methods
.method public constructor <init>(Lcom/tencent/connect/auth/AuthAgent;Lcom/tencent/tauth/IUiListener;)V
    .registers 3

    .line 503
    iput-object p1, p0, Lcom/tencent/connect/auth/AuthAgent$a;->b:Lcom/tencent/connect/auth/AuthAgent;

    invoke-direct {p0}, Lcom/tencent/tauth/DefaultUiListener;-><init>()V

    .line 504
    iput-object p2, p0, Lcom/tencent/connect/auth/AuthAgent$a;->a:Lcom/tencent/tauth/IUiListener;

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .line 540
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthAgent$a;->a:Lcom/tencent/tauth/IUiListener;

    if-eqz v0, :cond_7

    .line 541
    invoke-interface {v0}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    :cond_7
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 8

    const-string v0, "ret"

    const-string v1, "openSDK_LOG.AuthAgent"

    if-nez p1, :cond_c

    const-string p1, "CheckLoginListener response data is null"

    .line 510
    invoke-static {v1, p1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 514
    :cond_c
    check-cast p1, Lorg/json/JSONObject;

    .line 519
    :try_start_e
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_12} :catch_32

    const-string v3, "msg"

    if-nez v2, :cond_19

    :try_start_16
    const-string p1, "success"

    goto :goto_1d

    .line 520
    :cond_19
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 522
    :goto_1d
    iget-object v4, p0, Lcom/tencent/connect/auth/AuthAgent$a;->a:Lcom/tencent/tauth/IUiListener;

    if-eqz v4, :cond_3b

    .line 523
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-interface {v4, p1}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_31} :catch_32

    goto :goto_3b

    :catch_32
    move-exception p1

    .line 526
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "CheckLoginListener response data format error"

    .line 527
    invoke-static {v1, p1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .registers 3

    .line 533
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthAgent$a;->a:Lcom/tencent/tauth/IUiListener;

    if-eqz v0, :cond_7

    .line 534
    invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    :cond_7
    return-void
.end method
