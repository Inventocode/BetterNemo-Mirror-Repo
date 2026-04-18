.class Lcom/codemao/creativecenter/customview/CmRecordView$8;
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

    .line 590
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$8;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 615
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 616
    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/customview/CmRecordView$8;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 604
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 605
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$8;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$300(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/TextView;

    move-result-object p1

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 606
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$8;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$300(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 607
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$8;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$1400(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 608
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$8;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$1400(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 609
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$8;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$1400(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 610
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$8;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$1400(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 593
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 594
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$8;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$300(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 595
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$8;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$300(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 596
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$8;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$1400(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 597
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$8;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$1400(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 598
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$8;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$1400(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x3f4ccccd  # 0.8f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 599
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$8;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$1400(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    return-void
.end method
