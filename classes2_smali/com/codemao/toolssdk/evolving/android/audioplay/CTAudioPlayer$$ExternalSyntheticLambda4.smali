.class public final synthetic Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:[J

.field public final synthetic f$3:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;Ljava/lang/String;[JLjava/util/concurrent/CountDownLatch;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$$ExternalSyntheticLambda4;->f$0:Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;

    iput-object p2, p0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$$ExternalSyntheticLambda4;->f$2:[J

    iput-object p4, p0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$$ExternalSyntheticLambda4;->f$3:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$$ExternalSyntheticLambda4;->f$0:Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;

    iget-object v1, p0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$$ExternalSyntheticLambda4;->f$2:[J

    iget-object v3, p0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$$ExternalSyntheticLambda4;->f$3:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, v2, v3}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->$r8$lambda$itZI1dvPtVrs2F8IF1I7FlcCx2g(Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;Ljava/lang/String;[JLjava/util/concurrent/CountDownLatch;)V

    return-void
.end method
