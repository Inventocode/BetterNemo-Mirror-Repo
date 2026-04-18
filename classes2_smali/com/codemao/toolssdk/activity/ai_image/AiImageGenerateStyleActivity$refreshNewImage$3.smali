.class final Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$refreshNewImage$3;
.super Lkotlin/jvm/internal/Lambda;
.source "AiImageGenerateStyleActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->refreshNewImage(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/String;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAiImageGenerateStyleActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AiImageGenerateStyleActivity.kt\ncom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$refreshNewImage$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,519:1\n1851#2,2:520\n*S KotlinDebug\n*F\n+ 1 AiImageGenerateStyleActivity.kt\ncom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$refreshNewImage$3\n*L\n350#1:520,2\n*E\n"
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $item:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;

.field final synthetic this$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;


# direct methods
.method public static synthetic $r8$lambda$vkTTH1jQBXzOC9E3yA_VZ4aKWd0(Ljava/util/List;Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Lkotlin/jvm/functions/Function1;Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$refreshNewImage$3;->invoke$lambda$1(Ljava/util/List;Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Lkotlin/jvm/functions/Function1;Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Lkotlin/jvm/functions/Function1;Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$refreshNewImage$3;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;

    iput-object p2, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$refreshNewImage$3;->$callback:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$refreshNewImage$3;->$item:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$1(Ljava/util/List;Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Lkotlin/jvm/functions/Function1;Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;)V
    .registers 10

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$item"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_20

    .line 344
    invoke-static {p1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->access$dismissLoadingPop(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;)V

    .line 345
    invoke-static {p1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->access$showErrorView(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;)V

    .line 346
    invoke-static {p1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->access$showErrorToast(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;)V

    .line 347
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d

    .line 349
    :cond_20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3, v0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->setImgList(Ljava/util/List;)V

    .line 1851
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2c
    :goto_2c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 351
    invoke-virtual {p3}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->getImgList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2c

    new-instance v2, Lcom/codemao/toolssdk/activity/ai_image/ImageStateModel;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/codemao/toolssdk/activity/ai_image/ImageStateModel;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 353
    :cond_4a
    invoke-static {p1, p3, p2}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->access$showNextImg(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;Lkotlin/jvm/functions/Function1;)V

    :goto_4d
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 337
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$refreshNewImage$3;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$refreshNewImage$3;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$refreshNewImage$3;->$callback:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$refreshNewImage$3;->$item:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;

    new-instance v3, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$refreshNewImage$3$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, v0, v1, v2}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$refreshNewImage$3$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Lkotlin/jvm/functions/Function1;Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
