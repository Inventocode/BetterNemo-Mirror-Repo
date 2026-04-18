.class public Lcom/tencent/connect/common/AssistActivity;
.super Landroid/app/Activity;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/connect/common/AssistActivity$QQStayReceiver;
    }
.end annotation


# static fields
.field public static final EXTRA_INTENT:Ljava/lang/String; = "openSDK_LOG.AssistActivity.ExtraIntent"


# instance fields
.field protected a:Z

.field protected b:Landroid/os/Handler;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Lcom/tencent/connect/common/AssistActivity$QQStayReceiver;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/tencent/connect/common/AssistActivity;->c:Z

    .line 38
    iput-boolean v0, p0, Lcom/tencent/connect/common/AssistActivity;->a:Z

    .line 49
    new-instance v0, Lcom/tencent/connect/common/AssistActivity$1;

    invoke-direct {v0, p0}, Lcom/tencent/connect/common/AssistActivity$1;-><init>(Lcom/tencent/connect/common/AssistActivity;)V

    iput-object v0, p0, Lcom/tencent/connect/common/AssistActivity;->b:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .registers 14

    const-string v0, "viaShareType"

    .line 385
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "callbackAction"

    .line 386
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    .line 387
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "openId"

    .line 388
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "appId"

    .line 389
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p1, "shareToQQ"

    .line 393
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v4, ""

    if-eqz p1, :cond_2f

    const-string p1, "ANDROIDQQ.SHARETOQQ.XX"

    const-string v4, "10"

    :goto_2c
    move-object v5, v4

    move-object v4, p1

    goto :goto_3d

    :cond_2f
    const-string p1, "shareToQzone"

    .line 396
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    const-string p1, "ANDROIDQQ.SHARETOQZ.XX"

    const-string v4, "11"

    goto :goto_2c

    :cond_3c
    move-object v5, v4

    .line 401
    :goto_3d
    invoke-static {p0, v1}, Lcom/tencent/open/utils/m;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6e

    .line 403
    invoke-static {}, Lcom/tencent/connect/common/UIListenerManager;->getInstance()Lcom/tencent/connect/common/UIListenerManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tencent/connect/common/UIListenerManager;->getListnerWithAction(Ljava/lang/String;)Lcom/tencent/tauth/IUiListener;

    move-result-object p1

    if-eqz p1, :cond_59

    .line 405
    new-instance v0, Lcom/tencent/tauth/UiError;

    const/4 v1, -0x6

    const/4 v6, 0x0

    const-string v7, "打开浏览器失败!"

    invoke-direct {v0, v1, v7, v6}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    .line 408
    :cond_59
    invoke-static {}, Lcom/tencent/open/b/e;->a()Lcom/tencent/open/b/e;

    move-result-object v1

    const-string v6, "3"

    const-string v7, "1"

    const-string v9, "0"

    const-string v10, "2"

    const-string v11, "0"

    invoke-virtual/range {v1 .. v11}, Lcom/tencent/open/b/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_7f

    .line 413
    :cond_6e
    invoke-static {}, Lcom/tencent/open/b/e;->a()Lcom/tencent/open/b/e;

    move-result-object v1

    const-string v6, "3"

    const-string v7, "0"

    const-string v9, "0"

    const-string v10, "2"

    const-string v11, "0"

    invoke-virtual/range {v1 .. v11}, Lcom/tencent/open/b/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :goto_7f
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "shareH5"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    return-void
.end method

