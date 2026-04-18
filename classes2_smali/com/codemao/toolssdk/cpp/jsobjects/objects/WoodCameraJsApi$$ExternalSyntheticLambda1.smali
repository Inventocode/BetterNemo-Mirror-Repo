.class public final synthetic Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;

.field public final synthetic f$1:Landroid/os/Handler;

.field public final synthetic f$2:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Landroid/os/Handler;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$$ExternalSyntheticLambda1;->f$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$$ExternalSyntheticLambda1;->f$1:Landroid/os/Handler;

    iput-object p3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$$ExternalSyntheticLambda1;->f$2:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$$ExternalSyntheticLambda1;->f$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$$ExternalSyntheticLambda1;->f$1:Landroid/os/Handler;

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$$ExternalSyntheticLambda1;->f$2:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    invoke-static {v0, v1, v2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->$r8$lambda$bmbjXTKvCV6EeGCRXtWJ01MFH6I(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Landroid/os/Handler;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method
