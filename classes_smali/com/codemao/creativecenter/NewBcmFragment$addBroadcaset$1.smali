.class public final Lcom/codemao/creativecenter/NewBcmFragment$addBroadcaset$1;
.super Ljava/lang/Object;
.source "NewBcmFragment.kt"

# interfaces
.implements Lcom/codemao/creativecenter/pop/FullScreenEditPop$InputStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/NewBcmFragment;->addBroadcaset(Lcom/codemao/creativestore/bean/AddBroadcastMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $completionHandler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

.field final synthetic this$0:Lcom/codemao/creativecenter/NewBcmFragment;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/NewBcmFragment;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler;",
            ")V"
        }
    .end annotation

    .line 2829
    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$addBroadcaset$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    iput-object p2, p0, Lcom/codemao/creativecenter/NewBcmFragment$addBroadcaset$1;->$completionHandler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .line 2831
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$addBroadcaset$1;->$completionHandler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    invoke-interface {v0}, Lcom/codemao/creativestore/dsbridge/CompletionHandler;->complete()V

    return-void
.end method

.method public onDone(Ljava/lang/String;)V
    .registers 3

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onDoneVariable(Ljava/lang/String;Z)V
    .registers 4

    const-string p2, "text"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2836
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 2837
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$addBroadcaset$1;->$completionHandler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    invoke-interface {p1}, Lcom/codemao/creativestore/dsbridge/CompletionHandler;->complete()V

    goto :goto_1e

    .line 2838
    :cond_11
    iget-object p2, p0, Lcom/codemao/creativecenter/NewBcmFragment$addBroadcaset$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {p2}, Lcom/codemao/creativecenter/NewBcmFragment;->getCreateUtils()Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object p2

    if-eqz p2, :cond_1e

    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$addBroadcaset$1;->$completionHandler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    invoke-virtual {p2, p1, v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->addBroadcast(Ljava/lang/String;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    :cond_1e
    :goto_1e
    return-void
.end method
