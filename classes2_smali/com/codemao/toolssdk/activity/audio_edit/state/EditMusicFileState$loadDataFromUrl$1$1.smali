.class final Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadDataFromUrl$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EditMusicFileState.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->loadDataFromUrl()V
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
.field final synthetic this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadDataFromUrl$1$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 358
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadDataFromUrl$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 5

    .line 359
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadDataFromUrl$1$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    new-instance v1, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadDataFromUrl$1$1$1;

    invoke-direct {v1, v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadDataFromUrl$1$1$1;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    new-instance v2, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadDataFromUrl$1$1$2;

    iget-object v3, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadDataFromUrl$1$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-direct {v2, v3}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadDataFromUrl$1$1$2;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->access$notifyDbSPLDataChanged(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
