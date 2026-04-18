.class Lcom/codemao/nemo/activity/LoginActivity$18$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LoginActivity$18;->onSuccess(Lcn/codemao/android/account/bean/WechatLoginResultVO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/activity/LoginActivity$18;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/LoginActivity$18;)V
    .registers 2

    .line 939
    iput-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$18$1;->this$1:Lcom/codemao/nemo/activity/LoginActivity$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 942
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity$18$1;->this$1:Lcom/codemao/nemo/activity/LoginActivity$18;

    iget-object v0, v0, Lcom/codemao/nemo/activity/LoginActivity$18;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/LoginActivity;->access$800(Lcom/codemao/nemo/activity/LoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 943
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity$18$1;->this$1:Lcom/codemao/nemo/activity/LoginActivity$18;

    iget-object v0, v0, Lcom/codemao/nemo/activity/LoginActivity$18;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/LoginActivity;->access$1200(Lcom/codemao/nemo/activity/LoginActivity;)Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;->loginByCode()V

    return-void

    .line 946
    :cond_16
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity$18$1;->this$1:Lcom/codemao/nemo/activity/LoginActivity$18;

    iget-object v0, v0, Lcom/codemao/nemo/activity/LoginActivity$18;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    const-string v1, "5"

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/LoginActivity;->access$1000(Lcom/codemao/nemo/activity/LoginActivity;Ljava/lang/String;)V

    return-void
.end method
