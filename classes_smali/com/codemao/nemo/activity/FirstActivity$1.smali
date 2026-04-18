.class Lcom/codemao/nemo/activity/FirstActivity$1;
.super Ljava/lang/Object;
.source "FirstActivity.java"

# interfaces
.implements Lcom/giu/xzz/utils/HandlerUtil$HandleBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/activity/FirstActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/FirstActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/FirstActivity;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/codemao/nemo/activity/FirstActivity$1;->this$0:Lcom/codemao/nemo/activity/FirstActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 78
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_9b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_b

    goto/16 :goto_d5

    .line 89
    :cond_b
    iget-object p1, p0, Lcom/codemao/nemo/activity/FirstActivity$1;->this$0:Lcom/codemao/nemo/activity/FirstActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/FirstActivity;->access$000(Lcom/codemao/nemo/activity/FirstActivity;)Lcom/codemao/nemo/dialog/ReusableDialog;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 90
    iget-object p1, p0, Lcom/codemao/nemo/activity/FirstActivity$1;->this$0:Lcom/codemao/nemo/activity/FirstActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/FirstActivity;->access$000(Lcom/codemao/nemo/activity/FirstActivity;)Lcom/codemao/nemo/dialog/ReusableDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 92
    :cond_1c
    invoke-static {}, Lcom/codemao/nemo/util/BcmHelper;->initPath()V

    .line 93
    invoke-static {v1}, Lcom/codemao/nemo/util/SprefUtil;->putIsFirstOpenApp(Z)V

    .line 94
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->putAPPVersionCode()V

    .line 95
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object p1

    if-eqz p1, :cond_6f

    .line 96
    invoke-static {}, Lcom/codemao/nemo/http/PolicyUtils;->checkSavedPolicyState()Z

    move-result p1

    if-nez p1, :cond_3a

    .line 97
    invoke-static {v1}, Lcom/codemao/nemo/util/LocalUserHelper;->logout(Z)V

    .line 98
    iget-object p1, p0, Lcom/codemao/nemo/activity/FirstActivity$1;->this$0:Lcom/codemao/nemo/activity/FirstActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/FirstActivity;->access$100(Lcom/codemao/nemo/activity/FirstActivity;)V

    return-void

    .line 101
    :cond_3a
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result p1

    if-nez p1, :cond_4f

    .line 102
    new-instance p1, Lcom/codemao/nemo/bean/LocalUserInfo;

    invoke-direct {p1}, Lcom/codemao/nemo/bean/LocalUserInfo;-><init>()V

    .line 103
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/LocalUserInfo;->clone(Lcn/codemao/android/account/bean/UserInfoVO;)V

    .line 104
    invoke-static {p1}, Lcom/codemao/nemo/util/LocalUserHelper;->updateUserInfo(Lcom/codemao/nemo/bean/LocalUserInfo;)V

    .line 106
    :cond_4f
    iget-object p1, p0, Lcom/codemao/nemo/activity/FirstActivity$1;->this$0:Lcom/codemao/nemo/activity/FirstActivity;

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getAccountToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/FirstActivity;->access$200(Lcom/codemao/nemo/activity/FirstActivity;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/event/LoginEvent;

    invoke-direct {v0}, Lcom/codemao/nemo/event/LoginEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 108
    iget-object p1, p0, Lcom/codemao/nemo/activity/FirstActivity$1;->this$0:Lcom/codemao/nemo/activity/FirstActivity;

    invoke-static {p1, v1}, Lcom/codemao/nemo/MainActivityV2;->startMainActivityV2(Landroid/content/Context;Z)V

    .line 109
    iget-object p1, p0, Lcom/codemao/nemo/activity/FirstActivity$1;->this$0:Lcom/codemao/nemo/activity/FirstActivity;

    invoke-virtual {p1}, Lcom/giu/xzz/BaseActivity;->finish()V

    goto :goto_74

    .line 111
    :cond_6f
    iget-object p1, p0, Lcom/codemao/nemo/activity/FirstActivity$1;->this$0:Lcom/codemao/nemo/activity/FirstActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/FirstActivity;->access$100(Lcom/codemao/nemo/activity/FirstActivity;)V

    .line 114
    :goto_74
    sget-object p1, Lcom/codemao/nemo/beginner/BeginnerModeManager;->INSTANCE:Lcom/codemao/nemo/beginner/BeginnerModeManager;

    invoke-virtual {p1}, Lcom/codemao/nemo/beginner/BeginnerModeManager;->needShowBeginner()Z

    move-result p1

    if-nez p1, :cond_d5

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/codemao/nemo/activity/FirstActivity$1;->this$0:Lcom/codemao/nemo/activity/FirstActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/newbee/video/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/giu/xzz/utils/FileUtil;->deleteDirectory(Ljava/lang/String;)V

    goto :goto_d5

    .line 80
    :cond_9b
    iget-object p1, p0, Lcom/codemao/nemo/activity/FirstActivity$1;->this$0:Lcom/codemao/nemo/activity/FirstActivity;

    new-instance v0, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;

    invoke-direct {v0, p1}, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f130141

    .line 81
    invoke-virtual {v0, v2}, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->setTheme(I)Lcom/codemao/nemo/dialog/ReusableDialog$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->setScreenFull(Z)Lcom/codemao/nemo/dialog/ReusableDialog$Builder;

    move-result-object v0

    .line 83
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenHeight()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fdccccccccccccdL  # 0.45

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->setTop(I)Lcom/codemao/nemo/dialog/ReusableDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d034b

    .line 84
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->setContentView(I)Lcom/codemao/nemo/dialog/ReusableDialog$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->build()Lcom/codemao/nemo/dialog/ReusableDialog;

    move-result-object v0

    .line 80
    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/FirstActivity;->access$002(Lcom/codemao/nemo/activity/FirstActivity;Lcom/codemao/nemo/dialog/ReusableDialog;)Lcom/codemao/nemo/dialog/ReusableDialog;

    .line 86
    iget-object p1, p0, Lcom/codemao/nemo/activity/FirstActivity$1;->this$0:Lcom/codemao/nemo/activity/FirstActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/FirstActivity;->access$000(Lcom/codemao/nemo/activity/FirstActivity;)Lcom/codemao/nemo/dialog/ReusableDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_d5
    :goto_d5
    return-void
.end method
