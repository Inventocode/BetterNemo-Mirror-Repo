.class public final Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack$Companion;
.super Ljava/lang/Object;
.source "RealtimePcmPlayerWithAudioTrack.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEND_OF_STREAM()[B
    .registers 2

    .line 29
    invoke-static {}, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->access$getEND_OF_STREAM$cp()[B

    move-result-object v0

    return-object v0
.end method
