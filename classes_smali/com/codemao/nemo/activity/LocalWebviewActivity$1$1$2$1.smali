.class Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1$2$1;
.super Ljava/lang/Object;
.source "LocalWebviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1$2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1$2;)V
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1$2$1;->this$3:Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 167
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/event/FinishAnswerEvent;

    iget-object v2, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1$2$1;->this$3:Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1$2;

    iget-object v2, v2, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1$2;->this$2:Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1;

    iget-object v2, v2, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1;->this$1:Lcom/codemao/nemo/activity/LocalWebviewActivity$1;

    iget-object v2, v2, Lcom/codemao/nemo/activity/LocalWebviewActivity$1;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    invoke-static {v2}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->access$100(Lcom/codemao/nemo/activity/LocalWebviewActivity;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/codemao/nemo/event/FinishAnswerEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
