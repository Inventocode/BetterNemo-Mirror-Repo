.class public interface abstract Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionComponent;
.super Ljava/lang/Object;
.source "ConnectionComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionComponent$Builder;
    }
.end annotation


# virtual methods
.method public abstract connectOperation()Lcom/polidea/rxandroidble2_codemao/internal/operations/ConnectOperation;
.end method

.method public abstract connectionSubscriptionWatchers()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionSubscriptionWatcher;",
            ">;"
        }
    .end annotation
.end method

.method public abstract gattCallback()Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;
.end method

.method public abstract rxBleConnection()Lcom/polidea/rxandroidble2_codemao/RxBleConnection;
.end method
