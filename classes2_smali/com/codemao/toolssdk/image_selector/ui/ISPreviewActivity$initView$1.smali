.class public final Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$1;
.super Ljava/lang/Object;
.source "ISPreviewActivity.kt"

# interfaces
.implements Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(ILcom/codemao/toolssdk/image_selector/bean/PreviewImage;)V
    .registers 4

    const-string p1, "image"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;

    invoke-virtual {p2}, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->access$loadContentImage(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Ljava/lang/String;)V

    .line 229
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;

    invoke-static {p1, p2}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->access$showSelectIcon(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;)V

    .line 230
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->access$notifyConfirmText(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V

    .line 231
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->access$resetUndoImageList(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V

    return-void
.end method
