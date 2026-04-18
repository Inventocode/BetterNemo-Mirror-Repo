.class public final synthetic Lcom/codemao/toolssdk/func/camera/CameraHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/codemao/toolssdk/func/camera/CameraHelper;

.field public final synthetic f$1:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/toolssdk/func/camera/CameraHelper;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper$$ExternalSyntheticLambda1;->f$0:Lcom/codemao/toolssdk/func/camera/CameraHelper;

    iput-object p2, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper$$ExternalSyntheticLambda1;->f$1:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper$$ExternalSyntheticLambda1;->f$0:Lcom/codemao/toolssdk/func/camera/CameraHelper;

    iget-object v1, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper$$ExternalSyntheticLambda1;->f$1:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->$r8$lambda$b1OYn1dLVYaDtMF8CkcKfY3f5-0(Lcom/codemao/toolssdk/func/camera/CameraHelper;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method
