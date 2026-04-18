.class public Lcom/ainirobot/oauth/AuthActivity;
.super Landroid/app/Activity;
.source "AuthActivity.java"

# interfaces
.implements Lcom/ainirobot/oauth/contract/AuthContract$View;


# static fields
.field private static mIUiListener:Lcom/ainirobot/oauth/IUiListener;


# instance fields
.field private animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private mAuthPresenter:Lcom/ainirobot/oauth/presenter/AuthPresenter;

.field private mAuthView:Landroid/view/View;

.field private mLoadingAni:Landroid/widget/ImageView;

.field private mLoadingView:Landroid/view/View;

.field private mSelfLoginView:Landroid/view/View;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getCoreIntent()Landroid/content/Intent;
    .registers 4

    .line 60
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.ainirobot.coreservice"

    const-string v2, "com.ainirobot.coreservice.service.NewCoreService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.ainirobot.coreservice.third"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v1
.end method

.method private hideLoadingView()V
    .registers 3

    .line 131
    invoke-direct {p0}, Lcom/ainirobot/oauth/AuthActivity;->stopLoading()V

    .line 132
    iget-object v0, p0, Lcom/ainirobot/oauth/AuthActivity;->mAuthView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/ainirobot/oauth/AuthActivity;->mLoadingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showLoadingView()V
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/ainirobot/oauth/AuthActivity;->mAuthView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/ainirobot/oauth/AuthActivity;->mLoadingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    invoke-direct {p0}, Lcom/ainirobot/oauth/AuthActivity;->startLoading()V

    return-void
.end method

.method private startLoading()V
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/ainirobot/oauth/AuthActivity;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_7

    .line 100
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_7
    return-void
.end method

.method private stopLoading()V
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/ainirobot/oauth/AuthActivity;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_7

    .line 138
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_7
    return-void
.end method


# virtual methods
.method public getCcontext()Landroid/content/Context;
    .registers 2

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public onAuthClick(Landroid/view/View;)V
    .registers 2

    .line 71
    iget-object p1, p0, Lcom/ainirobot/oauth/AuthActivity;->mAuthPresenter:Lcom/ainirobot/oauth/presenter/AuthPresenter;

    invoke-virtual {p1}, Lcom/ainirobot/oauth/presenter/AuthPresenter;->doLogin()V

    return-void
.end method

.method public onCloseClick(Landroid/view/View;)V
    .registers 2

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget p1, Lcom/ainirobot/oauth/R$layout;->activity_auth:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 42
    sget p1, Lcom/ainirobot/oauth/R$id;->layout_auth:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ainirobot/oauth/AuthActivity;->mAuthView:Landroid/view/View;

    .line 43
    sget p1, Lcom/ainirobot/oauth/R$id;->layout_loading:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ainirobot/oauth/AuthActivity;->mLoadingView:Landroid/view/View;

    .line 44
    sget p1, Lcom/ainirobot/oauth/R$id;->animation_loading:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/ainirobot/oauth/AuthActivity;->mLoadingAni:Landroid/widget/ImageView;

    .line 45
    sget p1, Lcom/ainirobot/oauth/R$id;->tv_has_self_account:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ainirobot/oauth/AuthActivity;->mSelfLoginView:Landroid/view/View;

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/ainirobot/oauth/R$drawable;->loading:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/ainirobot/oauth/AuthActivity;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 50
    iget-object v0, p0, Lcom/ainirobot/oauth/AuthActivity;->mLoadingAni:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    new-instance p1, Lcom/ainirobot/oauth/presenter/AuthPresenter;

    invoke-direct {p1, p0}, Lcom/ainirobot/oauth/presenter/AuthPresenter;-><init>(Lcom/ainirobot/oauth/AuthActivity;)V

    iput-object p1, p0, Lcom/ainirobot/oauth/AuthActivity;->mAuthPresenter:Lcom/ainirobot/oauth/presenter/AuthPresenter;

    .line 54
    invoke-virtual {p1}, Lcom/ainirobot/oauth/presenter/AuthPresenter;->getConnection()Landroid/content/ServiceConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/ainirobot/oauth/AuthActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 55
    invoke-direct {p0}, Lcom/ainirobot/oauth/AuthActivity;->getCoreIntent()Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/ainirobot/oauth/AuthActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 146
    :try_start_3
    iget-object v0, p0, Lcom/ainirobot/oauth/AuthActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_d
    return-void
.end method

.method public onFailed(Ljava/lang/String;Z)V
    .registers 4

    .line 114
    invoke-direct {p0}, Lcom/ainirobot/oauth/AuthActivity;->hideLoadingView()V

    .line 115
    sget-object v0, Lcom/ainirobot/oauth/AuthActivity;->mIUiListener:Lcom/ainirobot/oauth/IUiListener;

    if-eqz v0, :cond_a

    .line 116
    invoke-interface {v0, p1}, Lcom/ainirobot/oauth/IUiListener;->onError(Ljava/lang/String;)V

    :cond_a
    if-eqz p2, :cond_10

    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 122
    :cond_10
    invoke-virtual {p0}, Lcom/ainirobot/oauth/AuthActivity;->getCcontext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/ainirobot/oauth/R$string;->error_tip:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSelfLoginNow(Landroid/view/View;)V
    .registers 2

    .line 75
    iget-object p1, p0, Lcom/ainirobot/oauth/AuthActivity;->mAuthPresenter:Lcom/ainirobot/oauth/presenter/AuthPresenter;

    invoke-virtual {p1}, Lcom/ainirobot/oauth/presenter/AuthPresenter;->doSelfLoginNow()V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 3

    .line 106
    sget-object v0, Lcom/ainirobot/oauth/AuthActivity;->mIUiListener:Lcom/ainirobot/oauth/IUiListener;

    if-eqz v0, :cond_a

    .line 107
    invoke-interface {v0, p1}, Lcom/ainirobot/oauth/IUiListener;->onComplete(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_a
    return-void
.end method

.method public setAccountView(Z)V
    .registers 3

    .line 127
    iget-object v0, p0, Lcom/ainirobot/oauth/AuthActivity;->mSelfLoginView:Landroid/view/View;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_7

    :cond_6
    const/4 p1, 0x4

    :goto_7
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showLoading()V
    .registers 1

    .line 88
    invoke-direct {p0}, Lcom/ainirobot/oauth/AuthActivity;->showLoadingView()V

    return-void
.end method
