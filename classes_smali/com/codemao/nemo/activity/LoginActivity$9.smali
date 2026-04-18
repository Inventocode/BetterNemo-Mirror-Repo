.class Lcom/codemao/nemo/activity/LoginActivity$9;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LoginActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 509
    iput-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$9;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 512
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity$9;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    const-class v1, Lcom/codemao/nemo/activity/SwitchEnvActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 513
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity$9;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-virtual {v0, p1}, Lcom/giu/xzz/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
