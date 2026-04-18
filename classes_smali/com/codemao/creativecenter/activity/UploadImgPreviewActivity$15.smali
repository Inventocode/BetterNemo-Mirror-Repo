.class Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$15;
.super Ljava/lang/Object;
.source "UploadImgPreviewActivity.java"

# interfaces
.implements Landroidx/core/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->doDeletAnim(I)V
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

    .line 848
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$15;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .registers 3

    .line 864
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$15;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$100(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$15;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$1200(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 865
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$15;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    const/16 v0, -0x63

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$1202(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;I)I

    .line 866
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$15;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$100(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    invoke-static {p1, v0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$1300(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;Z)V

    .line 867
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$15;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$500(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .registers 3

    .line 856
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$15;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$100(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$15;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$1200(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 857
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$15;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    const/16 v0, -0x63

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$1202(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;I)I

    .line 858
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$15;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$100(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    invoke-static {p1, v0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$1300(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;Z)V

    .line 859
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$15;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$500(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 2

    return-void
.end method
