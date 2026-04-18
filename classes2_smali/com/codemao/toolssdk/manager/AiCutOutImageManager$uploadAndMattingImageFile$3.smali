.class final Lcom/codemao/toolssdk/manager/AiCutOutImageManager$uploadAndMattingImageFile$3;
.super Lkotlin/jvm/internal/Lambda;
.source "AiCutOutImageManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/manager/AiCutOutImageManager;->uploadAndMattingImageFile(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
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
.field final synthetic $uploadResult:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/codemao/toolssdk/manager/AiCutOutImageManager;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;Lcom/codemao/toolssdk/manager/AiCutOutImageManager;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/codemao/toolssdk/manager/AiCutOutImageManager;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$uploadAndMattingImageFile$3;->$uploadResult:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$uploadAndMattingImageFile$3;->this$0:Lcom/codemao/toolssdk/manager/AiCutOutImageManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 35
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$uploadAndMattingImageFile$3;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .registers 5

    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$uploadAndMattingImageFile$3;->$uploadResult:Lkotlin/jvm/functions/Function2;

    new-instance v1, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$uploadAndMattingImageFile$3$1;

    iget-object v2, p0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$uploadAndMattingImageFile$3;->this$0:Lcom/codemao/toolssdk/manager/AiCutOutImageManager;

    invoke-direct {v1, v2}, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$uploadAndMattingImageFile$3$1;-><init>(Lcom/codemao/toolssdk/manager/AiCutOutImageManager;)V

    invoke-interface {v0, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