.method public static getAssistActivityIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/connect/common/AssistActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--onActivityResult--requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "data = null ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openSDK_LOG.AssistActivity"

    invoke-static {v1, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_31

    return-void

    :cond_31
    if-eqz p3, :cond_3a

    const-string p2, "key_action"

    const-string v0, "action_login"

    .line 299
    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    :cond_3a
    invoke-virtual {p0, p1, p3}, Lcom/tencent/connect/common/AssistActivity;->setResultData(ILandroid/content/Intent;)V

    .line 304
    iget-boolean p1, p0, Lcom/tencent/connect/common/AssistActivity;->f:Z

    if-nez p1, :cond_4a

    const-string p1, "onActivityResult finish immediate"

    .line 305
    invoke-static {v1, p1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_5d

    .line 308
    :cond_4a
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/tencent/connect/common/AssistActivity$2;

    invoke-direct {p2, p0}, Lcom/tencent/connect/common/AssistActivity$2;-><init>(Lcom/tencent/connect/common/AssistActivity;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_5d
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    const-string v0, "--onCreate--startActException"

    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    const/4 v1, 0x1

    .line 68
    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/tencent/connect/common/Constants;->KEY_RESTORE_LANDSCAPE:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tencent/connect/common/AssistActivity;->f:Z

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--onCreate-- mRestoreLandscape="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/tencent/connect/common/AssistActivity;->f:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "openSDK_LOG.AssistActivity"

    invoke-static {v3, v2}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_45

    const-string v2, "-->onCreate--getIntent() returns null"

    .line 74
    invoke-static {v3, v2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 78
    :cond_45
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "openSDK_LOG.AssistActivity.ExtraIntent"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    if-nez v2, :cond_55

    const/4 v5, 0x0

    goto :goto_5b

    :cond_55
    const-string v5, "key_request_code"

    .line 79
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    :goto_5b
    if-nez v2, :cond_60

    const-string v6, ""

    goto :goto_66

    :cond_60
    const-string v6, "appid"

    .line 80
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_66
    iput-object v6, p0, Lcom/tencent/connect/common/AssistActivity;->d:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "h5_share_data"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    if-eqz p1, :cond_84

    const-string v7, "RESTART_FLAG"

    .line 84
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/tencent/connect/common/AssistActivity;->c:Z

    const-string v7, "RESUME_FLAG"

    .line 85
    invoke-virtual {p1, v7, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/connect/common/AssistActivity;->a:Z

    .line 87
    :cond_84
    iget-boolean p1, p0, Lcom/tencent/connect/common/AssistActivity;->c:Z

    if-nez p1, :cond_13a

    if-nez v6, :cond_131

    if-eqz v2, :cond_128

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--onCreate--activityIntent not null, will start activity, reqcode = "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :try_start_a0
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const-string v6, "share_id"

    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 95
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.tencent.tauth.opensdk.SHARE_SUCCESS_AND_STAY_QQ_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 96
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 97
    iget-object p1, p0, Lcom/tencent/connect/common/AssistActivity;->e:Lcom/tencent/connect/common/AssistActivity$QQStayReceiver;

    if-nez p1, :cond_cc

    .line 98
    new-instance p1, Lcom/tencent/connect/common/AssistActivity$QQStayReceiver;

    const/4 v7, 0x0

    invoke-direct {p1, p0, v7}, Lcom/tencent/connect/common/AssistActivity$QQStayReceiver;-><init>(Lcom/tencent/connect/common/AssistActivity;Lcom/tencent/connect/common/AssistActivity$1;)V

    iput-object p1, p0, Lcom/tencent/connect/common/AssistActivity;->e:Lcom/tencent/connect/common/AssistActivity$QQStayReceiver;

    .line 100
    :cond_cc
    iget-object p1, p0, Lcom/tencent/connect/common/AssistActivity;->e:Lcom/tencent/connect/common/AssistActivity$QQStayReceiver;

    invoke-virtual {p0, p1, v6}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_d1} :catch_d2

    goto :goto_eb

    :catch_d2
    move-exception p1

    .line 102
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "registerReceiver exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_eb
    :try_start_eb
    const-string p1, "for_result"

    .line 106
    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_f7

    .line 107
    invoke-virtual {p0, v2, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_13f

    .line 109
    :cond_f7
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_fa} :catch_fe
    .catchall {:try_start_eb .. :try_end_fa} :catchall_fb

    goto :goto_13f

    :catchall_fb
    move-exception p1

    const/4 v1, 0x0

    goto :goto_11f

    :catch_fe
    move-exception p1

    .line 119
    :try_start_ff
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--onCreate--startActivity exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_117
    .catchall {:try_start_ff .. :try_end_117} :catchall_11e

    .line 123
    invoke-static {v3, v0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_13f

    :catchall_11e
    move-exception p1

    :goto_11f
    if-eqz v1, :cond_127

    .line 123
    invoke-static {v3, v0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 126
    :cond_127
    throw p1

    :cond_128
    const-string p1, "--onCreate--activityIntent is null"

    .line 128
    invoke-static {v3, p1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_13f

    :cond_131
    const-string p1, "--onCreate--h5 bundle not null, will open browser"

    .line 134
    invoke-static {v3, p1}, Lcom/tencent/open/log/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0, v6}, Lcom/tencent/connect/common/AssistActivity;->a(Landroid/os/Bundle;)V

    goto :goto_13f

    :cond_13a
    const-string p1, "is restart"

    .line 139
    invoke-static {v3, p1}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13f
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    const-string v0, "openSDK_LOG.AssistActivity"

    const-string v1, "-->onDestroy"

    .line 196
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 198
    iget-object v0, p0, Lcom/tencent/connect/common/AssistActivity;->e:Lcom/tencent/connect/common/AssistActivity$QQStayReceiver;

    if-eqz v0, :cond_11

    .line 199
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_11
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 10

    const-string v0, "openSDK_LOG.AssistActivity"

    const-string v1, "--onNewIntent"

    .line 206
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string v1, "key_request_code"

    const/4 v2, -0x1

    .line 212
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "stay_back_stack"

    const-string v6, "key_action"

    const/16 v7, 0x277c

    if-ne v1, v7, :cond_37

    const-string v0, "action_request_avatar"

    .line 214
    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 217
    invoke-virtual {p0, v3}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 219
    :cond_29
    invoke-virtual {p0, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 220
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_e8

    .line 221
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_e8

    :cond_37
    const/16 v7, 0x277d

    if-ne v1, v7, :cond_57

    const-string v0, "action_request_set_emotion"

    .line 224
    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 227
    invoke-virtual {p0, v3}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 229
    :cond_49
    invoke-virtual {p0, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 230
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_e8

    .line 231
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_e8

    :cond_57
    const/16 v7, 0x277e

    if-ne v1, v7, :cond_77

    const-string v0, "action_request_dynamic_avatar"

    .line 234
    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 237
    invoke-virtual {p0, v3}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 239
    :cond_69
    invoke-virtual {p0, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 240
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_e8

    .line 241
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_e8

    :cond_77
    const/16 v7, 0x277f

    if-ne v1, v7, :cond_96

    const-string v0, "joinGroup"

    .line 244
    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 247
    invoke-virtual {p0, v3}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 249
    :cond_89
    invoke-virtual {p0, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 250
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_e8

    .line 251
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_e8

    :cond_96
    const/16 v7, 0x2780

    if-ne v1, v7, :cond_b5

    const-string v0, "bindGroup"

    .line 254
    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 257
    invoke-virtual {p0, v3}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 259
    :cond_a8
    invoke-virtual {p0, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 260
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_e8

    .line 261
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_e8

    :cond_b5
    const/16 v3, 0x2781

    const-string v4, "--onNewIntent--activity not finished, finish now"

    if-ne v1, v3, :cond_d4

    const-string v1, "action"

    .line 264
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    invoke-virtual {p0, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 266
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_e8

    .line 267
    invoke-static {v0, v4}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_e8

    :cond_d4
    const-string v1, "action_share"

    .line 271
    invoke-virtual {p1, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    invoke-virtual {p0, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 273
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_e8

    .line 274
    invoke-static {v0, v4}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_e8
    :goto_e8
    return-void
.end method

.method protected onPause()V
    .registers 3

    const-string v0, "openSDK_LOG.AssistActivity"

    const-string v1, "-->onPause"

    .line 183
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/tencent/connect/common/AssistActivity;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 185
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 4

    const-string v0, "openSDK_LOG.AssistActivity"

    const-string v1, "-->onResume"

    .line 151
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 161
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_login"

    const/4 v2, 0x0

    .line 162
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_18

    return-void

    :cond_18
    const-string v1, "is_qq_mobile_share"

    .line 166
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 167
    iget-boolean v0, p0, Lcom/tencent/connect/common/AssistActivity;->c:Z

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 168
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 171
    :cond_2d
    iget-boolean v0, p0, Lcom/tencent/connect/common/AssistActivity;->a:Z

    if-eqz v0, :cond_3d

    .line 172
    iget-object v0, p0, Lcom/tencent/connect/common/AssistActivity;->b:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/tencent/connect/common/AssistActivity;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_3d
    const/4 v0, 0x1

    .line 177
    iput-boolean v0, p0, Lcom/tencent/connect/common/AssistActivity;->a:Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "openSDK_LOG.AssistActivity"

    const-string v1, "--onSaveInstanceState--"

    .line 283
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RESTART_FLAG"

    const/4 v1, 0x1

    .line 284
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 285
    iget-boolean v0, p0, Lcom/tencent/connect/common/AssistActivity;->a:Z

    const-string v1, "RESUME_FLAG"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 286
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .registers 3

    const-string v0, "openSDK_LOG.AssistActivity"

    const-string v1, "-->onStart"

    .line 145
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .registers 3

    const-string v0, "openSDK_LOG.AssistActivity"

    const-string v1, "-->onStop"

    .line 190
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public setResultData(ILandroid/content/Intent;)V
    .registers 14

    const/4 v0, 0x0

    const-string v1, "openSDK_LOG.AssistActivity"

    if-nez p2, :cond_25

    const-string p2, "--setResultData--intent is null, setResult ACTIVITY_CANCEL"

    .line 321
    invoke-static {v1, p2}, Lcom/tencent/open/log/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    const/16 p2, 0x2b5d

    if-ne p1, p2, :cond_24

    .line 325
    invoke-static {}, Lcom/tencent/open/b/e;->a()Lcom/tencent/open/b/e;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/connect/common/AssistActivity;->d:Ljava/lang/String;

    const-string v1, ""

    const-string v3, "2"

    const-string v4, "1"

    const-string v5, "7"

    const-string v6, "2"

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/open/b/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    return-void

    :cond_25
    :try_start_25
    const-string p1, "key_response"

    .line 333
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "--setResultDataForLogin-- "

    .line 334
    invoke-static {v1, v2}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_ab

    .line 336
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "openid"

    .line 337
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p1, "access_token"

    .line 338
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "proxy_code"

    .line 339
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "proxy_expires_in"

    .line 340
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 343
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7a

    const-string p1, "--setResultData--openid and token not empty, setResult ACTIVITY_OK"

    .line 344
    invoke-static {v1, p1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0, v3, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 347
    invoke-static {}, Lcom/tencent/open/b/e;->a()Lcom/tencent/open/b/e;

    move-result-object v4

    iget-object v6, p0, Lcom/tencent/connect/common/AssistActivity;->d:Ljava/lang/String;

    const-string v7, "2"

    const-string v8, "1"

    const-string v9, "7"

    const-string v10, "0"

    invoke-virtual/range {v4 .. v10}, Lcom/tencent/open/b/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bd

    .line 349
    :cond_7a
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8f

    const-wide/16 v4, 0x0

    cmp-long p1, v6, v4

    if-eqz p1, :cond_8f

    const-string p1, "--setResultData--proxy_code and proxy_expires_in are valid"

    .line 350
    invoke-static {v1, p1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0, v3, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_bd

    :cond_8f
    const-string p1, "--setResultData--openid or token is empty, setResult ACTIVITY_CANCEL"

    .line 353
    invoke-static {v1, p1}, Lcom/tencent/open/log/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 356
    invoke-static {}, Lcom/tencent/open/b/e;->a()Lcom/tencent/open/b/e;

    move-result-object v2

    const-string v3, ""

    iget-object v4, p0, Lcom/tencent/connect/common/AssistActivity;->d:Ljava/lang/String;

    const-string v5, "2"

    const-string v6, "1"

    const-string v7, "7"

    const-string v8, "1"

    invoke-virtual/range {v2 .. v8}, Lcom/tencent/open/b/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bd

    :cond_ab
    const-string p1, "--setResultData--response is empty, setResult ACTIVITY_OK"

    .line 370
    invoke-static {v1, p1}, Lcom/tencent/open/log/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0, v3, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_b3} :catch_b4

    goto :goto_bd

    :catch_b4
    move-exception p1

    const-string p2, "--setResultData--parse response failed"

    .line 375
    invoke-static {v1, p2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_bd
    return-void
.end method
