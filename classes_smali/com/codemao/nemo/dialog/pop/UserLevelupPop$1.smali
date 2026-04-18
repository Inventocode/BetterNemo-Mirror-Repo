.class Lcom/codemao/nemo/dialog/pop/UserLevelupPop$1;
.super Ljava/lang/Object;
.source "UserLevelupPop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/dialog/pop/UserLevelupPop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/dialog/pop/UserLevelupPop;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/pop/UserLevelupPop;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop$1;->this$0:Lcom/codemao/nemo/dialog/pop/UserLevelupPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .line 59
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop$1;->this$0:Lcom/codemao/nemo/dialog/pop/UserLevelupPop;

    iget-boolean v0, p1, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->isConsumeLevelUp:Z

    if-eqz v0, :cond_2d

    .line 60
    sget-object v0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->Companion:Lcom/codemao/nemo/setting/UserAvatarChooseActivity$Companion;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isOffical()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$Companion;->getCallIntent(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object p1

    .line 61
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop$1;->this$0:Lcom/codemao/nemo/dialog/pop/UserLevelupPop;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_23

    const/high16 v0, 0x10000000

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 64
    :cond_23
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop$1;->this$0:Lcom/codemao/nemo/dialog/pop/UserLevelupPop;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_7e

    .line 66
    :cond_2d
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    if-eqz p1, :cond_54

    .line 67
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop$1;->this$0:Lcom/codemao/nemo/dialog/pop/UserLevelupPop;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getId()J

    move-result-wide v2

    const-string/jumbo v4, "我的"

    const-string v5, ""

    const-string v6, ""

    invoke-static/range {v0 .. v6}, Lcom/codemao/nemo/activity/UserDetailActivity;->goDetail(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7e

    .line 68
    :cond_54
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object p1

    if-eqz p1, :cond_7e

    .line 69
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop$1;->this$0:Lcom/codemao/nemo/dialog/pop/UserLevelupPop;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/account/bean/UserInfoVO;->getAvatar_url()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string/jumbo v4, "我的"

    const-string v5, ""

    const-string v6, ""

    invoke-static/range {v0 .. v6}, Lcom/codemao/nemo/activity/UserDetailActivity;->goDetail(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_7e
    :goto_7e
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop$1;->this$0:Lcom/codemao/nemo/dialog/pop/UserLevelupPop;

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method
