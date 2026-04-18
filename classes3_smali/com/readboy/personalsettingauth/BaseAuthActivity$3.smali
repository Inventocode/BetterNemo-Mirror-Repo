.class Lcom/readboy/personalsettingauth/BaseAuthActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "BaseAuthActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/readboy/personalsettingauth/BaseAuthActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/readboy/personalsettingauth/BaseAuthActivity;


# direct methods
.method constructor <init>(Lcom/readboy/personalsettingauth/BaseAuthActivity;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity$3;->this$0:Lcom/readboy/personalsettingauth/BaseAuthActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 115
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity$3;->this$0:Lcom/readboy/personalsettingauth/BaseAuthActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    :cond_9
    if-eqz p2, :cond_53

    .line 119
    sget-object p1, Lcom/readboy/personalsettingauth/RBConfigureUtil;->RECEIVER_LOGIN_SUCCESSED:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 120
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity$3;->this$0:Lcom/readboy/personalsettingauth/BaseAuthActivity;

    iget-object p1, p1, Lcom/readboy/personalsettingauth/BaseAuthActivity;->rbStandardLoginFragment:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    if-eqz p1, :cond_53

    .line 121
    invoke-virtual {p1}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->onLoginSuccessedCallBack()V

    goto :goto_53

    .line 124
    :cond_21
    sget-object p1, Lcom/readboy/personalsettingauth/RBConfigureUtil;->RECEIVER_LOGIN_FAILED:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_53

    .line 125
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity$3;->this$0:Lcom/readboy/personalsettingauth/BaseAuthActivity;

    iget-object p1, p1, Lcom/readboy/personalsettingauth/BaseAuthActivity;->rbStandardLoginFragment:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    if-eqz p1, :cond_53

    .line 126
    sget-object p1, Lcom/readboy/personalsettingauth/RBConfigureUtil;->RECEIVER_LOGIN_FAILED_ERROR_MSG:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 127
    sget-object v0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->RECEIVER_LOGIN_FAILED_ERROR_NO:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-nez p1, :cond_44

    const-string p1, ""

    .line 131
    :cond_44
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity$3;->this$0:Lcom/readboy/personalsettingauth/BaseAuthActivity;

    iget-object v0, v0, Lcom/readboy/personalsettingauth/BaseAuthActivity;->rbStandardLoginFragment:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    invoke-virtual {v0, p2, p1}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->onUserLoginDataError(ILjava/lang/String;)V

    .line 132
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity$3;->this$0:Lcom/readboy/personalsettingauth/BaseAuthActivity;

    iget-object p1, p1, Lcom/readboy/personalsettingauth/BaseAuthActivity;->rbStandardLoginFragment:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->removeLoginTimeoutMsg(Z)V

    :cond_53
    :goto_53
    return-void
.end method
