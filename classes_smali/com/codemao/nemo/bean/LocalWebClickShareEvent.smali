.class public Lcom/codemao/nemo/bean/LocalWebClickShareEvent;
.super Lcom/codemao/nemo/bean/BaseJsonBean;
.source "LocalWebClickShareEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/codemao/nemo/bean/LocalWebClickShareEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private share_description:Ljava/lang/String;

.field private share_image_url:Ljava/lang/String;

.field private share_title:Ljava/lang/String;

.field private share_url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 71
    new-instance v0, Lcom/codemao/nemo/bean/LocalWebClickShareEvent$1;

    invoke-direct {v0}, Lcom/codemao/nemo/bean/LocalWebClickShareEvent$1;-><init>()V

    sput-object v0, Lcom/codemao/nemo/bean/LocalWebClickShareEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 51
    invoke-direct {p0}, Lcom/codemao/nemo/bean/BaseJsonBean;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/LocalWebClickShareEvent;->share_url:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/LocalWebClickShareEvent;->share_title:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/LocalWebClickShareEvent;->share_image_url:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/bean/LocalWebClickShareEvent;->share_description:Ljava/lang/String;

    return-void
.end method

.method public static getCREATOR()Landroid/os/Parcelable$Creator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator<",
            "Lcom/codemao/nemo/bean/LocalWebClickShareEvent;",
            ">;"
        }
    .end annotation

    .line 47
    sget-object v0, Lcom/codemao/nemo/bean/LocalWebClickShareEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getShare_description()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/codemao/nemo/bean/LocalWebClickShareEvent;->share_description:Ljava/lang/String;

    return-object v0
.end method

.method public getShare_image_url()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/codemao/nemo/bean/LocalWebClickShareEvent;->share_image_url:Ljava/lang/String;

    return-object v0
.end method

.method public getShare_title()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/codemao/nemo/bean/LocalWebClickShareEvent;->share_title:Ljava/lang/String;

    return-object v0
.end method

.method public getShare_url()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/codemao/nemo/bean/LocalWebClickShareEvent;->share_url:Ljava/lang/String;

    return-object v0
.end method

.method public setShare_description(Ljava/lang/String;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/codemao/nemo/bean/LocalWebClickShareEvent;->share_description:Ljava/lang/String;

    return-void
.end method

.method public setShare_image_url(Ljava/lang/String;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/codemao/nemo/bean/LocalWebClickShareEvent;->share_image_url:Ljava/lang/String;

    return-void
.end method

.method public setShare_title(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/codemao/nemo/bean/LocalWebClickShareEvent;->share_title:Ljava/lang/String;

    return-void
.end method

.method public setShare_url(Ljava/lang/String;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/codemao/nemo/bean/LocalWebClickShareEvent;->share_url:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 60
    iget-object p2, p0, Lcom/codemao/nemo/bean/LocalWebClickShareEvent;->share_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object p2, p0, Lcom/codemao/nemo/bean/LocalWebClickShareEvent;->share_title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object p2, p0, Lcom/codemao/nemo/bean/LocalWebClickShareEvent;->share_image_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object p2, p0, Lcom/codemao/nemo/bean/LocalWebClickShareEvent;->share_description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
