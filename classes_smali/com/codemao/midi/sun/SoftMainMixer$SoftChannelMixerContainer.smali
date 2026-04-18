.class Lcom/codemao/midi/sun/SoftMainMixer$SoftChannelMixerContainer;
.super Ljava/lang/Object;
.source "SoftMainMixer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/sun/SoftMainMixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoftChannelMixerContainer"
.end annotation


# instance fields
.field buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

.field mixer:Lcom/codemao/midi/sun/ModelChannelMixer;


# direct methods
.method private constructor <init>(Lcom/codemao/midi/sun/SoftMainMixer;)V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/codemao/midi/sun/SoftMainMixer;Lcom/codemao/midi/sun/SoftMainMixer$1;)V
    .registers 3

    .line 50
    invoke-direct {p0, p1}, Lcom/codemao/midi/sun/SoftMainMixer$SoftChannelMixerContainer;-><init>(Lcom/codemao/midi/sun/SoftMainMixer;)V

    return-void
.end method
