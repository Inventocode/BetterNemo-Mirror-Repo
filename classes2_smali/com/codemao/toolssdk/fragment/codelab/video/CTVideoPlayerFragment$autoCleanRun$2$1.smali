.class public final Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$autoCleanRun$2$1;
.super Ljava/lang/Object;
.source "CTVideoPlayerFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$autoCleanRun$2;->invoke()Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$autoCleanRun$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$autoCleanRun$2$1;->this$0:Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$autoCleanRun$2$1;->this$0:Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->access$displayScreenView(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;Z)V

    return-void
.end method
