.class public final Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$Companion;
.super Ljava/lang/Object;
.source "CTAudioPlayer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$Companion;-><init>()V

    return-void
.end method

.method private final init(Ljava/lang/String;)Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;
    .registers 5

    .line 36
    sget-object v0, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkPyt(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_26

    .line 37
    invoke-static {}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->access$getPlayerPython$cp()Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;

    move-result-object v0

    if-nez v0, :cond_14

    new-instance v0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;

    invoke-direct {v0, p1, v2}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_14
    invoke-static {v0}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->access$setPlayerPython$cp(Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;)V

    .line 38
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "创建python音频播放"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->access$getPlayerPython$cp()Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_65

    .line 42
    :cond_26
    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkAIKids(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 43
    invoke-static {}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->access$getPlayerAiKids$cp()Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;

    move-result-object v0

    if-nez v0, :cond_37

    new-instance v0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;

    invoke-direct {v0, p1, v2}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_37
    invoke-static {v0}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->access$setPlayerAiKids$cp(Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;)V

    .line 44
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "创建AIKids音频播放"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->access$getPlayerAiKids$cp()Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_65

    .line 49
    :cond_49
    invoke-static {}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->access$getPlayerKn$cp()Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;

    move-result-object v0

    if-nez v0, :cond_54

    new-instance v0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;

    invoke-direct {v0, p1, v2}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_54
    invoke-static {v0}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->access$setPlayerKn$cp(Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;)V

    .line 50
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "创建kn音频播放"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->access$getPlayerKn$cp()Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_65
    return-object p1
.end method


# virtual methods
.method public final getInstance(Ljava/lang/String;)Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$Companion;->init(Ljava/lang/String;)Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;

    move-result-object p1

    return-object p1
.end method
