.class final Lcom/codemao/toolssdk/manager/AiCutOutImageManager$uploadAndMattingImageFile$4;
.super Lkotlin/jvm/internal/Lambda;
.source "AiCutOutImageManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


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
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/manager/AiCutOutImageManager;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/manager/AiCutOutImageManager;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$uploadAndMattingImageFile$4;->this$0:Lcom/codemao/toolssdk/manager/AiCutOutImageManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$uploadAndMattingImageFile$4;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$uploadAndMattingImageFile$4;->this$0:Lcom/codemao/toolssdk/manager/AiCutOutImageManager;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/AiCutOutImageManager;->getMattingCallback()Lcom/codemao/toolssdk/manager/AiCutOutImageManager$MattingCallback;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/codemao/toolssdk/manager/AiCutOutImageManager$MattingCallback;->onMattingFailed()V

    :cond_b
    return-void
.end method
