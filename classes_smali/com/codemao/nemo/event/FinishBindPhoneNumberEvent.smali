.class public Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;
.super Ljava/lang/Object;
.source "FinishBindPhoneNumberEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isFinishAnswer:Z

.field public isVerified:Z

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent$1;

    invoke-direct {v0}, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent$1;-><init>()V

    sput-object v0, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;->isVerified:Z

    .line 9
    iput-boolean v0, p0, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;->isFinishAnswer:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;->isVerified:Z

    .line 9
    iput-boolean v0, p0, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;->isFinishAnswer:Z

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    iput-boolean v1, p0, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;->isVerified:Z

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    iput-boolean v0, p0, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;->isFinishAnswer:Z

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;->type:I

    return-void
.end method

.method public constructor <init>(ZZI)V
    .registers 5

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;->isVerified:Z

    .line 9
    iput-boolean v0, p0, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;->isFinishAnswer:Z

    .line 35
    iput-boolean p1, p0, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;->isVerified:Z

    .line 36
    iput-boolean p2, p0, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;->isFinishAnswer:Z

    .line 37
    iput p3, p0, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;->type:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 20
    iget-boolean p2, p0, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;->isVerified:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 21
    iget-boolean p2, p0, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;->isFinishAnswer:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 22
    iget p2, p0, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
