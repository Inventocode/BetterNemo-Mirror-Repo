.class Lcom/codemao/nemo/activity/WorkPublishActivity$15;
.super Ljava/lang/Object;
.source "WorkPublishActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkPublishActivity;->resetDesHeight(I)V
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

    .line 1074
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$15;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1077
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$15;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    const/4 v1, 0x0

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->scrollBy(II)V

    return-void
.end method
