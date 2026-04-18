.class final Lcom/codemao/toolssdk/manager/AiImageGenerateManager$uploadImageFile$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AiImageGenerateManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/manager/AiImageGenerateManager;->uploadImageFile(Ljava/lang/String;IILkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $styleId:I

.field final synthetic $tempId:I

.field final synthetic this$0:Lcom/codemao/toolssdk/manager/AiImageGenerateManager;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/manager/AiImageGenerateManager;IILkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/manager/AiImageGenerateManager;",
            "II",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$uploadImageFile$1;->this$0:Lcom/codemao/toolssdk/manager/AiImageGenerateManager;

    iput p2, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$uploadImageFile$1;->$styleId:I

    iput p3, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$uploadImageFile$1;->$tempId:I

    iput-object p4, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$uploadImageFile$1;->$callback:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 29
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$uploadImageFile$1;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .registers 6

    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$uploadImageFile$1;->this$0:Lcom/codemao/toolssdk/manager/AiImageGenerateManager;

    iget v1, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$uploadImageFile$1;->$styleId:I

    iget v2, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$uploadImageFile$1;->$tempId:I

    iget-object v3, p0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager$uploadImageFile$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/codemao/toolssdk/manager/AiImageGenerateManager;->access$requestMatchPaintingImg(Lcom/codemao/toolssdk/manager/AiImageGenerateManager;Ljava/lang/String;IILkotlin/jvm/functions/Function1;)V

    return-void
.end method
