.class Lcom/codemao/creativecenter/customview/CmRecordView$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CmRecordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/CmRecordView$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/creativecenter/customview/CmRecordView$2;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/CmRecordView$2;I)V
    .registers 3

    .line 166
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$2$1;->this$1:Lcom/codemao/creativecenter/customview/CmRecordView$2;

    iput p2, p0, Lcom/codemao/creativecenter/customview/CmRecordView$2$1;->val$count:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 11

    .line 169
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 170
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$2$1;->this$1:Lcom/codemao/creativecenter/customview/CmRecordView$2;

    iget-object p1, p1, Lcom/codemao/creativecenter/customview/CmRecordView$2;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$100(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_e

    return-void

    .line 172
    :cond_e
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$2$1;->this$1:Lcom/codemao/creativecenter/customview/CmRecordView$2;

    iget-object p1, p1, Lcom/codemao/creativecenter/customview/CmRecordView$2;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$100(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->clearAnimation()V

    .line 173
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$2$1;->this$1:Lcom/codemao/creativecenter/customview/CmRecordView$2;

    iget-object p1, p1, Lcom/codemao/creativecenter/customview/CmRecordView$2;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$100(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    iget v2, p0, Lcom/codemao/creativecenter/customview/CmRecordView$2$1;->val$count:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$2$1;->this$1:Lcom/codemao/creativecenter/customview/CmRecordView$2;

    iget-object p1, p1, Lcom/codemao/creativecenter/customview/CmRecordView$2;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$100(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x3f333333  # 0.7f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setScaleX(F)V

    .line 176
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$2$1;->this$1:Lcom/codemao/creativecenter/customview/CmRecordView$2;

    iget-object p1, p1, Lcom/codemao/creativecenter/customview/CmRecordView$2;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$100(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setScaleY(F)V

    .line 179
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 180
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView$2$1;->this$1:Lcom/codemao/creativecenter/customview/CmRecordView$2;

    iget-object v0, v0, Lcom/codemao/creativecenter/customview/CmRecordView$2;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$100(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    const-wide/16 v3, 0x15e

    invoke-static {v0, v1, v2, v3, v4}, Lcom/codemao/creativecenter/utils/AnimUtil;->getAlphaAnim(Landroid/view/View;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$2$1;->this$1:Lcom/codemao/creativecenter/customview/CmRecordView$2;

    iget-object v1, v1, Lcom/codemao/creativecenter/customview/CmRecordView$2;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {v1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$100(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x1

    const v4, 0x3f333333  # 0.7f

    const/high16 v5, 0x3f800000  # 1.0f

    const-wide/16 v6, 0x15e

    invoke-static/range {v2 .. v7}, Lcom/codemao/creativecenter/utils/AnimUtil;->getScaleAnim(Landroid/view/View;ZFFJ)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 182
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmRecordView$2$1;->this$1:Lcom/codemao/creativecenter/customview/CmRecordView$2;

    iget-object v2, v2, Lcom/codemao/creativecenter/customview/CmRecordView$2;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {v2}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$100(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x3f333333  # 0.7f

    const/high16 v6, 0x3f800000  # 1.0f

    const-wide/16 v7, 0x15e

    invoke-static/range {v3 .. v8}, Lcom/codemao/creativecenter/utils/AnimUtil;->getScaleAnim(Landroid/view/View;ZFFJ)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 183
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 184
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
