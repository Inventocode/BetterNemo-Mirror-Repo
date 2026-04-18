.class Lcom/codemao/nemo/activity/UserCoverChooseActivity$2;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "UserCoverChooseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserCoverChooseActivity;->updateCover(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/codemao/nemo/activity/UserCoverChooseActivity;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserCoverChooseActivity;Ljava/lang/String;)V
    .registers 3

    .line 162
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserCoverChooseActivity$2;->this$0:Lcom/codemao/nemo/activity/UserCoverChooseActivity;

    iput-object p2, p0, Lcom/codemao/nemo/activity/UserCoverChooseActivity$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 174
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCoverChooseActivity$2;->this$0:Lcom/codemao/nemo/activity/UserCoverChooseActivity;

    const-string/jumbo p2, "封面上传失败"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onNetError()V
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCoverChooseActivity$2;->this$0:Lcom/codemao/nemo/activity/UserCoverChooseActivity;

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 162
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/UserCoverChooseActivity$2;->onSuc(Ljava/lang/String;)V

    return-void
.end method

.method public onSuc(Ljava/lang/String;)V
    .registers 5

    .line 165
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCoverChooseActivity$2;->this$0:Lcom/codemao/nemo/activity/UserCoverChooseActivity;

    const-string/jumbo v0, "封面上传成功"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 166
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 167
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/codemao/nemo/activity/UserCoverChooseActivity$2;->val$url:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->creatUpdateCoverEvents(JLjava/lang/String;)Lcom/codemao/nemo/event/UpdateUserInfoEvents;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 169
    :cond_27
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCoverChooseActivity$2;->this$0:Lcom/codemao/nemo/activity/UserCoverChooseActivity;

    invoke-virtual {p1}, Lcom/giu/xzz/BaseActivity;->finish()V

    return-void
.end method
