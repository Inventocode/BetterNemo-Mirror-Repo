.class final Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$1$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CTCameraCaptureFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$1$1;->invoke(ZLjava/lang/String;Landroid/net/Uri;)V
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
    c = "com.codemao.toolssdk.page.camera.CTCameraCaptureFragment$viewClick$1$1$2"
    f = "CTCameraCaptureFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$1$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$1$1$2;->this$0:Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4
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

    new-instance p1, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$1$1$2;

    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$1$1$2;->this$0:Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;

    invoke-direct {p1, v0, p2}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$1$1$2;-><init>(Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$1$1$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$1$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$1$1$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$1$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 81
    iget v0, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$1$1$2;->label:I

    if-nez v0, :cond_39

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 82
    iget-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$1$1$2;->this$0:Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;

    invoke-static {p1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object p1

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getId()I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    .line 83
    :goto_20
    sget v0, Lcom/codemao/toolssdk/R$id;->kn_camera_capture:I

    if-nez p1, :cond_25

    goto :goto_36

    :cond_25
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_36

    .line 84
    iget-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$1$1$2;->this$0:Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;

    invoke-static {p1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p1

    sget v0, Lcom/codemao/toolssdk/R$id;->action_capture_to_cut:I

    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->navigate(I)V

    .line 86
    :cond_36
    :goto_36
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 81
    :cond_39
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
