.class public final synthetic Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;

.field public final synthetic f$2:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$$ExternalSyntheticLambda0;->f$1:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;

    iput-object p3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$$ExternalSyntheticLambda0;->f$2:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$$ExternalSyntheticLambda0;->f$1:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$$ExternalSyntheticLambda0;->f$2:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    invoke-static {v0, v1, v2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->$r8$lambda$ifeHiwBBB-yCOjG8FQxb51H6dZ4(Landroid/content/Context;Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method
