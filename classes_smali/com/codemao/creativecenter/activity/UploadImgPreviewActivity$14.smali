.class Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$14;
.super Ljava/lang/Object;
.source "UploadImgPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->initListView()V
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

    .line 754
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$14;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 757
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 758
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$14;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$1200(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)I

    move-result v0

    if-ne p1, v0, :cond_13

    return-void

    .line 761
    :cond_13
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$14;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$100(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_20

    return-void

    .line 764
    :cond_20
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$14;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v0, p1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$1202(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;I)I

    .line 765
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$14;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$100(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$1102(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 766
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$14;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$500(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V

    .line 767
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$14;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$2900(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V

    .line 768
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$14;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    iget-object p1, p1, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivPick:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_4f

    .line 769
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$14;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$1600(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V

    :cond_4f
    return-void
.end method
