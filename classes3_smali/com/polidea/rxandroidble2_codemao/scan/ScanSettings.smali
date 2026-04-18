.class public Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;
.super Ljava/lang/Object;
.source "ScanSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallbackType:I

.field private mLegacy:Z

.field private mMatchMode:I

.field private mNumOfMatchesPerFilter:I

.field private mReportDelayMillis:J

.field private mScanMode:I

.field private mShouldCheckLocationProviderState:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 224
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings$1;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings$1;-><init>()V

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIJIIZZ)V
    .registers 9

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput p1, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->mScanMode:I

    .line 185
    iput p2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->mCallbackType:I

    .line 186
    iput-wide p3, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->mReportDelayMillis:J

    .line 187
    iput p6, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->mNumOfMatchesPerFilter:I

    .line 188
    iput p5, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->mMatchMode:I

    .line 189
    iput-boolean p7, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->mLegacy:Z

    .line 190
    iput-boolean p8, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->mShouldCheckLocationProviderState:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->mScanMode:I

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->mCallbackType:I

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->mReportDelayMillis:J

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->mMatchMode:I

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->mNumOfMatchesPerFilter:I

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    iput-boolean v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->mLegacy:Z

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_35

    goto :goto_36

    :cond_35
    const/4 v1, 0x0

    :goto_36
    iput-boolean v1, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->mShouldCheckLocationProviderState:Z

    return-void
.end method


# virtual methods
.method public copyWithCallbackType(I)Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;
    .registers 12

    .line 238
    new-instance v9, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;

    iget v1, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->mScanMode:I

    iget-wide v3, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->mReportDelayMillis:J

    iget v5, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->mMatchMode:I

    iget v6, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->mNumOfMatchesPerFilter:I

    iget-boolean v7, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->mLegacy:Z

    iget-boolean v8, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->mShouldCheckLocationProviderState:Z

    move-object v0, v9

    move v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;-><init>(IIJIIZZ)V

    return-object v9
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCallbackType()I
    .registers 2

    .line 152
    iget v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->mCallbackType:I

    return v0
.end method

.method public getLegacy()Z
    .registers 2

    .line 166
    iget-boolean v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->mLegacy:Z

    return v0
.end method

.method public getMatchMode()I
    .registers 2

    .line 157
    iget v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->mMatchMode:I

    return v0
.end method

.method public getNumOfMatches()I
    .registers 2

    .line 162
    iget v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->mNumOfMatchesPerFilter:I

    return v0
.end method

.method public getReportDelayMillis()J
    .registers 3

    .line 173
    iget-wide v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->mReportDelayMillis:J

    return-wide v0
.end method

.method public getScanMode()I
    .registers 2

    .line 147
    iget v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->mScanMode:I

    return v0
.end method

.method public shouldCheckLocationProviderState()Z
    .registers 2

    .line 178
    iget-boolean v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->mShouldCheckLocationProviderState:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 209
    iget p2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->mScanMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget p2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->mCallbackType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget-wide v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->mReportDelayMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 212
    iget p2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->mMatchMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget p2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->mNumOfMatchesPerFilter:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget-boolean p2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->mLegacy:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget-boolean p2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->mShouldCheckLocationProviderState:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
