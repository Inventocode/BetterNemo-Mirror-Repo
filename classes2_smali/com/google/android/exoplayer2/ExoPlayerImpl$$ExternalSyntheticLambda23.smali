.class public final synthetic Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda23;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda23;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda23;->INSTANCE:Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda23;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player$EventListener;->onSeekProcessed()V

    return-void
.end method
