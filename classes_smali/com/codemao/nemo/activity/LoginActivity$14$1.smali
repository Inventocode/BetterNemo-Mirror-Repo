.class Lcom/codemao/nemo/activity/LoginActivity$14$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LoginActivity$14;->onSuccess(Lcn/codemao/android/account/bean/QQLoginResultVO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/activity/LoginActivity$14;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/LoginActivity$14;)V
    .registers 2

    .line 861
    iput-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$14$1;->this$1:Lcom/codemao/nemo/activity/LoginActivity$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 864
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity$14$1;->this$1:Lcom/codemao/nemo/activity/LoginActivity$14;

    iget-object v0, v0, Lcom/codemao/nemo/activity/LoginActivity$14;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/LoginActivity;->access$800(Lcom/codemao/nemo/activity/LoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 865
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity$14$1;->this$1:Lcom/codemao/nemo/activity/LoginActivity$14;

    iget-object v0, v0, Lcom/codemao/nemo/activity/LoginActivity$14;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/LoginActivity;->access$900(Lcom/codemao/nemo/activity/LoginActivity;)V

    return-void

    .line 868
    :cond_12
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity$14$1;->this$1:Lcom/codemao/nemo/activity/LoginActivity$14;

    iget-object v0, v0, Lcom/codemao/nemo/activity/LoginActivity$14;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    const-string v1, "3"

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/LoginActivity;->access$1000(Lcom/codemao/nemo/activity/LoginActivity;Ljava/lang/String;)V

    return-void
.end method
