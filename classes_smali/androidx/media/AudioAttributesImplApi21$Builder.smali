.class Landroidx/media/AudioAttributesImplApi21$Builder;
.super Ljava/lang/Object;
.source "AudioAttributesImplApi21.java"

# interfaces
.implements Landroidx/media/AudioAttributesImpl$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/AudioAttributesImplApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field final mFwkBuilder:Landroid/media/AudioAttributes$Builder;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iput-object v0, p0, Landroidx/media/AudioAttributesImplApi21$Builder;->mFwkBuilder:Landroid/media/AudioAttributes$Builder;

    return-void
.end method


# virtual methods
.method public build()Landroidx/media/AudioAttributesImpl;
    .registers 3

    .line 142
    new-instance v0, Landroidx/media/AudioAttributesImplApi21;

    iget-object v1, p0, Landroidx/media/AudioAttributesImplApi21$Builder;->mFwkBuilder:Landroid/media/AudioAttributes$Builder;

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media/AudioAttributesImplApi21;-><init>(Landroid/media/AudioAttributes;)V

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

    .line 127
    invoke-virtual {p0, p1}, Landroidx/media/AudioAttributesImplApi21$Builder;->setLegacyStreamType(I)Landroidx/media/AudioAttributesImplApi21$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setLegacyStreamType(I)Landroidx/media/AudioAttributesImplApi21$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streamType"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Landroidx/media/AudioAttributesImplApi21$Builder;->mFwkBuilder:Landroid/media/AudioAttributes$Builder;

    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    return-object p0
.end method
