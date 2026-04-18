.class Lcom/codemao/creativecenter/customview/CmRecordView$10;
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

    .line 741
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$10;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 744
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 745
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$10;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$1600(Lcom/codemao/creativecenter/customview/CmRecordView;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 750
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 751
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$10;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$1600(Lcom/codemao/creativecenter/customview/CmRecordView;)V

    return-void
.end method
