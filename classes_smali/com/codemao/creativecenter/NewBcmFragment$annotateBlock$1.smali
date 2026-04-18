.class public final Lcom/codemao/creativecenter/NewBcmFragment$annotateBlock$1;
.super Ljava/lang/Object;
.source "NewBcmFragment.kt"

# interfaces
.implements Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$InputStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/NewBcmFragment;->annotateBlock(Lcom/codemao/creativestore/bean/AnnotateBlockMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $completionHandler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 2

    .line 2798
    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$annotateBlock$1;->$completionHandler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 5

    .line 2800
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$annotateBlock$1;->$completionHandler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    new-instance v1, Lcom/codemao/creativestore/bean/AnnotateBlockMsg;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativestore/bean/AnnotateBlockMsg;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/codemao/creativestore/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public onDone(Ljava/lang/String;)V
    .registers 5

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2804
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$annotateBlock$1;->$completionHandler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    new-instance v1, Lcom/codemao/creativestore/bean/AnnotateBlockMsg;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/codemao/creativestore/bean/AnnotateBlockMsg;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/codemao/creativestore/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method
