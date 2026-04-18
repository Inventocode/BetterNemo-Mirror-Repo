.class Lcom/polidea/rxandroidble2_codemao/internal/DeviceModule$1;
.super Ljava/lang/Object;
.source "DeviceModule.java"

# interfaces
.implements Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2_codemao/internal/DeviceModule;->provideConnectionStateChangeListener(Lcom/jakewharton/rxrelay2/BehaviorRelay;)Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionStateChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$connectionStateBehaviorRelay:Lcom/jakewharton/rxrelay2/BehaviorRelay;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxrelay2/BehaviorRelay;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/DeviceModule$1;->val$connectionStateBehaviorRelay:Lcom/jakewharton/rxrelay2/BehaviorRelay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionStateChange(Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;)V
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/DeviceModule$1;->val$connectionStateBehaviorRelay:Lcom/jakewharton/rxrelay2/BehaviorRelay;

    invoke-virtual {v0, p1}, Lcom/jakewharton/rxrelay2/BehaviorRelay;->accept(Ljava/lang/Object;)V

    return-void
.end method
