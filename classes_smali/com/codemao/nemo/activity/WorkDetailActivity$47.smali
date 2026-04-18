.class Lcom/codemao/nemo/activity/WorkDetailActivity$47;
.super Ljava/lang/Object;
.source "WorkDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkDetailActivity;->setCollect(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

.field final synthetic val$doAnimate:Z

.field final synthetic val$isCollected:Z


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/WorkDetailActivity;ZZ)V
    .registers 4

    .line 1795
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$47;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iput-boolean p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$47;->val$doAnimate:Z

    iput-boolean p3, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$47;->val$isCollected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1798
    iget-boolean v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$47;->val$doAnimate:Z

    if-eqz v0, :cond_1d

    .line 1799
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$47;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {v1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$1100(Lcom/codemao/nemo/activity/WorkDetailActivity;)J

    move-result-wide v1

    iget-boolean v3, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$47;->val$isCollected:Z

    iget-object v4, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$47;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->creatCollectOrCollectEvents(JZI)Lcom/codemao/nemo/event/UpdateWorkInfoEvents;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1801
    :cond_1d
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$47;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/WorkDetailActivity;->llCollect:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    return-void
.end method
