.class Lcom/codemao/nemo/activity/BaseSearchActivity$3$1;
.super Ljava/lang/Object;
.source "BaseSearchActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/BaseSearchActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/activity/BaseSearchActivity$3;

.field final synthetic val$leftMargin:I

.field final synthetic val$rightMargin:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/BaseSearchActivity$3;III)V
    .registers 5

    .line 237
    iput-object p1, p0, Lcom/codemao/nemo/activity/BaseSearchActivity$3$1;->this$1:Lcom/codemao/nemo/activity/BaseSearchActivity$3;

    iput p2, p0, Lcom/codemao/nemo/activity/BaseSearchActivity$3$1;->val$leftMargin:I

    iput p3, p0, Lcom/codemao/nemo/activity/BaseSearchActivity$3$1;->val$width:I

    iput p4, p0, Lcom/codemao/nemo/activity/BaseSearchActivity$3$1;->val$rightMargin:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8

    .line 240
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 241
    iget v0, p0, Lcom/codemao/nemo/activity/BaseSearchActivity$3$1;->val$leftMargin:I

    int-to-float v1, v0

    const/high16 v2, 0x3f800000  # 1.0f

    sub-float v3, v2, p1

    iget v4, p0, Lcom/codemao/nemo/activity/BaseSearchActivity$3$1;->val$width:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    add-float/2addr v1, v4

    float-to-int v1, v1

    .line 242
    iget v4, p0, Lcom/codemao/nemo/activity/BaseSearchActivity$3$1;->val$rightMargin:I

    int-to-float v4, v4

    int-to-float v0, v0

    mul-float v3, v3, v0

    add-float/2addr v4, v3

    float-to-int v0, v4

    .line 244
    iget-object v3, p0, Lcom/codemao/nemo/activity/BaseSearchActivity$3$1;->this$1:Lcom/codemao/nemo/activity/BaseSearchActivity$3;

    iget-object v3, v3, Lcom/codemao/nemo/activity/BaseSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/BaseSearchActivity;

    iget-object v3, v3, Lcom/codemao/nemo/activity/BaseSearchActivity;->animRoot:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/codemao/nemo/activity/BaseSearchActivity$3$1;->this$1:Lcom/codemao/nemo/activity/BaseSearchActivity$3;

    iget-object v5, v5, Lcom/codemao/nemo/activity/BaseSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/BaseSearchActivity;

    iget-object v5, v5, Lcom/codemao/nemo/activity/BaseSearchActivity;->animRoot:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v3, v1, v4, v0, v5}, Landroid/view/View;->layout(IIII)V

    .line 245
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseSearchActivity$3$1;->this$1:Lcom/codemao/nemo/activity/BaseSearchActivity$3;

    iget-object v0, v0, Lcom/codemao/nemo/activity/BaseSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/BaseSearchActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/BaseSearchActivity;->search_edit:Landroid/widget/EditText;

    sub-float v1, p1, v2

    float-to-double v1, v1

    const-wide v3, 0x3fe999999999999aL  # 0.8

    mul-double v1, v1, v3

    iget v3, p0, Lcom/codemao/nemo/activity/BaseSearchActivity$3$1;->val$width:I

    int-to-double v3, v3

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getTop()I

    move-result v2

    iget v3, p0, Lcom/codemao/nemo/activity/BaseSearchActivity$3$1;->val$rightMargin:I

    iget-object v4, p0, Lcom/codemao/nemo/activity/BaseSearchActivity$3$1;->this$1:Lcom/codemao/nemo/activity/BaseSearchActivity$3;

    iget-object v4, v4, Lcom/codemao/nemo/activity/BaseSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/BaseSearchActivity;

    iget-object v4, v4, Lcom/codemao/nemo/activity/BaseSearchActivity;->search_edit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->layout(IIII)V

    .line 246
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseSearchActivity$3$1;->this$1:Lcom/codemao/nemo/activity/BaseSearchActivity$3;

    iget-object v0, v0, Lcom/codemao/nemo/activity/BaseSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/BaseSearchActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/BaseSearchActivity;->animRoot:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
