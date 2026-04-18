.class final Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$5$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ISPreviewActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.codemao.toolssdk.image_selector.ui.ISPreviewActivity$initView$5$1$1"
    f = "ISPreviewActivity.kt"
    l = {
        0x118
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $bitmap:Landroid/graphics/Bitmap;

.field final synthetic $path:Ljava/lang/String;

.field final synthetic $pathName:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Landroid/graphics/Bitmap;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$5$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$5$1$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;

    iput-object p2, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$5$1$1;->$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$5$1$1;->$path:Ljava/lang/String;

    iput-object p4, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$5$1$1;->$pathName:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$5$1$1;

    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$5$1$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;

    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$5$1$1;->$bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$5$1$1;->$path:Ljava/lang/String;

    iget-object v4, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$5$1$1;->$pathName:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$5$1$1;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Landroid/graphics/Bitmap;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$5$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$5$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$5$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$5$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 272
    iget v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$5$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_83

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 273
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$5$1$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;

    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$5$1$1;->$bitmap:Landroid/graphics/Bitmap;

    const-string v3, "bitmap"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->access$getRatio(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Landroid/graphics/Bitmap;)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_6c

    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$5$1$1;->$bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$5$1$1;->$path:Ljava/lang/String;

    iget-object v4, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$5$1$1;->$pathName:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$5$1$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 274
    invoke-static {v1, p1}, Lcom/codemao/toolssdk/utils/ToolsSDKImageUtils;->scaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 275
    invoke-static {v3}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/media_cache/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v5, 0x2e

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 276
    iput-object v1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 278
    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 280
    :cond_6c
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    new-instance v1, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$5$1$1$2;

    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$5$1$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;

    iget-object v4, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$5$1$1;->$pathName:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$5$1$1$2;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$5$1$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_83

    return-object v0

    .line 283
    :cond_83
    :goto_83
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
