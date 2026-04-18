.class Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$16;
.super Ljava/lang/Object;
.source "UploadImgPreviewActivity.java"

# interfaces
.implements Landroidx/core/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->doSelectAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V
    .registers 2

    .line 893
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$16;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .registers 3

    .line 910
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$16;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    iget-object p1, p1, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivPick:Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 911
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$16;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    iget-object p1, p1, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivPick:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 912
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$16;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    iget-object p1, p1, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivNotPick:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .registers 3

    .line 902
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$16;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    iget-object p1, p1, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivPick:Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 903
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$16;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    iget-object p1, p1, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivPick:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 904
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$16;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    iget-object p1, p1, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivNotPick:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 2

    return-void
.end method
