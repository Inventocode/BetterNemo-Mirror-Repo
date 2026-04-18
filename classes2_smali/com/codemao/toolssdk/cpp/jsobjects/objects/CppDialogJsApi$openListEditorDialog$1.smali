.class public final Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi$openListEditorDialog$1;
.super Ljava/lang/Object;
.source "CppDialogJsApi.kt"

# interfaces
.implements Lcom/codemao/toolssdk/manager/ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi;->openListEditorDialog(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $gson:Lcom/google/gson/Gson;

.field final synthetic $handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/google/gson/Gson;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/gson/Gson;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi$openListEditorDialog$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi$openListEditorDialog$1;->$gson:Lcom/google/gson/Gson;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResultCallback(IILandroid/content/Intent;)V
    .registers 5

    const/16 v0, 0x3ec

    if-ne p1, v0, :cond_39

    const/4 p1, -0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_20

    if-eqz p3, :cond_11

    const-string p1, "data"

    .line 92
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_12

    :cond_11
    move-object p1, v0

    .line 93
    :goto_12
    new-instance p2, Lcom/codemao/toolssdk/model/dsbridge/CompleteListEditorResult;

    if-eqz p1, :cond_1a

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_1a
    const-string p1, ""

    invoke-direct {p2, v0, p1}, Lcom/codemao/toolssdk/model/dsbridge/CompleteListEditorResult;-><init>(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_27

    .line 95
    :cond_20
    new-instance p2, Lcom/codemao/toolssdk/model/dsbridge/CompleteListEditorResult;

    const-string p1, "cancel"

    invoke-direct {p2, v0, p1}, Lcom/codemao/toolssdk/model/dsbridge/CompleteListEditorResult;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 97
    :goto_27
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 p3, 0x7d0

    invoke-direct {p1, p3, p2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 98
    iget-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi$openListEditorDialog$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object p3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi$openListEditorDialog$1;->$gson:Lcom/google/gson/Gson;

    invoke-virtual {p3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    :cond_39
    return-void
.end method
