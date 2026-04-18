.class public Lcom/sensorsdata/analytics/android/sdk/exceptions/ConnectErrorException;
.super Ljava/lang/Exception;
.source "ConnectErrorException.java"


# instance fields
.field private mRetryAfter:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x7530

    .line 29
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/exceptions/ConnectErrorException;->mRetryAfter:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 33
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 35
    :try_start_3
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/exceptions/ConnectErrorException;->mRetryAfter:I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_9} :catch_a

    goto :goto_d

    :catch_a
    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/exceptions/ConnectErrorException;->mRetryAfter:I

    :goto_d
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getRetryAfter()I
    .registers 2

    .line 46
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/exceptions/ConnectErrorException;->mRetryAfter:I

    return v0
.end method
