.class public final Lcom/google/android/exoplayer2/metadata/flac/VorbisComment;
.super Ljava/lang/Object;
.source "VorbisComment.java"

# interfaces
.implements Lcom/google/android/exoplayer2/metadata/Metadata$Entry;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplayer2/metadata/flac/VorbisComment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final key:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 110
    new-instance v0, Lcom/google/android/exoplayer2/metadata/flac/VorbisComment$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/flac/VorbisComment$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/metadata/flac/VorbisComment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/google/android/exoplayer2/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_29

    .line 82
    const-class v2, Lcom/google/android/exoplayer2/metadata/flac/VorbisComment;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_29

    .line 85
    :cond_10
    check-cast p1, Lcom/google/android/exoplayer2/metadata/flac/VorbisComment;

    .line 86
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    return v0

    :cond_29
    :goto_29
    return v1
.end method

.method public synthetic getWrappedMetadataBytes()[B
    .registers 2

    invoke-static {p0}, Lcom/google/android/exoplayer2/metadata/Metadata$Entry$-CC;->$default$getWrappedMetadataBytes(Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)[B

    move-result-object v0

    return-object v0
.end method

.method public synthetic getWrappedMetadataFormat()Lcom/google/android/exoplayer2/Format;
    .registers 2

    invoke-static {p0}, Lcom/google/android/exoplayer2/metadata/Metadata$Entry$-CC;->$default$getWrappedMetadataFormat(Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public populateMediaMetadata(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)V
    .registers 5

    .line 51
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_66

    goto :goto_44

    :sswitch_e
    const-string v1, "ARTIST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_44

    :cond_17
    const/4 v2, 0x4

    goto :goto_44

    :sswitch_19
    const-string v1, "ALBUMARTIST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_44

    :cond_22
    const/4 v2, 0x3

    goto :goto_44

    :sswitch_24
    const-string v1, "DESCRIPTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_44

    :cond_2d
    const/4 v2, 0x2

    goto :goto_44

    :sswitch_2f
    const-string v1, "TITLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_44

    :cond_38
    const/4 v2, 0x1

    goto :goto_44

    :sswitch_3a
    const-string v1, "ALBUM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto :goto_44

    :cond_43
    const/4 v2, 0x0

    :goto_44
    packed-switch v2, :pswitch_data_7c

    goto :goto_65

    .line 56
    :pswitch_48  #0x4
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setArtist(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    goto :goto_65

    .line 62
    :pswitch_4e  #0x3
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setAlbumArtist(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    goto :goto_65

    .line 65
    :pswitch_54  #0x2
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setDescription(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    goto :goto_65

    .line 53
    :pswitch_5a  #0x1
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    goto :goto_65

    .line 59
    :pswitch_60  #0x0
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setAlbumTitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    :goto_65
    return-void

    :sswitch_data_66
    .sparse-switch
        0x3b7864f -> :sswitch_3a
        0x4c22a38 -> :sswitch_2f
        0x198917dc -> :sswitch_24
        0x681d2256 -> :sswitch_19
        0x7395d347 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_60  #00000000
        :pswitch_5a  #00000001
        :pswitch_54  #00000002
        :pswitch_4e  #00000003
        :pswitch_48  #00000004
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 74
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "VC: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 101
    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
