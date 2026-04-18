.class Lcom/codemao/nemo/activity/LoginActivity$16$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LoginActivity$16;->onSuccess(Lcn/codemao/android/account/bean/WechatLoginResultVO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/activity/LoginActivity$16;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/LoginActivity$16;)V
    .registers 2

    .line 903
    iput-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$16$1;->this$1:Lcom/codemao/nemo/activity/LoginActivity$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 906
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity$16$1;->this$1:Lcom/codemao/nemo/activity/LoginActivity$16;

    iget-object v0, v0, Lcom/codemao/nemo/activity/LoginActivity$16;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/LoginActivity;->access$800(Lcom/codemao/nemo/activity/LoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 907
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity$16$1;->this$1:Lcom/codemao/nemo/activity/LoginActivity$16;

    iget-object v0, v0, Lcom/codemao/nemo/activity/LoginActivity$16;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/LoginActivity;->access$900(Lcom/codemao/nemo/activity/LoginActivity;)V

    return-void

    .line 910
    :cond_12
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity$16$1;->this$1:Lcom/codemao/nemo/activity/LoginActivity$16;

    iget-object v0, v0, Lcom/codemao/nemo/activity/LoginActivity$16;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    const-string v1, "2"

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/LoginActivity;->access$1000(Lcom/codemao/nemo/activity/LoginActivity;Ljava/lang/String;)V

    return-void
.end method
