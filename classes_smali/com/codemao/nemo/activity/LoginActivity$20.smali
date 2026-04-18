.class Lcom/codemao/nemo/activity/LoginActivity$20;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcn/codemao/android/account/listener/NetSuccessResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LoginActivity;->getAuthInformation(Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
        "Lcn/codemao/android/account/bean/AuthResultVO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/LoginActivity;

.field final synthetic val$isFirstLogin:Z

.field final synthetic val$isNeedShowPolicy:Z

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/LoginActivity;Ljava/lang/String;ZZ)V
    .registers 5

    .line 992
    iput-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$20;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    iput-object p2, p0, Lcom/codemao/nemo/activity/LoginActivity$20;->val$type:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/codemao/nemo/activity/LoginActivity$20;->val$isFirstLogin:Z

    iput-boolean p4, p0, Lcom/codemao/nemo/activity/LoginActivity$20;->val$isNeedShowPolicy:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcn/codemao/android/account/bean/AuthResultVO;)V
    .registers 5

    .line 995
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity$20;->val$type:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/codemao/nemo/activity/LoginActivity$20;->val$isFirstLogin:Z

    invoke-static {v0, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendLoginEvent(Ljava/lang/String;Z)V

    .line 996
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity$20;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    iget-boolean v1, p0, Lcom/codemao/nemo/activity/LoginActivity$20;->val$isFirstLogin:Z

    iget-boolean v2, p0, Lcom/codemao/nemo/activity/LoginActivity$20;->val$isNeedShowPolicy:Z

    invoke-static {v0, p1, v1, v2}, Lcom/codemao/nemo/activity/LoginActivity;->access$1400(Lcom/codemao/nemo/activity/LoginActivity;Lcn/codemao/android/account/bean/AuthResultVO;ZZ)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 992
    check-cast p1, Lcn/codemao/android/account/bean/AuthResultVO;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/LoginActivity$20;->onSuccess(Lcn/codemao/android/account/bean/AuthResultVO;)V

    return-void
.end method
