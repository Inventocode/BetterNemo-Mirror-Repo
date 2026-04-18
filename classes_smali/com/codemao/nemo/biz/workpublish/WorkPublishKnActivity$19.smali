.class Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$19;
.super Ljava/lang/Object;
.source "WorkPublishKnActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->caculateDesHeight()V
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

    .line 805
    iput-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$19;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 808
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$19;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    iget-object v0, v0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    const/4 v1, 0x0

    const v2, 0x186a0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->scrollBy(II)V

    return-void
.end method
