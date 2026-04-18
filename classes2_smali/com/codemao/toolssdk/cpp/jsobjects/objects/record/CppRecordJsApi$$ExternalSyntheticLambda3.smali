.class public final synthetic Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;

.field public final synthetic f$1:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

.field public final synthetic f$2:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Integer;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$$ExternalSyntheticLambda3;->f$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$$ExternalSyntheticLambda3;->f$1:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iput-object p3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$$ExternalSyntheticLambda3;->f$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$$ExternalSyntheticLambda3;->f$1:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Integer;

    invoke-static {v0, v1, v2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->$r8$lambda$AGRDWVZjhMyaJPJ_BLndiB7-l0A(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Integer;)V

    return-void
.end method
