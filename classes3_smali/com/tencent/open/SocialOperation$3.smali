.class Lcom/tencent/open/SocialOperation$3;
.super Lcom/tencent/tauth/DefaultUiListener;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/SocialOperation;->bindQQGroup(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tauth/IUiListener;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Landroid/content/Intent;

.field final synthetic d:Lcom/tencent/open/SocialOperation;


# direct methods
.method constructor <init>(Lcom/tencent/open/SocialOperation;Lcom/tencent/tauth/IUiListener;Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 5

    .line 420
    iput-object p1, p0, Lcom/tencent/open/SocialOperation$3;->d:Lcom/tencent/open/SocialOperation;

    iput-object p2, p0, Lcom/tencent/open/SocialOperation$3;->a:Lcom/tencent/tauth/IUiListener;

    iput-object p3, p0, Lcom/tencent/open/SocialOperation$3;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/tencent/open/SocialOperation$3;->c:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/tencent/tauth/DefaultUiListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 7

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-->bind group resp is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openSDK_LOG.GameAppOperation"

    invoke-static {v1, v0}, Lcom/tencent/open/log/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2b

    .line 425
    iget-object p1, p0, Lcom/tencent/open/SocialOperation$3;->a:Lcom/tencent/tauth/IUiListener;

    if-eqz p1, :cond_2a

    .line 426
    new-instance v0, Lcom/tencent/tauth/UiError;

    const/16 v1, 0xfa1

    const-string v2, "服务端错误，请稍后重试"

    const-string v3, "资格检查回包为null。"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    :cond_2a
    return-void

    .line 430
    :cond_2b
    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "bind"

    .line 431
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_51

    .line 434
    :try_start_36
    iget-object p1, p0, Lcom/tencent/open/SocialOperation$3;->d:Lcom/tencent/open/SocialOperation;

    iget-object v0, p0, Lcom/tencent/open/SocialOperation$3;->b:Landroid/app/Activity;

    const/16 v2, 0x2780

    iget-object v3, p0, Lcom/tencent/open/SocialOperation$3;->c:Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-static {p1, v0, v2, v3, v4}, Lcom/tencent/open/SocialOperation;->b(Lcom/tencent/open/SocialOperation;Landroid/app/Activity;ILandroid/content/Intent;Z)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_42} :catch_43

    goto :goto_68

    :catch_43
    move-exception p1

    const-string v0, "-->bind group, start activity exception."

    .line 436
    invoke-static {v1, v0, p1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 437
    iget-object p1, p0, Lcom/tencent/open/SocialOperation$3;->d:Lcom/tencent/open/SocialOperation;

    iget-object v0, p0, Lcom/tencent/open/SocialOperation$3;->b:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/tencent/open/SocialOperation;->a(Lcom/tencent/open/SocialOperation;Landroid/app/Activity;)V

    goto :goto_68

    .line 440
    :cond_51
    iget-object p1, p0, Lcom/tencent/open/SocialOperation$3;->a:Lcom/tencent/tauth/IUiListener;

    if-eqz p1, :cond_63

    .line 441
    new-instance v0, Lcom/tencent/tauth/UiError;

    const/16 v2, 0xbba

    const-string v3, "该群已绑定！"

    const-string v4, "绑定过的群不能再次绑定。"

    invoke-direct {v0, v2, v3, v4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    :cond_63
    const-string p1, "-->bindQQGroup() binded return."

    .line 443
    invoke-static {v1, p1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_68
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .registers 4

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-->bindQQGroup, error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openSDK_LOG.GameAppOperation"

    invoke-static {v1, v0}, Lcom/tencent/open/log/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/tencent/open/SocialOperation$3;->a:Lcom/tencent/tauth/IUiListener;

    if-eqz v0, :cond_1d

    .line 451
    invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    :cond_1d
    return-void
.end method
