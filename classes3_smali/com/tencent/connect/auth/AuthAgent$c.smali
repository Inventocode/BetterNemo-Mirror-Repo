.class Lcom/tencent/connect/auth/AuthAgent$c;
.super Lcom/tencent/tauth/DefaultUiListener;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/connect/auth/AuthAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/connect/auth/AuthAgent;

.field private final b:Lcom/tencent/tauth/IUiListener;

.field private final c:Z

.field private final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/tencent/connect/auth/AuthAgent;Landroid/content/Context;Lcom/tencent/tauth/IUiListener;ZZ)V
    .registers 6

    .line 150
    iput-object p1, p0, Lcom/tencent/connect/auth/AuthAgent$c;->a:Lcom/tencent/connect/auth/AuthAgent;

    invoke-direct {p0}, Lcom/tencent/tauth/DefaultUiListener;-><init>()V

    .line 151
    iput-object p2, p0, Lcom/tencent/connect/auth/AuthAgent$c;->d:Landroid/content/Context;

    .line 152
    iput-object p3, p0, Lcom/tencent/connect/auth/AuthAgent$c;->b:Lcom/tencent/tauth/IUiListener;

    .line 153
    iput-boolean p4, p0, Lcom/tencent/connect/auth/AuthAgent$c;->c:Z

    const-string p1, "openSDK_LOG.AuthAgent"

    const-string p2, "OpenUi, TokenListener()"

    .line 154
    invoke-static {p1, p2}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 3

    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v1, "OpenUi, TokenListener() onCancel"

    .line 212
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthAgent$c;->b:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    .line 214
    invoke-static {}, Lcom/tencent/open/log/SLog;->release()V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 9

    const-string v0, "pf"

    const-string v1, "OpenUi, TokenListener() onComplete error"

    const-string v2, "openSDK_LOG.AuthAgent"

    const-string v3, "OpenUi, TokenListener() onComplete"

    .line 159
    invoke-static {v2, v3}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    check-cast p1, Lorg/json/JSONObject;

    :try_start_d
    const-string v3, "access_token"

    .line 162
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "expires_in"

    .line 163
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "openid"

    .line 164
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_48

    .line 165
    iget-object v6, p0, Lcom/tencent/connect/auth/AuthAgent$c;->a:Lcom/tencent/connect/auth/AuthAgent;

    invoke-static {v6}, Lcom/tencent/connect/auth/AuthAgent;->a(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;

    move-result-object v6

    if-eqz v6, :cond_48

    if-eqz v5, :cond_48

    .line 172
    iget-object v6, p0, Lcom/tencent/connect/auth/AuthAgent$c;->a:Lcom/tencent/connect/auth/AuthAgent;

    invoke-static {v6}, Lcom/tencent/connect/auth/AuthAgent;->b(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Lcom/tencent/connect/auth/QQToken;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v3, p0, Lcom/tencent/connect/auth/AuthAgent$c;->a:Lcom/tencent/connect/auth/AuthAgent;

    invoke-static {v3}, Lcom/tencent/connect/auth/AuthAgent;->c(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/tencent/connect/auth/QQToken;->setOpenId(Ljava/lang/String;)V

    .line 174
    iget-object v3, p0, Lcom/tencent/connect/auth/AuthAgent$c;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/tencent/connect/auth/AuthAgent$c;->a:Lcom/tencent/connect/auth/AuthAgent;

    invoke-static {v4}, Lcom/tencent/connect/auth/AuthAgent;->d(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/connect/a/a;->d(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V

    .line 179
    :cond_48
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_4c
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_4c} :catch_76

    if-eqz v3, :cond_6a

    .line 182
    :try_start_4e
    iget-object v4, p0, Lcom/tencent/connect/auth/AuthAgent$c;->d:Landroid/content/Context;

    const-string v5, "pfStore"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 184
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_62} :catch_63

    goto :goto_6a

    :catch_63
    move-exception v0

    .line 186
    :try_start_64
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 187
    invoke-static {v2, v1, v0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    :cond_6a
    :goto_6a
    iget-boolean v0, p0, Lcom/tencent/connect/auth/AuthAgent$c;->c:Z

    if-eqz v0, :cond_7d

    .line 192
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_75
    .catch Lorg/json/JSONException; {:try_start_64 .. :try_end_75} :catch_76

    goto :goto_7d

    :catch_76
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    invoke-static {v2, v1, v0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    :cond_7d
    :goto_7d
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthAgent$c;->b:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V

    .line 199
    iget-object p1, p0, Lcom/tencent/connect/auth/AuthAgent$c;->a:Lcom/tencent/connect/auth/AuthAgent;

    invoke-virtual {p1}, Lcom/tencent/connect/auth/AuthAgent;->releaseResource()V

    .line 200
    invoke-static {}, Lcom/tencent/open/log/SLog;->release()V

    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .registers 4

    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v1, "OpenUi, TokenListener() onError"

    .line 205
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthAgent$c;->b:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    .line 207
    invoke-static {}, Lcom/tencent/open/log/SLog;->release()V

    return-void
.end method
