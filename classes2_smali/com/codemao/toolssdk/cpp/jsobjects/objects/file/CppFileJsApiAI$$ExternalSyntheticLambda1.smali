.class public final synthetic Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/codemao/toolssdk/permissionx/callback/RequestCallback;


# instance fields
.field public final synthetic f$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;

.field public final synthetic f$1:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI$$ExternalSyntheticLambda1;->f$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI$$ExternalSyntheticLambda1;->f$1:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iput-object p3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onResult(ZLjava/util/List;Ljava/util/List;)V
    .registers 10

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI$$ExternalSyntheticLambda1;->f$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI$$ExternalSyntheticLambda1;->f$1:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;->$r8$lambda$RZWboa9g8vNGxQPT27h-quMxUiM(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Object;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method
