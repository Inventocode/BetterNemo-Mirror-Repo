.class public final Lcom/codemao/creativecenter/NewBcmFragment$addList$1;
.super Ljava/lang/Object;
.source "NewBcmFragment.kt"

# interfaces
.implements Lcom/codemao/creativecenter/pop/FullScreenEditPop$InputStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/NewBcmFragment;->addList(Lcom/codemao/creativestore/bean/AddVariableMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
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

    .line 2636
    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$addList$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    iput-object p2, p0, Lcom/codemao/creativecenter/NewBcmFragment$addList$1;->$completionHandler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .line 2638
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$addList$1;->$completionHandler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

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
    .registers 6

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2643
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2644
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$addList$1;->$completionHandler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    invoke-interface {p1}, Lcom/codemao/creativestore/dsbridge/CompletionHandler;->complete()V

    goto :goto_20

    .line 2646
    :cond_11
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$addList$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->getCreateUtils()Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 2650
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment$addList$1;->$completionHandler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    const-string v2, "list"

    .line 2646
    invoke-virtual {v0, v2, p1, p2, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->addVariable(Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    :cond_20
    :goto_20
    return-void
.end method
