.class Lcom/codemao/nemo/activity/UserDetailActivity$3;
.super Ljava/lang/Object;
.source "UserDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/UserDetailActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserDetailActivity;)V
    .registers 2

    .line 321
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$3;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 324
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity$3;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$1200(Lcom/codemao/nemo/activity/UserDetailActivity;)V

    return-void
.end method
