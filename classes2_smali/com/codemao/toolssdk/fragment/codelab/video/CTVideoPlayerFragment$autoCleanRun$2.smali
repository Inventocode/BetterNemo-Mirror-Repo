.class final Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$autoCleanRun$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CTVideoPlayerFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$autoCleanRun$2$1;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$autoCleanRun$2;->this$0:Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$autoCleanRun$2$1;
    .registers 3

    .line 56
    new-instance v0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$autoCleanRun$2$1;

    iget-object v1, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$autoCleanRun$2;->this$0:Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$autoCleanRun$2$1;-><init>(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 55
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$autoCleanRun$2;->invoke()Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$autoCleanRun$2$1;

    move-result-object v0

    return-object v0
.end method
