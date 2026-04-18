.class public Lcom/sensorsdata/analytics/android/sdk/exceptions/ResponseErrorException;
.super Ljava/lang/Exception;
.source "ResponseErrorException.java"


# instance fields
.field private httpCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 27
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 28
    iput p2, p0, Lcom/sensorsdata/analytics/android/sdk/exceptions/ResponseErrorException;->httpCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .registers 3

    .line 32
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 33
    iput p2, p0, Lcom/sensorsdata/analytics/android/sdk/exceptions/ResponseErrorException;->httpCode:I

    return-void
.end method


# virtual methods
.method public getHttpCode()I
    .registers 2

    .line 37
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/exceptions/ResponseErrorException;->httpCode:I

    return v0
.end method
