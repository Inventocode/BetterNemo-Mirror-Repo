.class Lcom/codemao/nemo/activity/UserDetailActivity$10;
.super Ljava/lang/Object;
.source "UserDetailActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserDetailActivity;->doFollowAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/UserDetailActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserDetailActivity;)V
    .registers 2

    .line 659
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$10;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 9

    .line 662
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 663
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity$10;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object v1, v0, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleAvatar:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$800(Lcom/codemao/nemo/activity/UserDetailActivity;)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/codemao/nemo/activity/UserDetailActivity$10;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {v2}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$1700(Lcom/codemao/nemo/activity/UserDetailActivity;)I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    iget-object v3, p0, Lcom/codemao/nemo/activity/UserDetailActivity$10;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {v3}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$1800(Lcom/codemao/nemo/activity/UserDetailActivity;)I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, p1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcom/codemao/nemo/activity/UserDetailActivity$10;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object v2, v2, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleAvatar:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/codemao/nemo/activity/UserDetailActivity$10;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {v3}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$900(Lcom/codemao/nemo/activity/UserDetailActivity;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/codemao/nemo/activity/UserDetailActivity$10;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {v4}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$1700(Lcom/codemao/nemo/activity/UserDetailActivity;)I

    move-result v4

    div-int/lit8 v4, v4, 0xa

    iget-object v5, p0, Lcom/codemao/nemo/activity/UserDetailActivity$10;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {v5}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$1800(Lcom/codemao/nemo/activity/UserDetailActivity;)I

    move-result v5

    div-int/lit8 v5, v5, 0xa

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v4, v4, p1

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/codemao/nemo/activity/UserDetailActivity$10;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object v4, v4, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleAvatar:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 664
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity$10;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvTitleFollow:Landroid/widget/TextView;

    neg-float v1, p1

    const/high16 v2, 0x42a40000  # 82.0f

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    const/high16 v4, 0x40a00000  # 5.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v5, p0, Lcom/codemao/nemo/activity/UserDetailActivity$10;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object v5, v5, Lcom/codemao/nemo/activity/UserDetailActivity;->tvTitleFollow:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTop()I

    move-result v5

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v6

    int-to-float v6, v6

    mul-float v1, v1, v6

    div-float/2addr v1, v4

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v1, v6

    float-to-int v1, v1

    iget-object v6, p0, Lcom/codemao/nemo/activity/UserDetailActivity$10;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object v6, v6, Lcom/codemao/nemo/activity/UserDetailActivity;->tvTitleFollow:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getBottom()I

    move-result v6

    invoke-virtual {v0, v3, v5, v1, v6}, Landroid/widget/TextView;->layout(IIII)V

    cmpl-float p1, p1, v4

    if-nez p1, :cond_cf

    .line 667
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$10;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object v0, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleAvatar:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$600(Lcom/codemao/nemo/activity/UserDetailActivity;)I

    move-result p1

    iget-object v1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$10;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object v1, v1, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleAvatar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v1

    iget-object v3, p0, Lcom/codemao/nemo/activity/UserDetailActivity$10;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {v3}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$700(Lcom/codemao/nemo/activity/UserDetailActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/codemao/nemo/activity/UserDetailActivity$10;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object v4, v4, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleAvatar:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v4

    invoke-virtual {v0, p1, v1, v3, v4}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 668
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$10;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->tvTitleFollow:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTop()I

    move-result v0

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    iget-object v2, p0, Lcom/codemao/nemo/activity/UserDetailActivity$10;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object v2, v2, Lcom/codemao/nemo/activity/UserDetailActivity;->tvTitleFollow:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBottom()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 669
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$10;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {p1, v3}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$402(Lcom/codemao/nemo/activity/UserDetailActivity;Z)Z

    :cond_cf
    return-void
.end method
