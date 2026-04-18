.class Lcom/codemao/nemo/activity/WorkPublishActivity$10;
.super Ljava/lang/Object;
.source "WorkPublishActivity.java"

# interfaces
.implements Lcom/codemao/nemo/view/CompatibleNestedScrollView$ScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkPublishActivity;->initView()V
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

    .line 583
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$10;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideKeyboard()V
    .registers 3

    .line 610
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$10;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etName:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/codemao/nemo/util/SoftInputUtils;->hideSoftInput(Landroid/view/View;)V

    .line 611
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$10;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$202(Lcom/codemao/nemo/activity/WorkPublishActivity;Z)Z

    return-void
.end method

.method public onScrollChange(IIII)V
    .registers 5

    .line 586
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$10;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$1600(Lcom/codemao/nemo/activity/WorkPublishActivity;)I

    move-result p1

    if-gtz p1, :cond_1c

    .line 587
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$10;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    iget-object p2, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->rlContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    iget-object p3, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$10;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    iget-object p3, p3, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-static {p1, p2}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$1602(Lcom/codemao/nemo/activity/WorkPublishActivity;I)I

    .line 589
    :cond_1c
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$10;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p1

    const/high16 p2, 0x43960000  # 300.0f

    invoke-static {p2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    iget-object p3, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$10;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {p3}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$1700(Lcom/codemao/nemo/activity/WorkPublishActivity;)I

    move-result p3

    sub-int/2addr p2, p3

    const/4 p3, 0x0

    if-le p1, p2, :cond_72

    .line 590
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$10;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2, p3}, Lcom/giu/xzz/utils/StatusBarUtil;->setStatusBarDark(Landroid/app/Activity;ZI)V

    .line 591
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$10;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->toolbar:Landroid/widget/RelativeLayout;

    const p2, 0x7f0800e4

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 592
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$10;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    iget-object p2, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->toolbar:Landroid/widget/RelativeLayout;

    iget-object p3, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p3

    invoke-static {p1, p3}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$1800(Lcom/codemao/nemo/activity/WorkPublishActivity;I)F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 593
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$10;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->ivExit:Landroid/widget/ImageView;

    const p2, 0x7f0e0059

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 594
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$10;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    iget-object p2, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f06015d

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_9c

    .line 598
    :cond_72
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$10;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->toolbar:Landroid/widget/RelativeLayout;

    const p2, 0x7f0800e5

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 599
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$10;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->toolbar:Landroid/widget/RelativeLayout;

    const/high16 p2, 0x3f800000  # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 600
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$10;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {p1, p3, p3}, Lcom/giu/xzz/utils/StatusBarUtil;->setStatusBarDark(Landroid/app/Activity;ZI)V

    .line 601
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$10;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->tvTitle:Landroid/widget/TextView;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 604
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$10;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->ivExit:Landroid/widget/ImageView;

    const p2, 0x7f0e00ad

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_9c
    return-void
.end method
