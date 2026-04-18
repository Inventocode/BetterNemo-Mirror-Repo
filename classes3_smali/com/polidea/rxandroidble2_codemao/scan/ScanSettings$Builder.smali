.class public final Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings$Builder;
.super Ljava/lang/Object;
.source "ScanSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCallbackType:I

.field private mLegacy:Z

.field private mMatchMode:I

.field private mNumOfMatchesPerFilter:I

.field private mReportDelayMillis:J

.field private mScanMode:I

.field private mShouldCheckLocationProviderState:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 254
    iput v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings$Builder;->mScanMode:I

    const/4 v0, 0x1

    .line 255
    iput v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings$Builder;->mCallbackType:I

    const-wide/16 v1, 0x0

    .line 256
    iput-wide v1, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings$Builder;->mReportDelayMillis:J

    .line 257
    iput v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings$Builder;->mMatchMode:I

    const/4 v1, 0x3

    .line 258
    iput v1, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings$Builder;->mNumOfMatchesPerFilter:I

    .line 259
    iput-boolean v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings$Builder;->mLegacy:Z

    .line 260
    iput-boolean v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings$Builder;->mShouldCheckLocationProviderState:Z

    return-void
.end method

.method private static isValidCallbackType(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_f

    const/4 v1, 0x2

    if-eq p0, v1, :cond_f

    const/4 v1, 0x4

    if-ne p0, v1, :cond_a

    goto :goto_f

    :cond_a
    const/4 v1, 0x6

    if-ne p0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :cond_f
    :goto_f
    return v0
.end method


# virtual methods
.method public build()Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;
    .registers 11

    .line 375
    new-instance v9, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;

    iget v1, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings$Builder;->mScanMode:I

    iget v2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings$Builder;->mCallbackType:I

    iget-wide v3, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings$Builder;->mReportDelayMillis:J

    iget v5, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings$Builder;->mMatchMode:I

    iget v6, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings$Builder;->mNumOfMatchesPerFilter:I

    iget-boolean v7, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings$Builder;->mLegacy:Z

    iget-boolean v8, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings$Builder;->mShouldCheckLocationProviderState:Z

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;-><init>(IIJIIZZ)V

    return-object v9
.end method

.method public setCallbackType(I)Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings$Builder;
    .registers 5

    .line 286
    invoke-static {p1}, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings$Builder;->isValidCallbackType(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 289
    iput p1, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings$Builder;->mCallbackType:I

    return-object p0

    .line 287
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid callback type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setScanMode(I)Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings$Builder;
    .registers 5

    const/4 v0, -0x1

    if-lt p1, v0, :cond_9

    const/4 v0, 0x2

    if-gt p1, v0, :cond_9

    .line 274
    iput p1, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings$Builder;->mScanMode:I

    return-object p0

    .line 272
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid scan mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
