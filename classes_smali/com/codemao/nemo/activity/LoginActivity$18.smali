.class Lcom/codemao/nemo/activity/LoginActivity$18;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$LoginResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LoginActivity;->scanWexinCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/LoginActivity;)V
    .registers 2

    .line 934
    iput-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$18;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onSuccess(Lcn/codemao/android/account/bean/WechatLoginResultVO;)V
    .registers 5

    .line 937
    invoke-virtual {p1}, Lcn/codemao/android/account/bean/WechatLoginResultVO;->getExisted()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 938
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity$18;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-virtual {p1}, Lcn/codemao/android/account/bean/LoginUserInfoVO;->getUser_info()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/codemao/nemo/activity/LoginActivity;->access$702(Lcom/codemao/nemo/activity/LoginActivity;Lcn/codemao/android/account/bean/UserInfoVO;)Lcn/codemao/android/account/bean/UserInfoVO;

    .line 939
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$18;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LoginActivity;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v0, Lcom/codemao/nemo/activity/LoginActivity$18$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/LoginActivity$18$1;-><init>(Lcom/codemao/nemo/activity/LoginActivity$18;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2d

    .line 950
    :cond_22
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity$18;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-virtual {p1}, Lcn/codemao/android/account/bean/WechatLoginResultVO;->getOauth_ticket()Ljava/lang/String;

    move-result-object p1

    const-string v1, "5"

    invoke-static {v0, p1, v1}, Lcom/codemao/nemo/activity/LoginActivity;->access$1100(Lcom/codemao/nemo/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2d
    return-void
.end method
