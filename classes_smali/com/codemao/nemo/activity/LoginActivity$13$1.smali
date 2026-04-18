.class Lcom/codemao/nemo/activity/LoginActivity$13$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LoginActivity$13;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/activity/LoginActivity$13;

.field final synthetic val$s1:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/LoginActivity$13;Ljava/lang/String;)V
    .registers 3

    .line 836
    iput-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$13$1;->this$1:Lcom/codemao/nemo/activity/LoginActivity$13;

    iput-object p2, p0, Lcom/codemao/nemo/activity/LoginActivity$13$1;->val$s1:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 839
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity$13$1;->this$1:Lcom/codemao/nemo/activity/LoginActivity$13;

    iget-object v0, v0, Lcom/codemao/nemo/activity/LoginActivity$13;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/LoginActivity;->access$900(Lcom/codemao/nemo/activity/LoginActivity;)V

    .line 840
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity$13$1;->this$1:Lcom/codemao/nemo/activity/LoginActivity$13;

    iget-object v0, v0, Lcom/codemao/nemo/activity/LoginActivity$13;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    iget-object v1, p0, Lcom/codemao/nemo/activity/LoginActivity$13$1;->val$s1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method
