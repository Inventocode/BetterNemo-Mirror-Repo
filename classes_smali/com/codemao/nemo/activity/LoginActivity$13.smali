.class Lcom/codemao/nemo/activity/LoginActivity$13;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcn/codemao/android/account/listener/NetFailResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LoginActivity;->bbkLogin()V
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

    .line 833
    iput-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$13;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 836
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$13;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    new-instance v0, Lcom/codemao/nemo/activity/LoginActivity$13$1;

    invoke-direct {v0, p0, p2}, Lcom/codemao/nemo/activity/LoginActivity$13$1;-><init>(Lcom/codemao/nemo/activity/LoginActivity$13;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
