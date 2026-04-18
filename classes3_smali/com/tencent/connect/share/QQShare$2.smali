.class Lcom/tencent/connect/share/QQShare$2;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/open/utils/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/connect/share/QQShare;->b(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/tencent/tauth/IUiListener;

.field final synthetic e:Landroid/app/Activity;

.field final synthetic f:Lcom/tencent/connect/share/QQShare;


# direct methods
.method constructor <init>(Lcom/tencent/connect/share/QQShare;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Landroid/app/Activity;)V
    .registers 7

    .line 318
    iput-object p1, p0, Lcom/tencent/connect/share/QQShare$2;->f:Lcom/tencent/connect/share/QQShare;

    iput-object p2, p0, Lcom/tencent/connect/share/QQShare$2;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/tencent/connect/share/QQShare$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/connect/share/QQShare$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/connect/share/QQShare$2;->d:Lcom/tencent/tauth/IUiListener;

    iput-object p6, p0, Lcom/tencent/connect/share/QQShare$2;->e:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 13

    if-nez p1, :cond_a

    .line 322
    iget-object p1, p0, Lcom/tencent/connect/share/QQShare$2;->a:Landroid/os/Bundle;

    const-string v0, "imageLocalUrl"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_59

    .line 324
    :cond_a
    iget-object p1, p0, Lcom/tencent/connect/share/QQShare$2;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_59

    iget-object p1, p0, Lcom/tencent/connect/share/QQShare$2;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_59

    .line 325
    iget-object p1, p0, Lcom/tencent/connect/share/QQShare$2;->d:Lcom/tencent/tauth/IUiListener;

    if-eqz p1, :cond_31

    .line 326
    new-instance p2, Lcom/tencent/tauth/UiError;

    const/4 v0, -0x6

    const/4 v1, 0x0

    const-string v2, "获取分享图片失败!"

    invoke-direct {p2, v0, v2, v1}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string p1, "openSDK_LOG.QQShare"

    const-string p2, "shareToMobileQQ -- error: 获取分享图片失败!"

    .line 328
    invoke-static {p1, p2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_31
    invoke-static {}, Lcom/tencent/open/b/e;->a()Lcom/tencent/open/b/e;

    move-result-object v0

    const/4 v1, 0x1

    iget-object p1, p0, Lcom/tencent/connect/share/QQShare$2;->f:Lcom/tencent/connect/share/QQShare;

    .line 331
    invoke-static {p1}, Lcom/tencent/connect/share/QQShare;->b(Lcom/tencent/connect/share/QQShare;)Lcom/tencent/connect/auth/QQToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v4

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 332
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v2, "SHARE_CHECK_SDK"

    const-string v3, "1000"

    const-string v9, "获取分享图片失败!"

    .line 330
    invoke-virtual/range {v0 .. v9}, Lcom/tencent/open/b/e;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    return-void

    .line 336
    :cond_59
    :goto_59
    iget-object p1, p0, Lcom/tencent/connect/share/QQShare$2;->f:Lcom/tencent/connect/share/QQShare;

    iget-object p2, p0, Lcom/tencent/connect/share/QQShare$2;->e:Landroid/app/Activity;

    iget-object v0, p0, Lcom/tencent/connect/share/QQShare$2;->a:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/tencent/connect/share/QQShare$2;->d:Lcom/tencent/tauth/IUiListener;

    invoke-static {p1, p2, v0, v1}, Lcom/tencent/connect/share/QQShare;->a(Lcom/tencent/connect/share/QQShare;Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public a(ILjava/util/ArrayList;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_a

    .line 342
    iget-object p1, p0, Lcom/tencent/connect/share/QQShare$2;->a:Landroid/os/Bundle;

    const-string v0, "imageLocalUrlArray"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_59

    .line 344
    :cond_a
    iget-object p1, p0, Lcom/tencent/connect/share/QQShare$2;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_59

    iget-object p1, p0, Lcom/tencent/connect/share/QQShare$2;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_59

    .line 345
    iget-object p1, p0, Lcom/tencent/connect/share/QQShare$2;->d:Lcom/tencent/tauth/IUiListener;

    if-eqz p1, :cond_31

    .line 346
    new-instance p2, Lcom/tencent/tauth/UiError;

    const/4 v0, -0x6

    const/4 v1, 0x0

    const-string v2, "获取分享图片失败!"

    invoke-direct {p2, v0, v2, v1}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string p1, "openSDK_LOG.QQShare"

    const-string p2, "shareToMobileQQ -- error: 获取分享图片失败!"

    .line 348
    invoke-static {p1, p2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_31
    invoke-static {}, Lcom/tencent/open/b/e;->a()Lcom/tencent/open/b/e;

    move-result-object v0

    const/4 v1, 0x1

    iget-object p1, p0, Lcom/tencent/connect/share/QQShare$2;->f:Lcom/tencent/connect/share/QQShare;

    .line 351
    invoke-static {p1}, Lcom/tencent/connect/share/QQShare;->c(Lcom/tencent/connect/share/QQShare;)Lcom/tencent/connect/auth/QQToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v4

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 352
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v2, "SHARE_CHECK_SDK"

    const-string v3, "1000"

    const-string v9, "获取分享图片失败!"

    .line 350
    invoke-virtual/range {v0 .. v9}, Lcom/tencent/open/b/e;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    return-void

    .line 356
    :cond_59
    :goto_59
    iget-object p1, p0, Lcom/tencent/connect/share/QQShare$2;->f:Lcom/tencent/connect/share/QQShare;

    iget-object p2, p0, Lcom/tencent/connect/share/QQShare$2;->e:Landroid/app/Activity;

    iget-object v0, p0, Lcom/tencent/connect/share/QQShare$2;->a:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/tencent/connect/share/QQShare$2;->d:Lcom/tencent/tauth/IUiListener;

    invoke-static {p1, p2, v0, v1}, Lcom/tencent/connect/share/QQShare;->a(Lcom/tencent/connect/share/QQShare;Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method
