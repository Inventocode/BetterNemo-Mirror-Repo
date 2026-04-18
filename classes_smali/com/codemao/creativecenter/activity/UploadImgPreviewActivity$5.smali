.class Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$5;
.super Ljava/lang/Object;
.source "UploadImgPreviewActivity.java"

# interfaces
.implements Lcom/codemao/creativecenter/customview/CreativeScaleImageView$OnImageClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 231
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$5;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    const-wide/16 v0, 0x1f4

    .line 234
    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick(J)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 237
    :cond_9
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$5;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    iget-object p1, p1, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1b

    .line 238
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$5;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$800(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V

    goto :goto_20

    .line 240
    :cond_1b
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$5;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$900(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V

    :goto_20
    return-void
.end method

.method public onLeftChange(I)V
    .registers 4

    .line 253
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$5;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    iget-object v0, v0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivBack:Landroid/widget/ImageView;

    if-eqz v0, :cond_4d

    .line 254
    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    add-int/lit8 v0, v0, -0x32

    if-gt p1, v0, :cond_2f

    .line 255
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$5;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$1000(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Z

    move-result p1

    if-nez p1, :cond_1c

    .line 256
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$5;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$1002(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;Z)Z

    .line 258
    :cond_1c
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$5;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    iget-object p1, p1, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivBack:Landroid/widget/ImageView;

    sget v0, Lcom/codemao/creativecenter/R$drawable;->creative_ic_upload_preview_back_white:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 259
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$5;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    iget-object p1, p1, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivBack:Landroid/widget/ImageView;

    sget v0, Lcom/codemao/creativecenter/R$drawable;->creative_bg_upload_back:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_4d

    .line 261
    :cond_2f
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$5;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$1000(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3d

    .line 262
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$5;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$1002(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;Z)Z

    .line 264
    :cond_3d
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$5;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    iget-object p1, p1, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivBack:Landroid/widget/ImageView;

    sget v1, Lcom/codemao/creativecenter/R$drawable;->creative_ic_upload_preview_back:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 265
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$5;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    iget-object p1, p1, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_4d
    :goto_4d
    return-void
.end method

.method public onScaleChange(F)V
    .registers 2

    .line 246
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$5;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    iget-object p1, p1, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->blurringView:Lcn/codemao/android/sketch/view/BlurringView;

    if-eqz p1, :cond_9

    .line 247
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_9
    return-void
.end method
