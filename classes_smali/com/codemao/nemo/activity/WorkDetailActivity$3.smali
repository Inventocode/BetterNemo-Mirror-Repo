.class Lcom/codemao/nemo/activity/WorkDetailActivity$3;
.super Ljava/lang/Object;
.source "WorkDetailActivity.java"

# interfaces
.implements Lcom/codemao/nemo/view/CustomTabView$OnTabClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V
    .registers 2

    .line 394
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$3;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public click(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1e

    .line 397
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$3;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    if-ne p1, v0, :cond_1e

    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$3;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$400(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/fragment/WorkCommentFragment;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 398
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$3;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$400(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/fragment/WorkCommentFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->scrollToTop()V

    :cond_1e
    return-void
.end method
