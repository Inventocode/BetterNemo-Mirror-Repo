.class Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$10;
.super Ljava/lang/Object;
.source "UploadImgPreviewActivity.java"

# interfaces
.implements Landroidx/core/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->doHideAnim()V
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

    .line 406
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$10;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .registers 3

    .line 421
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$10;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    iget-object p1, p1, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivBack:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 422
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$10;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    iget-object p1, p1, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->tvAdd:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 423
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$10;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    iget-object p1, p1, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->rlList:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .registers 3

    .line 414
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$10;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    iget-object p1, p1, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivBack:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 415
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$10;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    iget-object p1, p1, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->tvAdd:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 416
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$10;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    iget-object p1, p1, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->rlList:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 2

    return-void
.end method
