.class public final Lcom/codemao/creativecenter/NewBcmFragment$showContentEdit$1;
.super Ljava/lang/Object;
.source "NewBcmFragment.kt"

# interfaces
.implements Lcom/codemao/creativecenter/pop/FullScreenEditPop$InputStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/NewBcmFragment;->showContentEdit(Lcom/codemao/creativestore/bean/CreateEditTextMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
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

    .line 2035
    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$showContentEdit$1;->$completionHandler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .line 2037
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$showContentEdit$1;->$completionHandler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/codemao/creativestore/dsbridge/CompletionHandler;->complete()V

    :cond_7
    return-void
.end method

.method public onDone(Ljava/lang/String;)V
    .registers 3

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2041
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$showContentEdit$1;->$completionHandler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Lcom/codemao/creativestore/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    :cond_c
    return-void
.end method

.method public onDoneVariable(Ljava/lang/String;Z)V
    .registers 3

    const-string p2, "text"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
