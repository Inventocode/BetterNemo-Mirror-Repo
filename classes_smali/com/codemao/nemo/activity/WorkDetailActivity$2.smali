.class Lcom/codemao/nemo/activity/WorkDetailActivity$2;
.super Ljava/lang/Object;
.source "WorkDetailActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


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

    .line 352
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$2;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 5

    .line 355
    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$2;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p2}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$300(Lcom/codemao/nemo/activity/WorkDetailActivity;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 356
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$2;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->rlFakerCommentInput:Landroid/widget/RelativeLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_5f

    .line 358
    :cond_12
    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$2;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object p2, p2, Lcom/codemao/nemo/activity/WorkDetailActivity;->rlFakerCommentInput:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p2

    const/4 v0, 0x0

    if-nez p1, :cond_47

    .line 360
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$2;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->rlFakerCommentInput:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 361
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    rsub-int p2, p3, 0x438

    .line 362
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 363
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$2;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->rlFakerCommentInput:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestLayout()V

    if-nez p3, :cond_3f

    .line 365
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$2;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->rlFakerCommentInput:Landroid/widget/RelativeLayout;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_5f

    .line 367
    :cond_3f
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$2;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->rlFakerCommentInput:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_5f

    :cond_47
    const/4 p3, 0x1

    if-ne p1, p3, :cond_5f

    .line 370
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$2;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->rlFakerCommentInput:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 371
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 372
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 373
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$2;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->rlFakerCommentInput:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_5f
    :goto_5f
    return-void
.end method

.method public onPageSelected(I)V
    .registers 3

    if-nez p1, :cond_f

    .line 381
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$2;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-virtual {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->getReportParams()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v0, "作品详情页-点击作品tab"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1b

    .line 383
    :cond_f
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$2;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-virtual {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->getReportParams()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v0, "作品详情页-点击评论tab"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    :goto_1b
    return-void
.end method
