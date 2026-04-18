.class Lcom/codemao/creativecenter/customview/CmRecordView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CmRecordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/CmRecordView;->updateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/CmRecordView;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/CmRecordView;)V
    .registers 2

    .line 529
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$6;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 541
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 542
    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/customview/CmRecordView$6;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 532
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 533
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$6;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$1300(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 534
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$6;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$1300(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/ImageView;

    move-result-object p1

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 535
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$6;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$1300(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 536
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$6;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$1300(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 547
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 548
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$6;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$1300(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 549
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$6;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$100(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 550
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$6;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$100(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method
