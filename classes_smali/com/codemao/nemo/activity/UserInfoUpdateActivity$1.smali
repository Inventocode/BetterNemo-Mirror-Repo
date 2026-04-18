.class Lcom/codemao/nemo/activity/UserInfoUpdateActivity$1;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "UserInfoUpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserInfoUpdateActivity;->getUserDetail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Lcom/codemao/nemo/bean/UserDetailInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/UserInfoUpdateActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserInfoUpdateActivity;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserInfoUpdateActivity$1;->this$0:Lcom/codemao/nemo/activity/UserInfoUpdateActivity;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 108
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoUpdateActivity$1;->this$0:Lcom/codemao/nemo/activity/UserInfoUpdateActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserInfoUpdateActivity;->access$000(Lcom/codemao/nemo/activity/UserInfoUpdateActivity;)V

    return-void
.end method

.method public onNetError()V
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoUpdateActivity$1;->this$0:Lcom/codemao/nemo/activity/UserInfoUpdateActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/UserInfoUpdateActivity;->access$000(Lcom/codemao/nemo/activity/UserInfoUpdateActivity;)V

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/bean/UserDetailInfo;)V
    .registers 6

    if-eqz p1, :cond_8f

    .line 91
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserDetailInfo;->getUser_description()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/LocalUserHelper;->updateUserDes(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserDetailInfo;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/LocalUserHelper;->updateUserNickName(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserDetailInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/LocalUserHelper;->updateUserAvatar(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 95
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v1

    invoke-virtual {v1}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserDetailInfo;->getUser_description()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->creatUpdateDesEvents(JLjava/lang/String;)Lcom/codemao/nemo/event/UpdateUserInfoEvents;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 96
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v1

    invoke-virtual {v1}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserDetailInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->creatUpdateAvatarEvents(JLjava/lang/String;)Lcom/codemao/nemo/event/UpdateUserInfoEvents;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 97
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v1

    invoke-virtual {v1}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserDetailInfo;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->creatUpdateNickNameEvents(JLjava/lang/String;)Lcom/codemao/nemo/event/UpdateUserInfoEvents;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 99
    :cond_6e
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserDetailInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/UserInfoUpdateActivity$1;->this$0:Lcom/codemao/nemo/activity/UserInfoUpdateActivity;

    iget-object v1, v1, Lcom/codemao/nemo/activity/UserInfoUpdateActivity;->ivAvatar:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 100
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoUpdateActivity$1;->this$0:Lcom/codemao/nemo/activity/UserInfoUpdateActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/UserInfoUpdateActivity;->tvNickName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserDetailInfo;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoUpdateActivity$1;->this$0:Lcom/codemao/nemo/activity/UserInfoUpdateActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/UserInfoUpdateActivity;->tvSign:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserDetailInfo;->getUser_description()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :cond_8f
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoUpdateActivity$1;->this$0:Lcom/codemao/nemo/activity/UserInfoUpdateActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserInfoUpdateActivity;->access$000(Lcom/codemao/nemo/activity/UserInfoUpdateActivity;)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 87
    check-cast p1, Lcom/codemao/nemo/bean/UserDetailInfo;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/UserInfoUpdateActivity$1;->onSuc(Lcom/codemao/nemo/bean/UserDetailInfo;)V

    return-void
.end method
