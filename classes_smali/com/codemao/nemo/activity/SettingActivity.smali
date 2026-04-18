.class public Lcom/codemao/nemo/activity/SettingActivity;
.super Lcom/giu/xzz/BaseActivity;
.source "SettingActivity.java"


# instance fields
.field private hasNewVersion:Z

.field ivSwitch:Lcom/codemao/nemo/view/SwitchButton;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivUpdate:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlUpdate:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlUserInfo:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvHasNewVersion:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvLogout:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvVersion:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private updateString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/SettingActivity;->hasNewVersion:Z

    const-string/jumbo v0, "当前版本不是最新版本，马上更新体验新功能吧！"

    .line 62
    iput-object v0, p0, Lcom/codemao/nemo/activity/SettingActivity;->updateString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/codemao/nemo/activity/SettingActivity;Z)Z
    .registers 2

    .line 41
    iput-boolean p1, p0, Lcom/codemao/nemo/activity/SettingActivity;->hasNewVersion:Z

    return p1
.end method

.method static synthetic access$102(Lcom/codemao/nemo/activity/SettingActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/codemao/nemo/activity/SettingActivity;->updateString:Ljava/lang/String;

    return-object p1
.end method

.method private getUpdateInfo()V
    .registers 3

    .line 87
    invoke-static {}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->get()Lcom/codemao/nemo/sdk/update/UpdateHelper;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/activity/SettingActivity$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/SettingActivity$1;-><init>(Lcom/codemao/nemo/activity/SettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->getIfHasNewVersion(Lcom/codemao/nemo/sdk/update/UpdateHelper$CheckHasNewVersionCallBack;)V

    return-void
.end method

.method private initView()V
    .registers 3

    .line 106
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getChannel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 108
    iget-object v0, p0, Lcom/codemao/nemo/activity/SettingActivity;->rlUpdate:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 110
    :cond_13
    iget-object v0, p0, Lcom/codemao/nemo/activity/SettingActivity;->rlUpdate:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2c

    .line 112
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 115
    :cond_2c
    iget-object v0, p0, Lcom/codemao/nemo/activity/SettingActivity;->tvVersion:Landroid/widget/TextView;

    const-string/jumbo v1, "版本号5.10.0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/codemao/nemo/activity/SettingActivity;->ivSwitch:Lcom/codemao/nemo/view/SwitchButton;

    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getCurUserEyeshieldMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/SwitchButton;->setChecked(Z)V

    .line 125
    iget-object v0, p0, Lcom/codemao/nemo/activity/SettingActivity;->ivSwitch:Lcom/codemao/nemo/view/SwitchButton;

    new-instance v1, Lcom/codemao/nemo/activity/SettingActivity$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/SettingActivity$2;-><init>(Lcom/codemao/nemo/activity/SettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/SwitchButton;->setOnCheckedChangeListener(Lcom/codemao/nemo/view/SwitchButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private update()V
    .registers 3

    .line 136
    new-instance v0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "这次算了"

    .line 137
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    const-string/jumbo v1, "火速更新"

    .line 138
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    const-string v1, ""

    .line 139
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->titleStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/SettingActivity;->updateString:Ljava/lang/String;

    .line 140
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->contentStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    .line 141
    new-instance v1, Lcom/codemao/nemo/activity/SettingActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/codemao/nemo/activity/SettingActivity$3;-><init>(Lcom/codemao/nemo/activity/SettingActivity;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 149
    new-instance v1, Lcom/codemao/nemo/activity/SettingActivity$4;

    invoke-direct {v1, p0, v0}, Lcom/codemao/nemo/activity/SettingActivity$4;-><init>(Lcom/codemao/nemo/activity/SettingActivity;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 156
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d0058

    return v0
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "设置页"

    return-object v0
.end method

.method onClick(Landroid/view/View;)V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_6e

    goto :goto_6c

    :sswitch_9
    new-array p1, v0, [Ljava/lang/String;

    const-string/jumbo v0, "设置页-点击退出当前账号"

    .line 225
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 226
    invoke-static {p1}, Lcom/codemao/nemo/util/LocalUserHelper;->logout(Z)V

    .line 227
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    goto :goto_6c

    .line 174
    :sswitch_19
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/SettingActivity;->hasNewVersion:Z

    if-nez p1, :cond_1e

    return-void

    :cond_1e
    new-array p1, v0, [Ljava/lang/String;

    const-string/jumbo v0, "设置页-点击版本更新"

    .line 177
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 178
    invoke-direct {p0}, Lcom/codemao/nemo/activity/SettingActivity;->update()V

    goto :goto_6c

    .line 166
    :sswitch_2a
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/codemao/nemo/biz/user/UserRelatedAgreementActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    invoke-virtual {p0, p1}, Lcom/giu/xzz/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_6c

    :sswitch_35
    new-array p1, v0, [Ljava/lang/String;

    const-string/jumbo v0, "设置页-点击个人资料"

    .line 186
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 187
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/codemao/nemo/activity/UserInfoUpdateActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    invoke-virtual {p0, p1}, Lcom/giu/xzz/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_6c

    .line 230
    :sswitch_48
    sget-object p1, Lcom/codemao/nemo/activity/DeviceInfoActivity;->Companion:Lcom/codemao/nemo/activity/DeviceInfoActivity$Companion;

    invoke-virtual {p1, p0}, Lcom/codemao/nemo/activity/DeviceInfoActivity$Companion;->startActivity(Landroid/content/Context;)V

    goto :goto_6c

    :sswitch_4e
    new-array p1, v0, [Ljava/lang/String;

    const-string/jumbo v0, "设置页-点击关于"

    .line 181
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 182
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/codemao/nemo/activity/AboutActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    invoke-virtual {p0, p1}, Lcom/giu/xzz/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_6c

    :sswitch_61
    new-array p1, v0, [Ljava/lang/String;

    const-string/jumbo v0, "设置页-点击返回"

    .line 170
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    :goto_6c
    return-void

    nop

    :sswitch_data_6e
    .sparse-switch
        0x7f0a037b -> :sswitch_61
        0x7f0a0624 -> :sswitch_4e
        0x7f0a0632 -> :sswitch_48
        0x7f0a0665 -> :sswitch_35
        0x7f0a0668 -> :sswitch_2a
        0x7f0a0669 -> :sswitch_19
        0x7f0a0880 -> :sswitch_9
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 71
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-direct {p0}, Lcom/codemao/nemo/activity/SettingActivity;->initView()V

    .line 74
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result p1

    if-nez p1, :cond_18

    .line 75
    iget-object p1, p0, Lcom/codemao/nemo/activity/SettingActivity;->rlUserInfo:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 76
    iget-object p1, p0, Lcom/codemao/nemo/activity/SettingActivity;->tvLogout:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    :cond_18
    invoke-direct {p0}, Lcom/codemao/nemo/activity/SettingActivity;->getUpdateInfo()V

    return-void
.end method
