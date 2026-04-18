.class Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$10;
.super Ljava/lang/Object;
.source "WorkPublishKnActivity.java"

# interfaces
.implements Lcom/codemao/nemo/view/CompatibleNestedScrollView$ScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->initView()V
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

    .line 466
    iput-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$10;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideKeyboard()V
    .registers 3

    .line 493
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$10;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    iget-object v0, v0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etName:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/codemao/nemo/util/SoftInputUtils;->hideSoftInput(Landroid/view/View;)V

    .line 494
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$10;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$202(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;Z)Z

    return-void
.end method

.method public onScrollChange(IIII)V
    .registers 5

    .line 469
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$10;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$1500(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)I

    move-result p1

    if-gtz p1, :cond_1c

    .line 470
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$10;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    iget-object p2, p1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->rlContent:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p2

    iget-object p3, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$10;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    iget-object p3, p3, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-static {p1, p2}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$1502(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;I)I

    .line 472
    :cond_1c
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$10;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    iget-object p1, p1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p1

    const/high16 p2, 0x43960000  # 300.0f

    invoke-static {p2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    iget-object p3, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$10;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {p3}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$1600(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)I

    move-result p3

    sub-int/2addr p2, p3

    const/4 p3, 0x0

    if-le p1, p2, :cond_72

    .line 473
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$10;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2, p3}, Lcom/giu/xzz/utils/StatusBarUtil;->setStatusBarDark(Landroid/app/Activity;ZI)V

    .line 474
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$10;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    iget-object p1, p1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->toolbar:Landroid/widget/RelativeLayout;

    const p2, 0x7f0800e4

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 475
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$10;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    iget-object p2, p1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->toolbar:Landroid/widget/RelativeLayout;

    iget-object p3, p1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p3

    invoke-static {p1, p3}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$1700(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;I)F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 476
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$10;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    iget-object p1, p1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->ivExit:Landroid/widget/ImageView;

    const p2, 0x7f0e0059

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 477
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$10;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    iget-object p2, p1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f06015d

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_9c

    .line 481
    :cond_72
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$10;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    iget-object p1, p1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->toolbar:Landroid/widget/RelativeLayout;

    const p2, 0x7f0800e5

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 482
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$10;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    iget-object p1, p1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->toolbar:Landroid/widget/RelativeLayout;

    const/high16 p2, 0x3f800000  # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 483
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$10;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {p1, p3, p3}, Lcom/giu/xzz/utils/StatusBarUtil;->setStatusBarDark(Landroid/app/Activity;ZI)V

    .line 484
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$10;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    iget-object p1, p1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->tvTitle:Landroid/widget/TextView;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 487
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$10;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    iget-object p1, p1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->ivExit:Landroid/widget/ImageView;

    const p2, 0x7f0e00ad

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_9c
    return-void
.end method
