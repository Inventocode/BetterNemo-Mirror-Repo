.class public final synthetic Lcom/codemao/toolssdk/jsapi/FileJsApi$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/codemao/toolssdk/permissionx/callback/RequestCallback;


# instance fields
.field public final synthetic f$0:Lcom/codemao/toolssdk/jsapi/FileJsApi;

.field public final synthetic f$1:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$$ExternalSyntheticLambda1;->f$0:Lcom/codemao/toolssdk/jsapi/FileJsApi;

    iput-object p2, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$$ExternalSyntheticLambda1;->f$1:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iput-object p3, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onResult(ZLjava/util/List;Ljava/util/List;)V
    .registers 10

    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$$ExternalSyntheticLambda1;->f$0:Lcom/codemao/toolssdk/jsapi/FileJsApi;

    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$$ExternalSyntheticLambda1;->f$1:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object v2, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->$r8$lambda$Tchf_z3SZktLC-a_OjO-kUKBo0U(Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Object;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method
