.class public final Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder$Companion;
.super Ljava/lang/Object;
.source "DSAudioRecorder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isEnableAac()Z
    .registers 2

    .line 33
    invoke-static {}, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->access$getEnableCompress$cp()Z

    move-result v0

    return v0
.end method
