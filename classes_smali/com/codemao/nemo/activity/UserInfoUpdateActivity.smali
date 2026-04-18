.class public Lcom/codemao/nemo/activity/UserInfoUpdateActivity;
.super Lcom/giu/xzz/BaseActivity;
.source "UserInfoUpdateActivity.java"


# instance fields
.field discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

.field ivAvatar:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivBottom:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvNickName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvSign:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/activity/UserInfoUpdateActivity;)V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserInfoUpdateActivity;->initData()V

    return-void
.end method

.method private getUserDetail()V
    .registers 6

    .line 82
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 83
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1c

    .line 84
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserInfoUpdateActivity;->initData()V

    return-void

    .line 87
    :cond_1c
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoUpdateActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v1

    invoke-virtual {v1}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-instance v3, Lcom/codemao/nemo/activity/UserInfoUpdateActivity$1;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/activity/UserInfoUpdateActivity$1;-><init>(Lcom/codemao/nemo/activity/UserInfoUpdateActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->getUserDetail(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    :cond_32
    return-void
.end method

.method private initData()V
    .registers 3

    .line 63
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 64
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoUpdateActivity;->tvNickName:Landroid/widget/TextView;

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoUpdateActivity;->tvSign:Landroid/widget/TextView;

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LocalUserInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/UserInfoUpdateActivity;->ivAvatar:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_5b

    .line 67
    :cond_2e
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 68
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoUpdateActivity;->tvNickName:Landroid/widget/TextView;

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v1

    invoke-virtual {v1}, Lcn/codemao/android/account/bean/UserInfoVO;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoUpdateActivity;->tvSign:Landroid/widget/TextView;

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v1

    invoke-virtual {v1}, Lcn/codemao/android/account/bean/UserInfoVO;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/bean/UserInfoVO;->getAvatar_url()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/UserInfoUpdateActivity;->ivAvatar:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_5b
    :goto_5b
    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d0069

    return v0
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "用户信息编辑页"

    return-object v0
.end method

.method onClick(Landroid/view/View;)V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 154
    const-class v0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v1, "type"

    const-string v2, "content"

    sparse-switch p1, :sswitch_data_5a

    goto :goto_59

    .line 169
    :sswitch_e
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoUpdateActivity;->tvSign:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 171
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0, p1}, Lcom/giu/xzz/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_59

    .line 159
    :sswitch_28
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoUpdateActivity;->tvNickName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    invoke-virtual {p0, p1}, Lcom/giu/xzz/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_59

    .line 165
    :sswitch_42
    sget-object p1, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->Companion:Lcom/codemao/nemo/setting/UserAvatarChooseActivity$Companion;

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isOffical()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$Companion;->getCallIntent(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object p1

    .line 166
    invoke-virtual {p0, p1}, Lcom/giu/xzz/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_59

    .line 156
    :sswitch_50
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    goto :goto_59

    :sswitch_54
    const-string p1, "https://lbk-mobile.codemao.cn/cancel-account"

    .line 187
    invoke-static {p0, p1}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->goWeb(Landroid/content/Context;Ljava/lang/String;)V

    :goto_59
    return-void

    :sswitch_data_5a
    .sparse-switch
        0x7f0a01c9 -> :sswitch_54
        0x7f0a037b -> :sswitch_50
        0x7f0a0664 -> :sswitch_42
        0x7f0a0666 -> :sswitch_28
        0x7f0a0667 -> :sswitch_e
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 48
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f400000  # 0.75f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 50
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoUpdateActivity;->ivBottom:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 51
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoUpdateActivity;->ivBottom:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    mul-int/lit8 p1, p1, 0x5

    div-int/lit8 p1, p1, 0x8

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 52
    new-instance p1, Lcom/codemao/nemo/http/DiscoveryNetUtil;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/http/DiscoveryNetUtil;-><init>(Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;)V

    iput-object p1, p0, Lcom/codemao/nemo/activity/UserInfoUpdateActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    .line 53
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 54
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserInfoUpdateActivity;->initData()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 142
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onDestroy()V

    .line 143
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 77
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onResume()V

    .line 78
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserInfoUpdateActivity;->getUserDetail()V

    return-void
.end method

.method public saveSuccess(Lcom/codemao/nemo/event/UpdateUserInfoEvents;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 195
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_22

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    goto :goto_2b

    .line 197
    :cond_e
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->getNewAvatarUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoUpdateActivity;->ivAvatar:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_2b

    .line 203
    :cond_18
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoUpdateActivity;->tvSign:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->getNewDes()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2b

    .line 200
    :cond_22
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoUpdateActivity;->tvNickName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->getNewNickName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2b
    return-void
.end method

.method protected statusFontMode()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
