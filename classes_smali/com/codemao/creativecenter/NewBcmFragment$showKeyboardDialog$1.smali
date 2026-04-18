.class public final Lcom/codemao/creativecenter/NewBcmFragment$showKeyboardDialog$1;
.super Ljava/lang/Object;
.source "NewBcmFragment.kt"

# interfaces
.implements Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$InputStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/NewBcmFragment;->showKeyboardDialog(Ljava/lang/String;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $handler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

.field final synthetic $text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/dsbridge/CompletionHandler;Ljava/lang/String;)V
    .registers 3

    .line 3449
    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$showKeyboardDialog$1;->$handler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    iput-object p2, p0, Lcom/codemao/creativecenter/NewBcmFragment$showKeyboardDialog$1;->$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 3

    .line 3451
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$showKeyboardDialog$1;->$handler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment$showKeyboardDialog$1;->$text:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/codemao/creativestore/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public onDone(Ljava/lang/String;)V
    .registers 3

    const-string v0, "newContent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3455
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$showKeyboardDialog$1;->$handler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    invoke-interface {v0, p1}, Lcom/codemao/creativestore/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method
