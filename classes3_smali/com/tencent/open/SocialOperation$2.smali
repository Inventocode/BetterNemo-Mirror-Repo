.class Lcom/tencent/open/SocialOperation$2;
.super Lcom/tencent/tauth/DefaultUiListener;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/SocialOperation;->joinGroup(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
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

    .line 283
    iput-object p1, p0, Lcom/tencent/open/SocialOperation$2;->d:Lcom/tencent/open/SocialOperation;

    iput-object p2, p0, Lcom/tencent/open/SocialOperation$2;->a:Lcom/tencent/tauth/IUiListener;

    iput-object p3, p0, Lcom/tencent/open/SocialOperation$2;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/tencent/open/SocialOperation$2;->c:Landroid/content/Intent;

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

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-->join group resp is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openSDK_LOG.GameAppOperation"

    invoke-static {v1, v0}, Lcom/tencent/open/log/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2b

    .line 288
    iget-object p1, p0, Lcom/tencent/open/SocialOperation$2;->a:Lcom/tencent/tauth/IUiListener;

    if-eqz p1, :cond_2a

    .line 289
    new-instance v0, Lcom/tencent/tauth/UiError;

    const/16 v1, 0xfa1

    const-string v2, "服务端错误，请稍后重试"

    const-string v3, "资格检查回包为null。"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    :cond_2a
    return-void

    .line 293
    :cond_2b
    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "bind"

    .line 294
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_51

    .line 297
    :try_start_36
    iget-object p1, p0, Lcom/tencent/open/SocialOperation$2;->d:Lcom/tencent/open/SocialOperation;

    iget-object v0, p0, Lcom/tencent/open/SocialOperation$2;->b:Landroid/app/Activity;

    const/16 v2, 0x277f

    iget-object v3, p0, Lcom/tencent/open/SocialOperation$2;->c:Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-static {p1, v0, v2, v3, v4}, Lcom/tencent/open/SocialOperation;->a(Lcom/tencent/open/SocialOperation;Landroid/app/Activity;ILandroid/content/Intent;Z)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_42} :catch_43

    goto :goto_63

    :catch_43
    move-exception p1

    const-string v0, "-->join group, start activity exception."

    .line 299
    invoke-static {v1, v0, p1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 300
    iget-object p1, p0, Lcom/tencent/open/SocialOperation$2;->d:Lcom/tencent/open/SocialOperation;

    iget-object v0, p0, Lcom/tencent/open/SocialOperation$2;->b:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/tencent/open/SocialOperation;->a(Lcom/tencent/open/SocialOperation;Landroid/app/Activity;)V

    goto :goto_63

    .line 303
    :cond_51
    iget-object p1, p0, Lcom/tencent/open/SocialOperation$2;->a:Lcom/tencent/tauth/IUiListener;

    if-eqz p1, :cond_63

    .line 304
    new-instance v0, Lcom/tencent/tauth/UiError;

    const/16 v1, 0xbbb

    const-string v2, "该组织未绑群，无法加入"

    const-string v3, "该组织未绑群，无法加入。"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    :cond_63
    :goto_63
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .registers 4

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-->joinQQGroup, error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openSDK_LOG.GameAppOperation"

    invoke-static {v1, v0}, Lcom/tencent/open/log/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/tencent/open/SocialOperation$2;->a:Lcom/tencent/tauth/IUiListener;

    if-eqz v0, :cond_1d

    .line 313
    invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    :cond_1d
    return-void
.end method
