.class Lcom/codemao/nemo/activity/UserNameDesEditActivity$5;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "UserNameDesEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserNameDesEditActivity;->updateNickName()V
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

.field final synthetic val$nickName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserNameDesEditActivity;Ljava/lang/String;)V
    .registers 3

    .line 192
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$5;->this$0:Lcom/codemao/nemo/activity/UserNameDesEditActivity;

    iput-object p2, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$5;->val$nickName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 207
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$5;->this$0:Lcom/codemao/nemo/activity/UserNameDesEditActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->access$100(Lcom/codemao/nemo/activity/UserNameDesEditActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const-string v0, "40103003"

    .line 208
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 209
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$5;->this$0:Lcom/codemao/nemo/activity/UserNameDesEditActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->tvUsedNotice:Landroid/widget/TextView;

    const-string/jumbo p2, "该昵称已被使用了，换一个吧！"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$5;->this$0:Lcom/codemao/nemo/activity/UserNameDesEditActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->tvUsedNotice:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5d

    :cond_24
    const-string v0, "40100003"

    .line 211
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 212
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$5;->this$0:Lcom/codemao/nemo/activity/UserNameDesEditActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->tvUsedNotice:Landroid/widget/TextView;

    const-string/jumbo p2, "昵称里有不符合规定的字词，修改后再试试吧！"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$5;->this$0:Lcom/codemao/nemo/activity/UserNameDesEditActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->tvUsedNotice:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5d

    :cond_3e
    const-string v0, "40103004"

    .line 214
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_58

    .line 215
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$5;->this$0:Lcom/codemao/nemo/activity/UserNameDesEditActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->tvUsedNotice:Landroid/widget/TextView;

    const-string/jumbo p2, "请使用数字、字母、汉字或下划线来设置昵称"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$5;->this$0:Lcom/codemao/nemo/activity/UserNameDesEditActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->tvUsedNotice:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5d

    .line 218
    :cond_58
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$5;->this$0:Lcom/codemao/nemo/activity/UserNameDesEditActivity;

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_5d
    return-void
.end method

.method public onNetError()V
    .registers 2

    .line 224
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$5;->this$0:Lcom/codemao/nemo/activity/UserNameDesEditActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->access$100(Lcom/codemao/nemo/activity/UserNameDesEditActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 225
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$5;->this$0:Lcom/codemao/nemo/activity/UserNameDesEditActivity;

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 192
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/UserNameDesEditActivity$5;->onSuc(Ljava/lang/String;)V

    return-void
.end method

.method public onSuc(Ljava/lang/String;)V
    .registers 5

    .line 195
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$5;->this$0:Lcom/codemao/nemo/activity/UserNameDesEditActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->access$100(Lcom/codemao/nemo/activity/UserNameDesEditActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 196
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$5;->this$0:Lcom/codemao/nemo/activity/UserNameDesEditActivity;

    const-string/jumbo v0, "昵称修改成功"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 197
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$5;->val$nickName:Ljava/lang/String;

    invoke-static {p1}, Lcom/codemao/nemo/util/LocalUserHelper;->updateUserNickName(Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object p1

    if-eqz p1, :cond_31

    .line 200
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {p1}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object p1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$5;->val$nickName:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->creatUpdateNickNameEvents(JLjava/lang/String;)Lcom/codemao/nemo/event/UpdateUserInfoEvents;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 202
    :cond_31
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$5;->this$0:Lcom/codemao/nemo/activity/UserNameDesEditActivity;

    invoke-virtual {p1}, Lcom/giu/xzz/BaseActivity;->finish()V

    return-void
.end method
