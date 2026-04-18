.class public Lcom/codemao/nemo/activity/SwitchEnvActivity;
.super Lcom/giu/xzz/BaseActivity;
.source "SwitchEnvActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    return-void
.end method

.method private setEnv(Ljava/lang/String;)V
    .registers 4

    .line 66
    new-instance v0, Lcom/codemao/nemo/activity/SwitchEnvActivity$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/SwitchEnvActivity$1;-><init>(Lcom/codemao/nemo/activity/SwitchEnvActivity;)V

    new-instance v1, Lcom/codemao/nemo/activity/SwitchEnvActivity$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/SwitchEnvActivity$2;-><init>(Lcom/codemao/nemo/activity/SwitchEnvActivity;)V

    invoke-static {v0, v1}, Lcn/codemao/android/account/CodeMaoAccount;->logout(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 77
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/BcmHelper;->setConfigVO(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x0

    .line 78
    invoke-static {p1}, Lcom/codemao/nemo/util/LocalUserHelper;->logout(Z)V

    .line 79
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    :cond_1a
    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d005f

    return v0
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "环境切换页"

    return-object v0
.end method

.method onClick(Landroid/view/View;)V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_26

    goto :goto_25

    :sswitch_8
    const-string p1, "test"

    .line 48
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/SwitchEnvActivity;->setEnv(Ljava/lang/String;)V

    goto :goto_25

    :sswitch_e
    const-string p1, "staging"

    .line 54
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/SwitchEnvActivity;->setEnv(Ljava/lang/String;)V

    goto :goto_25

    :sswitch_14
    const-string p1, "release"

    .line 57
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/SwitchEnvActivity;->setEnv(Ljava/lang/String;)V

    goto :goto_25

    :sswitch_1a
    const-string p1, "dev"

    .line 51
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/SwitchEnvActivity;->setEnv(Ljava/lang/String;)V

    goto :goto_25

    :sswitch_20
    const-string p1, "default"

    .line 45
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/SwitchEnvActivity;->setEnv(Ljava/lang/String;)V

    :goto_25
    return-void

    :sswitch_data_26
    .sparse-switch
        0x7f0a0831 -> :sswitch_20
        0x7f0a0837 -> :sswitch_1a
        0x7f0a08be -> :sswitch_14
        0x7f0a08e6 -> :sswitch_e
        0x7f0a08ed -> :sswitch_8
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 32
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
