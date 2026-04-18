.class Lcom/codemao/nemo/activity/BaseSearchActivity$4;
.super Ljava/lang/Object;
.source "BaseSearchActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/BaseSearchActivity;->exitAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/BaseSearchActivity;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/BaseSearchActivity;I)V
    .registers 3

    .line 273
    iput-object p1, p0, Lcom/codemao/nemo/activity/BaseSearchActivity$4;->this$0:Lcom/codemao/nemo/activity/BaseSearchActivity;

    iput p2, p0, Lcom/codemao/nemo/activity/BaseSearchActivity$4;->val$width:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7

    .line 276
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 277
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseSearchActivity$4;->this$0:Lcom/codemao/nemo/activity/BaseSearchActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/BaseSearchActivity;->animRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/codemao/nemo/activity/BaseSearchActivity$4;->val$width:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 278
    iget-object v1, p0, Lcom/codemao/nemo/activity/BaseSearchActivity$4;->this$0:Lcom/codemao/nemo/activity/BaseSearchActivity;

    iget-object v1, v1, Lcom/codemao/nemo/activity/BaseSearchActivity;->animRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/codemao/nemo/activity/BaseSearchActivity$4;->this$0:Lcom/codemao/nemo/activity/BaseSearchActivity;

    iget-object v3, v3, Lcom/codemao/nemo/activity/BaseSearchActivity;->animRoot:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/codemao/nemo/activity/BaseSearchActivity$4;->this$0:Lcom/codemao/nemo/activity/BaseSearchActivity;

    iget-object v4, v4, Lcom/codemao/nemo/activity/BaseSearchActivity;->animRoot:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/view/View;->layout(IIII)V

    .line 279
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseSearchActivity$4;->this$0:Lcom/codemao/nemo/activity/BaseSearchActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/BaseSearchActivity;->animRoot:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_47

    .line 281
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseSearchActivity$4;->this$0:Lcom/codemao/nemo/activity/BaseSearchActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/giu/xzz/BaseActivity;->finishAnim(II)V

    :cond_47
    return-void
.end method
