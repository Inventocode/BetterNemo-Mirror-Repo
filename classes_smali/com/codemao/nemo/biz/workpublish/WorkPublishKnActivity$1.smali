.class Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$1;
.super Ljava/lang/Object;
.source "WorkPublishKnActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V
    .registers 2

    .line 202
    iput-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$1;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$1;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {v0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$000(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)Lcom/codemao/nemo/view/KeyboardHeightProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/view/KeyboardHeightProvider;->start()V

    return-void
.end method
