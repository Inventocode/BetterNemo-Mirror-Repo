.class Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$3;
.super Ljava/lang/Object;
.source "UploadImgPreviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 194
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$3;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 197
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$3;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    iget-object v0, v0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->root:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    .line 198
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$3;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    iget-object v1, v1, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->root:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_13

    move v0, v1

    .line 202
    :cond_13
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$3;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$200(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)I

    move-result v1

    if-eq v1, v0, :cond_2f

    .line 203
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$3;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v1, v0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$202(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;I)I

    .line 204
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$3;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$300(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V

    .line 205
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$3;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$400(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V

    .line 206
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$3;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$500(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V

    :cond_2f
    return-void
.end method
