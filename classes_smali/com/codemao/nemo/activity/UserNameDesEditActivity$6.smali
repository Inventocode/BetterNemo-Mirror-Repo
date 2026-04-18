.class Lcom/codemao/nemo/activity/UserNameDesEditActivity$6;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "UserNameDesEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserNameDesEditActivity;->updateSign()V
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
.field final synthetic this$0:Lcom/codemao/nemo/activity/UserNameDesEditActivity;

.field final synthetic val$des:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserNameDesEditActivity;Ljava/lang/String;)V
    .registers 3

    .line 260
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$6;->this$0:Lcom/codemao/nemo/activity/UserNameDesEditActivity;

    iput-object p2, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$6;->val$des:Ljava/lang/String;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 274
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$6;->this$0:Lcom/codemao/nemo/activity/UserNameDesEditActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->access$100(Lcom/codemao/nemo/activity/UserNameDesEditActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 275
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$6;->this$0:Lcom/codemao/nemo/activity/UserNameDesEditActivity;

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onNetError()V
    .registers 3

    .line 280
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$6;->this$0:Lcom/codemao/nemo/activity/UserNameDesEditActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->access$100(Lcom/codemao/nemo/activity/UserNameDesEditActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 281
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$6;->this$0:Lcom/codemao/nemo/activity/UserNameDesEditActivity;

    const-string/jumbo v1, "网络错误,请检查后再试"

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 260
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/UserNameDesEditActivity$6;->onSuc(Ljava/lang/String;)V

    return-void
.end method

.method public onSuc(Ljava/lang/String;)V
    .registers 5

    .line 263
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$6;->this$0:Lcom/codemao/nemo/activity/UserNameDesEditActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->access$100(Lcom/codemao/nemo/activity/UserNameDesEditActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 264
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$6;->this$0:Lcom/codemao/nemo/activity/UserNameDesEditActivity;

    const-string/jumbo v0, "签名修改成功"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 265
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$6;->val$des:Ljava/lang/String;

    invoke-static {p1}, Lcom/codemao/nemo/util/LocalUserHelper;->updateUserDes(Ljava/lang/String;)V

    .line 266
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 267
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$6;->val$des:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->creatUpdateDesEvents(JLjava/lang/String;)Lcom/codemao/nemo/event/UpdateUserInfoEvents;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 269
    :cond_35
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$6;->this$0:Lcom/codemao/nemo/activity/UserNameDesEditActivity;

    invoke-virtual {p1}, Lcom/giu/xzz/BaseActivity;->finish()V

    return-void
.end method
