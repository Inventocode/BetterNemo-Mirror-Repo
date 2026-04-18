.class Lcom/codemao/nemo/activity/WorkPublishActivity$18;
.super Ljava/lang/Object;
.source "WorkPublishActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkPublishActivity;->caculateOperationHeight(Landroid/widget/EditText;)V
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

    .line 1168
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$18;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1171
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$18;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    const/4 v1, 0x0

    const v2, 0x186a0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->scrollBy(II)V

    const-string/jumbo v0, "流程-输入弹窗"

    const-string/jumbo v1, "滑动到底?"

    .line 1172
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
