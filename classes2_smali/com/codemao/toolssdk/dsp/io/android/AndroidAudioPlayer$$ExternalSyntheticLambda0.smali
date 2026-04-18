.class public final synthetic Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer;->processingFinished()V

    return-void
.end method
