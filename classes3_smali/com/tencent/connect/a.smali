.class public Lcom/tencent/connect/a;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)Z
    .registers 4

    const/4 v0, -0x6

    const-string v1, "用户未授权，暂时无法使用QQ登录及分享等功能"

    .line 27
    invoke-static {p0, p1, v0, v1, v1}, Lcom/tencent/connect/a;->a(Ljava/lang/String;Lcom/tencent/tauth/IUiListener;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Lcom/tencent/tauth/IUiListener;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 32
    invoke-static {}, Lcom/tencent/tauth/Tencent;->isPermissionNotGranted()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "permission not granted"

    .line 33
    invoke-static {p0, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_15

    .line 35
    new-instance p0, Lcom/tencent/tauth/UiError;

    invoke-direct {p0, p2, p3, p4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    :cond_15
    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method
