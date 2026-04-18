.class final Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$mAdapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "VCSAssistInfoPop.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;-><init>(Landroid/content/Context;Lcom/codemao/creativestore/bean/WorksEvent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$mAdapter$2;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;
    .registers 5

    .line 86
    new-instance v0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$mAdapter$2;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->getCtx()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$mAdapter$2;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {v2}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getMAssistorInfos$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$mAdapter$2;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-direct {v0, v1, v2, v3}, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/codemao/creativecenter/vcs/listener/IAssistorInfoListener;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 61
    invoke-virtual {p0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$mAdapter$2;->invoke()Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;

    move-result-object v0

    return-object v0
.end method
