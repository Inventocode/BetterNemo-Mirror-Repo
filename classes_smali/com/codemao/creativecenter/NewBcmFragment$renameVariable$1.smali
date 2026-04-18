.class public final Lcom/codemao/creativecenter/NewBcmFragment$renameVariable$1;
.super Ljava/lang/Object;
.source "NewBcmFragment.kt"

# interfaces
.implements Lcom/codemao/creativecenter/pop/FullScreenEditPop$InputStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/NewBcmFragment;->renameVariable(Lcom/codemao/creativestore/bean/RenameVariableMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
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

    .line 2688
    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$renameVariable$1;->$completionHandler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .line 2690
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$renameVariable$1;->$completionHandler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

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
    .registers 3

    const-string p2, "text"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2695
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 2696
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$renameVariable$1;->$completionHandler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    invoke-interface {p1}, Lcom/codemao/creativestore/dsbridge/CompletionHandler;->complete()V

    goto :goto_16

    .line 2697
    :cond_11
    iget-object p2, p0, Lcom/codemao/creativecenter/NewBcmFragment$renameVariable$1;->$completionHandler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    invoke-interface {p2, p1}, Lcom/codemao/creativestore/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    :goto_16
    return-void
.end method
