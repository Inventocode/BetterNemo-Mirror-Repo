.class public final synthetic Lcom/codemao/toolssdk/jsapi/FileJsApi$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/codemao/toolssdk/jsapi/FileJsApi;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/toolssdk/jsapi/FileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$$ExternalSyntheticLambda5;->f$0:Lcom/codemao/toolssdk/jsapi/FileJsApi;

    iput-object p2, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$$ExternalSyntheticLambda5;->f$2:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$$ExternalSyntheticLambda5;->f$0:Lcom/codemao/toolssdk/jsapi/FileJsApi;

    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    iget-object v2, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$$ExternalSyntheticLambda5;->f$2:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    invoke-static {v0, v1, v2}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->$r8$lambda$s0B0aAT5Pt-THuyuJDu2grlTcqA(Lcom/codemao/toolssdk/jsapi/FileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method
