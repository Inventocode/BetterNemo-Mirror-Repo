.class Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$13$1;
.super Ljava/lang/Object;
.source "UploadImgPreviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$13;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$13;)V
    .registers 2

    .line 546
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$13$1;->this$1:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 549
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$13$1;->this$1:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$13;

    iget-object v0, v0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$13;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
