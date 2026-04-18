.class public final Lcom/polidea/rxandroidble2_codemao/internal/connection/LongWriteOperationBuilderImpl;
.super Ljava/lang/Object;
.source "LongWriteOperationBuilderImpl.java"


# instance fields
.field final operationQueue:Lcom/polidea/rxandroidble2_codemao/internal/serialization/ConnectionOperationQueue;

.field final operationsProvider:Lcom/polidea/rxandroidble2_codemao/internal/operations/OperationsProvider;

.field private final rxBleConnection:Lcom/polidea/rxandroidble2_codemao/RxBleConnection;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/serialization/ConnectionOperationQueue;Lcom/polidea/rxandroidble2_codemao/internal/connection/MtuBasedPayloadSizeLimit;Lcom/polidea/rxandroidble2_codemao/RxBleConnection;Lcom/polidea/rxandroidble2_codemao/internal/operations/OperationsProvider;)V
    .registers 5

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance p2, Lcom/polidea/rxandroidble2_codemao/internal/connection/ImmediateSerializedBatchAckStrategy;

    invoke-direct {p2}, Lcom/polidea/rxandroidble2_codemao/internal/connection/ImmediateSerializedBatchAckStrategy;-><init>()V

    .line 28
    new-instance p2, Lcom/polidea/rxandroidble2_codemao/internal/connection/NoRetryStrategy;

    invoke-direct {p2}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NoRetryStrategy;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/LongWriteOperationBuilderImpl;->operationQueue:Lcom/polidea/rxandroidble2_codemao/internal/serialization/ConnectionOperationQueue;

    .line 41
    iput-object p3, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/LongWriteOperationBuilderImpl;->rxBleConnection:Lcom/polidea/rxandroidble2_codemao/RxBleConnection;

    .line 42
    iput-object p4, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/LongWriteOperationBuilderImpl;->operationsProvider:Lcom/polidea/rxandroidble2_codemao/internal/operations/OperationsProvider;

    return-void
.end method
