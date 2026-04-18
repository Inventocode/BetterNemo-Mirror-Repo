.class Lcom/codemao/nemo/activity/WorkPublishActivity$1;
.super Ljava/lang/Object;
.source "WorkPublishActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkPublishActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/WorkPublishActivity;)V
    .registers 2

    .line 260
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$1;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 262
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$1;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$000(Lcom/codemao/nemo/activity/WorkPublishActivity;)Lcom/codemao/nemo/view/KeyboardHeightProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/view/KeyboardHeightProvider;->start()V

    return-void
.end method
