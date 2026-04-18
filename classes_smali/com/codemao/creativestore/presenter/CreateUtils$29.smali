.class Lcom/codemao/creativestore/presenter/CreateUtils$29;
.super Ljava/lang/Object;
.source "CreateUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/presenter/CreateUtils;->lambda$changeBluetoothPermissionState$1(Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;)Lkotlin/Unit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativestore/presenter/CreateUtils;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/presenter/CreateUtils;)V
    .registers 2

    .line 3529
    iput-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$29;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 3532
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$29;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$500(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;

    const/16 v2, 0x6a

    invoke-direct {v1, v2}, Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->permissionState(Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;)V

    return-void
.end method
