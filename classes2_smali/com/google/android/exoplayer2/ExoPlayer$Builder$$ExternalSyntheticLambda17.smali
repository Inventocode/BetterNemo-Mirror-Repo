.class public final synthetic Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/source/MediaSourceFactory;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/MediaSourceFactory;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda17;->f$0:Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda17;->f$0:Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->$r8$lambda$wWN4ZKMQtjFishtl4NlUuB9IVvU(Lcom/google/android/exoplayer2/source/MediaSourceFactory;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    move-result-object v0

    return-object v0
.end method
