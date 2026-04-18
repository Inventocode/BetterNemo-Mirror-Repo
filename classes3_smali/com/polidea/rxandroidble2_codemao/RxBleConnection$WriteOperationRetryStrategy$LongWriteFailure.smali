.class public Lcom/polidea/rxandroidble2_codemao/RxBleConnection$WriteOperationRetryStrategy$LongWriteFailure;
.super Ljava/lang/Object;
.source "RxBleConnection.java"


# instance fields
.field final cause:Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattException;


# virtual methods
.method public getCause()Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattException;
    .registers 2

    .line 232
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/RxBleConnection$WriteOperationRetryStrategy$LongWriteFailure;->cause:Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattException;

    return-object v0
.end method
