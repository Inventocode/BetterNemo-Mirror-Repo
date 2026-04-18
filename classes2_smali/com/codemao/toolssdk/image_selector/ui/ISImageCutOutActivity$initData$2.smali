.class public final Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$initData$2;
.super Ljava/lang/Object;
.source "ISImageCutOutActivity.kt"

# interfaces
.implements Lcom/codemao/toolssdk/image_selector/widget/GenerateBitmapCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;


# direct methods
.method public static synthetic $r8$lambda$PEoIiq9nS7sWOOWLkLQQswwX-oM(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$initData$2;->onGenerateBitmap$lambda$0(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$initData$2;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onGenerateBitmap$lambda$0(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-static {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->access$getImagePath$p(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->getBitmapFromPath(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 113
    invoke-static {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->access$getBinding$p(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    move-result-object p0

    if-nez p0, :cond_1b

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1b
    iget-object p0, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->manualCutout:Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;

    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->initBitmap(Landroid/graphics/Bitmap;)V

    :cond_20
    return-void
.end method


# virtual methods
.method public onGenerateBitmap()V
    .registers 3

    .line 110
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$initData$2;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;

    new-instance v1, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$initData$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$initData$2$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)V

    invoke-static {v1}, Lcom/codemao/toolssdk/utils/CMToolsThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method
