.class Lcom/google/android/exoplayer2/util/NetworkTypeObserver$TelephonyManagerListener;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkTypeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/NetworkTypeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelephonyManagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/util/NetworkTypeObserver;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/util/NetworkTypeObserver;)V
    .registers 2

    .line 267
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$TelephonyManagerListener;->this$0:Lcom/google/android/exoplayer2/util/NetworkTypeObserver;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/util/NetworkTypeObserver;Lcom/google/android/exoplayer2/util/NetworkTypeObserver$1;)V
    .registers 3

    .line 267
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$TelephonyManagerListener;-><init>(Lcom/google/android/exoplayer2/util/NetworkTypeObserver;)V

    return-void
.end method


# virtual methods
.method public onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .registers 3

    .line 282
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_d

    const/4 v0, 0x4

    if-ne p1, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    .line 286
    :goto_e
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$TelephonyManagerListener;->this$0:Lcom/google/android/exoplayer2/util/NetworkTypeObserver;

    if-eqz p1, :cond_15

    const/16 p1, 0xa

    goto :goto_16

    :cond_15
    const/4 p1, 0x5

    :goto_16
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->access$400(Lcom/google/android/exoplayer2/util/NetworkTypeObserver;I)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 3

    if-nez p1, :cond_5

    const-string p1, ""

    goto :goto_9

    .line 272
    :cond_5
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_9
    const-string v0, "nrState=CONNECTED"

    .line 274
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "nrState=NOT_RESTRICTED"

    .line 275
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p1, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 p1, 0x1

    .line 276
    :goto_1d
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$TelephonyManagerListener;->this$0:Lcom/google/android/exoplayer2/util/NetworkTypeObserver;

    if-eqz p1, :cond_24

    const/16 p1, 0xa

    goto :goto_25

    :cond_24
    const/4 p1, 0x5

    :goto_25
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->access$400(Lcom/google/android/exoplayer2/util/NetworkTypeObserver;I)V

    return-void
.end method
