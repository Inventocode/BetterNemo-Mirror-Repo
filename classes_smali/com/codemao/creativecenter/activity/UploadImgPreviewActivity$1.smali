.class Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$1;
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

    .line 170
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$1;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 173
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$1;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$000(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;Z)V

    return-void
.end method
