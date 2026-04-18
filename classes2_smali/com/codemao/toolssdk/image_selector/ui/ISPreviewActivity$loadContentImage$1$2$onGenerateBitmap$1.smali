.class public final Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$loadContentImage$1$2$onGenerateBitmap$1;
.super Lcom/bumptech/glide/request/target/CustomTarget;
.source "ISPreviewActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$loadContentImage$1$2;->onGenerateBitmap()V
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
.method public static synthetic $r8$lambda$4uXJnqKAhf3FLhHddvhnTVl5e78(Landroid/graphics/Bitmap;Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$loadContentImage$1$2$onGenerateBitmap$1;->onResourceReady$lambda$0(Landroid/graphics/Bitmap;Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$loadContentImage$1$2$onGenerateBitmap$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;

    .line 550
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>()V

    return-void
.end method

.method private static final onResourceReady$lambda$0(Landroid/graphics/Bitmap;Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V
    .registers 3

    const-string v0, "$resource"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x3ecccccd  # 0.4f

    .line 561
    invoke-static {p0, v0}, Lcom/codemao/toolssdk/utils/ToolsSDKImageUtils;->scaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 562
    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->access$getBinding$p(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    move-result-object p1

    if-nez p1, :cond_1d

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1d
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->ivContent:Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;

    const-string v0, "scaleBitmap"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->initBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .registers 5
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

    .line 556
    iget-object p2, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$loadContentImage$1$2$onGenerateBitmap$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;

    const-string v0, "内存不足"

    const/4 v1, 0x0

    .line 555
    invoke-static {p2, v0, v1}, Lcom/codemao/toolssdk/view/toast/ToastUtil;->showTopCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 560
    iget-object p2, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$loadContentImage$1$2$onGenerateBitmap$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;

    new-instance v0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$loadContentImage$1$2$onGenerateBitmap$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$loadContentImage$1$2$onGenerateBitmap$1$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/Bitmap;Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V

    invoke-static {v0}, Lcom/codemao/toolssdk/utils/CMToolsThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .registers 3

    .line 550
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$loadContentImage$1$2$onGenerateBitmap$1;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
