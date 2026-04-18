.class Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$9;
.super Ljava/lang/Object;
.source "UploadImgPreviewActivity.java"

# interfaces
.implements Landroidx/core/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->doShowAnim(Z)V
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

    .line 362
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$9;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .registers 3

    .line 370
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$9;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    iget-object p1, p1, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->blurringView:Lcn/codemao/android/sketch/view/BlurringView;

    if-eqz p1, :cond_19

    const/4 v0, 0x0

    .line 371
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 372
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$9;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    iget-object p1, p1, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->blurringView:Lcn/codemao/android/sketch/view/BlurringView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 373
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$9;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    iget-object p1, p1, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->blurringView:Lcn/codemao/android/sketch/view/BlurringView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_19
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 2

    return-void
.end method
