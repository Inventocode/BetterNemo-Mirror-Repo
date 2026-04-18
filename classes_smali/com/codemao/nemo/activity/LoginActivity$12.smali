.class Lcom/codemao/nemo/activity/LoginActivity$12;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcn/codemao/android/account/listener/NetSuccessResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LoginActivity;->bbkLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
        "Lcn/codemao/android/account/bean/BBKLoginResultVO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/LoginActivity;)V
    .registers 2

    .line 812
    iput-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$12;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcn/codemao/android/account/bean/BBKLoginResultVO;)V
    .registers 5

    .line 815
    invoke-virtual {p1}, Lcn/codemao/android/account/bean/BBKLoginResultVO;->getExisted()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 816
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity$12;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-virtual {p1}, Lcn/codemao/android/account/bean/LoginUserInfoVO;->getUser_info()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/codemao/nemo/activity/LoginActivity;->access$702(Lcom/codemao/nemo/activity/LoginActivity;Lcn/codemao/android/account/bean/UserInfoVO;)Lcn/codemao/android/account/bean/UserInfoVO;

    .line 817
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$12;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LoginActivity;->tvChange:Landroid/widget/TextView;

    new-instance v0, Lcom/codemao/nemo/activity/LoginActivity$12$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/LoginActivity$12$1;-><init>(Lcom/codemao/nemo/activity/LoginActivity$12;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2d

    .line 829
    :cond_22
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity$12;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-virtual {p1}, Lcn/codemao/android/account/bean/BBKLoginResultVO;->getOauth_ticket()Ljava/lang/String;

    move-result-object p1

    const-string v1, "7"

    invoke-static {v0, p1, v1}, Lcom/codemao/nemo/activity/LoginActivity;->access$1100(Lcom/codemao/nemo/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2d
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 812
    check-cast p1, Lcn/codemao/android/account/bean/BBKLoginResultVO;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/LoginActivity$12;->onSuccess(Lcn/codemao/android/account/bean/BBKLoginResultVO;)V

    return-void
.end method
