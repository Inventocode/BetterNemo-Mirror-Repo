.class public final Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$loadContentImage$1$1;
.super Lcom/bumptech/glide/request/target/CustomTarget;
.source "ISPreviewActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->loadContentImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/CustomTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$loadContentImage$1$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;

    .line 538
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const-string p2, "resource"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    iget-object p2, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$loadContentImage$1$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;

    invoke-static {p2}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->access$getBinding$p(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    move-result-object p2

    if-nez p2, :cond_13

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_13
    iget-object p2, p2, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->ivContent:Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;

    invoke-virtual {p2, p1}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->initBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .registers 3

    .line 538
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$loadContentImage$1$1;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
