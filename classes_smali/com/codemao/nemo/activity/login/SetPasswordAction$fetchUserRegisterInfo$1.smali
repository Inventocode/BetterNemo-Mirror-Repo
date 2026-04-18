.class public final Lcom/codemao/nemo/activity/login/SetPasswordAction$fetchUserRegisterInfo$1;
.super Lcom/codemao/nemo/retrofit/response/CommonSubcriber;
.source "SetPasswordAction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/login/SetPasswordAction;->fetchUserRegisterInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/retrofit/response/CommonSubcriber<",
        "Lcom/codemao/nemo/bean/UserRegisterInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/login/SetPasswordAction;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/login/SetPasswordAction;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/activity/login/SetPasswordAction$fetchUserRegisterInfo$1;->this$0:Lcom/codemao/nemo/activity/login/SetPasswordAction;

    .line 182
    invoke-direct {p0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "msg"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/SetPasswordAction$fetchUserRegisterInfo$1;->this$0:Lcom/codemao/nemo/activity/login/SetPasswordAction;

    invoke-virtual {p1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->hideDialog()V

    .line 207
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/SetPasswordAction$fetchUserRegisterInfo$1;->this$0:Lcom/codemao/nemo/activity/login/SetPasswordAction;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/codemao/nemo/activity/login/SetPasswordAction;->access$setData(Lcom/codemao/nemo/activity/login/SetPasswordAction;J)V

    const-string p1, "4"

    const/4 p2, 0x1

    .line 208
    invoke-static {p1, p2}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendLoginEvent(Ljava/lang/String;Z)V

    .line 209
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/codemao/nemo/event/LoginEvent;

    invoke-direct {p2}, Lcom/codemao/nemo/event/LoginEvent;-><init>()V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 210
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/codemao/nemo/activity/login/SetPasswordAction$fetchUserRegisterInfo$1;->this$0:Lcom/codemao/nemo/activity/login/SetPasswordAction;

    invoke-virtual {p2}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p2

    const-class v0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    iget-object p2, p0, Lcom/codemao/nemo/activity/login/SetPasswordAction$fetchUserRegisterInfo$1;->this$0:Lcom/codemao/nemo/activity/login/SetPasswordAction;

    invoke-virtual {p2}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p2

    if-eqz p2, :cond_40

    invoke-virtual {p2, p1}, Lcom/giu/xzz/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 212
    :cond_40
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object p1

    const-class p2, Lcom/codemao/nemo/activity/LoginActivity;

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/util/ActivityUtils;->killActivity(Ljava/lang/Class;)V

    .line 213
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/SetPasswordAction$fetchUserRegisterInfo$1;->this$0:Lcom/codemao/nemo/activity/login/SetPasswordAction;

    invoke-virtual {p1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p1

    if-eqz p1, :cond_54

    invoke-virtual {p1}, Lcom/giu/xzz/BaseActivity;->finish()V

    :cond_54
    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "msg"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, ""

    .line 217
    invoke-virtual {p0, p1, p1}, Lcom/codemao/nemo/activity/login/SetPasswordAction$fetchUserRegisterInfo$1;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Lcom/codemao/nemo/bean/UserRegisterInfo;)V
    .registers 11

    .line 184
    const-class v0, Lcom/codemao/nemo/activity/LoginActivity;

    const-class v1, Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    iget-object v2, p0, Lcom/codemao/nemo/activity/login/SetPasswordAction$fetchUserRegisterInfo$1;->this$0:Lcom/codemao/nemo/activity/login/SetPasswordAction;

    invoke-virtual {v2}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->hideDialog()V

    const/4 v2, 0x1

    const-string v3, "4"

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_5e

    .line 185
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserRegisterInfo;->getRegisterTime()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-gtz v8, :cond_19

    goto :goto_5e

    .line 195
    :cond_19
    iget-object v4, p0, Lcom/codemao/nemo/activity/login/SetPasswordAction$fetchUserRegisterInfo$1;->this$0:Lcom/codemao/nemo/activity/login/SetPasswordAction;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserRegisterInfo;->getRegisterTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    invoke-static {v4, v5, v6}, Lcom/codemao/nemo/activity/login/SetPasswordAction;->access$setData(Lcom/codemao/nemo/activity/login/SetPasswordAction;J)V

    .line 196
    invoke-static {v3, v2}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendLoginEvent(Ljava/lang/String;Z)V

    .line 197
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v2, Lcom/codemao/nemo/event/LoginEvent;

    invoke-direct {v2}, Lcom/codemao/nemo/event/LoginEvent;-><init>()V

    invoke-virtual {p1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 198
    new-instance p1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/codemao/nemo/activity/login/SetPasswordAction$fetchUserRegisterInfo$1;->this$0:Lcom/codemao/nemo/activity/login/SetPasswordAction;

    invoke-virtual {v2}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v2

    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    iget-object v1, p0, Lcom/codemao/nemo/activity/login/SetPasswordAction$fetchUserRegisterInfo$1;->this$0:Lcom/codemao/nemo/activity/login/SetPasswordAction;

    invoke-virtual {v1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v1

    if-eqz v1, :cond_4b

    invoke-virtual {v1, p1}, Lcom/giu/xzz/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 200
    :cond_4b
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/util/ActivityUtils;->killActivity(Ljava/lang/Class;)V

    .line 201
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/SetPasswordAction$fetchUserRegisterInfo$1;->this$0:Lcom/codemao/nemo/activity/login/SetPasswordAction;

    invoke-virtual {p1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p1

    if-eqz p1, :cond_5d

    invoke-virtual {p1}, Lcom/giu/xzz/BaseActivity;->finish()V

    :cond_5d
    return-void

    .line 186
    :cond_5e
    :goto_5e
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/SetPasswordAction$fetchUserRegisterInfo$1;->this$0:Lcom/codemao/nemo/activity/login/SetPasswordAction;

    invoke-static {p1, v4, v5}, Lcom/codemao/nemo/activity/login/SetPasswordAction;->access$setData(Lcom/codemao/nemo/activity/login/SetPasswordAction;J)V

    .line 187
    invoke-static {v3, v2}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendLoginEvent(Ljava/lang/String;Z)V

    .line 188
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v2, Lcom/codemao/nemo/event/LoginEvent;

    invoke-direct {v2}, Lcom/codemao/nemo/event/LoginEvent;-><init>()V

    invoke-virtual {p1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 189
    new-instance p1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/codemao/nemo/activity/login/SetPasswordAction$fetchUserRegisterInfo$1;->this$0:Lcom/codemao/nemo/activity/login/SetPasswordAction;

    invoke-virtual {v2}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v2

    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    iget-object v1, p0, Lcom/codemao/nemo/activity/login/SetPasswordAction$fetchUserRegisterInfo$1;->this$0:Lcom/codemao/nemo/activity/login/SetPasswordAction;

    invoke-virtual {v1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v1

    if-eqz v1, :cond_88

    invoke-virtual {v1, p1}, Lcom/giu/xzz/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 191
    :cond_88
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/util/ActivityUtils;->killActivity(Ljava/lang/Class;)V

    .line 192
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/SetPasswordAction$fetchUserRegisterInfo$1;->this$0:Lcom/codemao/nemo/activity/login/SetPasswordAction;

    invoke-virtual {p1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p1

    if-eqz p1, :cond_9a

    invoke-virtual {p1}, Lcom/giu/xzz/BaseActivity;->finish()V

    :cond_9a
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 182
    check-cast p1, Lcom/codemao/nemo/bean/UserRegisterInfo;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/login/SetPasswordAction$fetchUserRegisterInfo$1;->onSuccess(Lcom/codemao/nemo/bean/UserRegisterInfo;)V

    return-void
.end method
