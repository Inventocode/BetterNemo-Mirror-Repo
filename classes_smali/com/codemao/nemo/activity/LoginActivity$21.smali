.class Lcom/codemao/nemo/activity/LoginActivity$21;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcn/codemao/android/account/listener/NetFailResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LoginActivity;->getAuthInformation(Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/LoginActivity;

.field final synthetic val$isNeedShowPolicy:Z


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/LoginActivity;Z)V
    .registers 3

    .line 998
    iput-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$21;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    iput-boolean p2, p0, Lcom/codemao/nemo/activity/LoginActivity$21;->val$isNeedShowPolicy:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1001
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$21;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    iget-boolean p2, p0, Lcom/codemao/nemo/activity/LoginActivity$21;->val$isNeedShowPolicy:Z

    invoke-static {p1, p2}, Lcom/codemao/nemo/activity/LoginActivity;->access$1500(Lcom/codemao/nemo/activity/LoginActivity;Z)V

    .line 1002
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$21;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-virtual {p1}, Lcom/giu/xzz/BaseActivity;->finish()V

    return-void
.end method
