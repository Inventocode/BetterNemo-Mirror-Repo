.class Lcom/codemao/nemo/activity/LoginActivity$10;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LoginActivity;->onResume()V
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

    .line 687
    iput-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$10;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 690
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity$10;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/LoginActivity;->iv_cover:Landroid/view/View;

    if-eqz v0, :cond_a

    const/4 v1, 0x4

    .line 691
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    return-void
.end method
