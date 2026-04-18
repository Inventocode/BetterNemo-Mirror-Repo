.class public final synthetic Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;

.field public final synthetic f$1:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$$ExternalSyntheticLambda2;->f$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$$ExternalSyntheticLambda2;->f$1:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$$ExternalSyntheticLambda2;->f$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$$ExternalSyntheticLambda2;->f$1:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->$r8$lambda$oxZOm_aBnKcpIFoqbE2jNjAyXMM(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method
