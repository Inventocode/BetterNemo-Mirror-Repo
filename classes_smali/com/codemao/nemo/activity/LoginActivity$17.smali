.class Lcom/codemao/nemo/activity/LoginActivity$17;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcn/codemao/android/account/listener/NetFailResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LoginActivity;->wxLogin()V
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

    .line 919
    iput-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$17;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 922
    iget-object p2, p0, Lcom/codemao/nemo/activity/LoginActivity$17;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-static {p2}, Lcom/codemao/nemo/activity/LoginActivity;->access$900(Lcom/codemao/nemo/activity/LoginActivity;)V

    const-string p2, "800034"

    .line 923
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 924
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$17;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    const-string/jumbo p2, "请先下载安装微信"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_1e

    .line 926
    :cond_16
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$17;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    const-string/jumbo p2, "登录失败"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_1e
    return-void
.end method
