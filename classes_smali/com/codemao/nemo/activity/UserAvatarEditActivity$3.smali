.class Lcom/codemao/nemo/activity/UserAvatarEditActivity$3;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "UserAvatarEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserAvatarEditActivity;->updateAvatar(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/UserAvatarEditActivity;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserAvatarEditActivity;Ljava/lang/String;)V
    .registers 3

    .line 371
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity$3;->this$0:Lcom/codemao/nemo/activity/UserAvatarEditActivity;

    iput-object p2, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 386
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity$3;->this$0:Lcom/codemao/nemo/activity/UserAvatarEditActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->access$000(Lcom/codemao/nemo/activity/UserAvatarEditActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 387
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity$3;->this$0:Lcom/codemao/nemo/activity/UserAvatarEditActivity;

    const-string/jumbo p2, "图片上传失败"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onNetError()V
    .registers 3

    .line 392
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity$3;->this$0:Lcom/codemao/nemo/activity/UserAvatarEditActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->access$000(Lcom/codemao/nemo/activity/UserAvatarEditActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 393
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity$3;->this$0:Lcom/codemao/nemo/activity/UserAvatarEditActivity;

    const-string/jumbo v1, "图片上传失败"

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 371
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/UserAvatarEditActivity$3;->onSuc(Ljava/lang/String;)V

    return-void
.end method

.method public onSuc(Ljava/lang/String;)V
    .registers 5

    .line 374
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity$3;->this$0:Lcom/codemao/nemo/activity/UserAvatarEditActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->access$000(Lcom/codemao/nemo/activity/UserAvatarEditActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 375
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity$3;->this$0:Lcom/codemao/nemo/activity/UserAvatarEditActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->access$200(Lcom/codemao/nemo/activity/UserAvatarEditActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/event/UserAvatarEditEvents;->creatAvatarEditEvent(Ljava/lang/String;)Lcom/codemao/nemo/event/UserAvatarEditEvents;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 376
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object p1

    if-eqz p1, :cond_39

    .line 377
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity$3;->val$url:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->creatUpdateAvatarEvents(JLjava/lang/String;)Lcom/codemao/nemo/event/UpdateUserInfoEvents;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 379
    :cond_39
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity$3;->this$0:Lcom/codemao/nemo/activity/UserAvatarEditActivity;

    const-string/jumbo v0, "修改头像成功"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 380
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity$3;->val$url:Ljava/lang/String;

    invoke-static {p1}, Lcom/codemao/nemo/util/LocalUserHelper;->updateUserAvatar(Ljava/lang/String;)V

    .line 381
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity$3;->this$0:Lcom/codemao/nemo/activity/UserAvatarEditActivity;

    invoke-virtual {p1}, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->finish()V

    return-void
.end method
