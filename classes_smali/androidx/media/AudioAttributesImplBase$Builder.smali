.class Landroidx/media/AudioAttributesImplBase$Builder;
.super Ljava/lang/Object;
.source "AudioAttributesImplBase.java"

# interfaces
.implements Landroidx/media/AudioAttributesImpl$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/AudioAttributesImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mContentType:I

.field private mFlags:I

.field private mLegacyStream:I

.field private mUsage:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 184
    iput v0, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mUsage:I

    .line 185
    iput v0, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mContentType:I

    .line 186
    iput v0, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mFlags:I

    const/4 v0, -0x1

    .line 187
    iput v0, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mLegacyStream:I

    return-void
.end method

.method private setInternalLegacyStreamType(I)Landroidx/media/AudioAttributesImplBase$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streamType"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x4

    packed-switch p1, :pswitch_data_52

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid stream type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for AudioAttributesCompat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioAttributesCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 308
    :pswitch_21  #0xa
    iput v0, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mContentType:I

    goto :goto_4a

    .line 305
    :pswitch_24  #0x9
    iput v1, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mContentType:I

    goto :goto_4a

    .line 302
    :pswitch_27  #0x8
    iput v1, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mContentType:I

    goto :goto_4a

    .line 280
    :pswitch_2a  #0x7
    iget v2, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mFlags:I

    goto :goto_45

    .line 298
    :pswitch_30  #0x6
    iput v0, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mContentType:I

    .line 299
    iget v0, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mFlags:I

    goto :goto_4a

    .line 295
    :pswitch_38  #0x5
    iput v1, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mContentType:I

    goto :goto_4a

    .line 292
    :pswitch_3b  #0x4
    iput v1, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mContentType:I

    goto :goto_4a

    :pswitch_3e  #0x3
    const/4 v0, 0x2

    .line 289
    iput v0, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mContentType:I

    goto :goto_4a

    .line 286
    :pswitch_42  #0x2
    iput v1, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mContentType:I

    goto :goto_4a

    .line 283
    :goto_45
    :pswitch_45  #0x1
    iput v1, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mContentType:I

    goto :goto_4a

    .line 277
    :pswitch_48  #0x0
    iput v0, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mContentType:I

    .line 313
    :goto_4a
    invoke-static {p1}, Landroidx/media/AudioAttributesImplBase;->usageForStreamType(I)I

    move-result p1

    iput p1, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mUsage:I

    return-object p0

    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_48  #00000000
        :pswitch_45  #00000001
        :pswitch_42  #00000002
        :pswitch_3e  #00000003
        :pswitch_3b  #00000004
        :pswitch_38  #00000005
        :pswitch_30  #00000006
        :pswitch_2a  #00000007
        :pswitch_27  #00000008
        :pswitch_24  #00000009
        :pswitch_21  #0000000a
    .end packed-switch
.end method


# virtual methods
.method public build()Landroidx/media/AudioAttributesImpl;
    .registers 6

    .line 202
    new-instance v0, Landroidx/media/AudioAttributesImplBase;

    iget v1, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mContentType:I

    iget v2, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mFlags:I

    iget v3, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mUsage:I

    iget v4, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mLegacyStream:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media/AudioAttributesImplBase;-><init>(IIII)V

    return-object v0
.end method

.method public bridge synthetic setLegacyStreamType(I)Landroidx/media/AudioAttributesImpl$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "streamType"
        }
    .end annotation

    .line 183
    invoke-virtual {p0, p1}, Landroidx/media/AudioAttributesImplBase$Builder;->setLegacyStreamType(I)Landroidx/media/AudioAttributesImplBase$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setLegacyStreamType(I)Landroidx/media/AudioAttributesImplBase$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streamType"
        }
    .end annotation

    const/16 v0, 0xa

    if-eq p1, v0, :cond_b

    .line 270
    iput p1, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mLegacyStream:I

    .line 271
    invoke-direct {p0, p1}, Landroidx/media/AudioAttributesImplBase$Builder;->setInternalLegacyStreamType(I)Landroidx/media/AudioAttributesImplBase$Builder;

    move-result-object p1

    return-object p1

    .line 266
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "STREAM_ACCESSIBILITY is not a legacy stream type that was used for audio playback"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
