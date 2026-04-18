.class public final Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;
.super Ljava/lang/Object;
.source "DefaultBandwidthMeter.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
.implements Lcom/google/android/exoplayer2/upstream/TransferListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;
    }
.end annotation


# static fields
.field private static final BYTES_TRANSFERRED_FOR_ESTIMATE:I = 0x80000

.field private static final COUNTRY_GROUP_INDEX_2G:I = 0x1

.field private static final COUNTRY_GROUP_INDEX_3G:I = 0x2

.field private static final COUNTRY_GROUP_INDEX_4G:I = 0x3

.field private static final COUNTRY_GROUP_INDEX_5G_NSA:I = 0x4

.field private static final COUNTRY_GROUP_INDEX_5G_SA:I = 0x5

.field private static final COUNTRY_GROUP_INDEX_WIFI:I = 0x0

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATE:J = 0xf4240L

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATES_2G:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATES_3G:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATES_4G:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_NSA:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_SA:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_SLIDING_WINDOW_MAX_WEIGHT:I = 0x7d0

.field private static final ELAPSED_MILLIS_FOR_ESTIMATE:I = 0x7d0

.field private static singletonInstance:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;


# instance fields
.field private bitrateEstimate:J

.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private final eventDispatcher:Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;

.field private final initialBitrateEstimates:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lastReportedBitrateEstimate:J

.field private networkType:I

.field private networkTypeOverride:I

.field private networkTypeOverrideSet:Z

.field private final resetOnNetworkTypeChange:Z

.field private sampleBytesTransferred:J

.field private sampleStartTimeMs:J

.field private final slidingPercentile:Lcom/google/android/exoplayer2/upstream/SlidingPercentile;

.field private streamCount:I

.field private totalBytesTransferred:J

.field private totalElapsedTimeMs:J


# direct methods
.method public static synthetic $r8$lambda$n4HgtxeYBFNUETYzdzpx6UkOs7c(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->onNetworkTypeChanged(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 9

    const-wide/32 v0, 0x5265c0

    .line 45
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/32 v1, 0x325aa0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/32 v2, 0x1e8480

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v3, 0x13d620

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/32 v4, 0xb98c0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI:Lcom/google/common/collect/ImmutableList;

    const-wide/32 v4, 0x19f0a0

    .line 49
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/32 v4, 0xc8320

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/32 v5, 0x6ddd0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-wide/32 v6, 0x2bf20

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-wide/32 v7, 0x1fbd0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v0, v4, v5, v6, v7}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    sput-object v5, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_2G:Lcom/google/common/collect/ImmutableList;

    const-wide/32 v5, 0x231860

    .line 53
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-wide/32 v6, 0xf4240

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-wide/32 v7, 0x8b290

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v5, v3, v6, v4, v7}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    sput-object v3, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_3G:Lcom/google/common/collect/ImmutableList;

    const-wide/32 v3, 0x33e140

    .line 57
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/32 v4, 0x155cc0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/32 v7, 0x975e0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v2, v4, v6, v5}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    sput-object v2, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_4G:Lcom/google/common/collect/ImmutableList;

    const-wide/32 v2, 0x7270e0

    .line 61
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v3, 0x4f5880

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/32 v4, 0x387520

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/32 v5, 0x1b7740

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-wide/32 v6, 0x10c8e0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    sput-object v2, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_NSA:Lcom/google/common/collect/ImmutableList;

    const-wide/32 v2, 0x1cfde0

    .line 65
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v3, 0x16e360

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/32 v4, 0x124f80

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_SA:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public constructor <init>()V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 293
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    sget-object v4, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    const/4 v1, 0x0

    const/16 v3, 0x7d0

    const/4 v5, 0x0

    move-object v0, p0

    .line 291
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>(Landroid/content/Context;Ljava/util/Map;ILcom/google/android/exoplayer2/util/Clock;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/Map;ILcom/google/android/exoplayer2/util/Clock;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;I",
            "Lcom/google/android/exoplayer2/util/Clock;",
            "Z)V"
        }
    .end annotation

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    invoke-static {p2}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->initialBitrateEstimates:Lcom/google/common/collect/ImmutableMap;

    .line 306
    new-instance p2, Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->eventDispatcher:Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;

    .line 307
    new-instance p2, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;

    invoke-direct {p2, p3}, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->slidingPercentile:Lcom/google/android/exoplayer2/upstream/SlidingPercentile;

    .line 308
    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 309
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->resetOnNetworkTypeChange:Z

    if-eqz p1, :cond_36

    .line 311
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->getInstance(Landroid/content/Context;)Lcom/google/android/exoplayer2/util/NetworkTypeObserver;

    move-result-object p1

    .line 312
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->getNetworkType()I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->networkType:I

    .line 313
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->getInitialBitrateEstimateForNetworkType(I)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    .line 314
    new-instance p2, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)V

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->register(Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Listener;)V

    goto :goto_3f

    :cond_36
    const/4 p1, 0x0

    .line 316
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->networkType:I

    .line 317
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->getInitialBitrateEstimateForNetworkType(I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    :goto_3f
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/util/Map;ILcom/google/android/exoplayer2/util/Clock;ZLcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$1;)V
    .registers 7

    .line 41
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>(Landroid/content/Context;Ljava/util/Map;ILcom/google/android/exoplayer2/util/Clock;Z)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)[I
    .registers 1

    .line 41
    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->getInitialBitrateCountryGroupAssignment(Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method private static getInitialBitrateCountryGroupAssignment(Ljava/lang/String;)[I
    .registers 4

    .line 471
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_10bc

    goto/16 :goto_cf9

    :sswitch_e
    const-string v0, "ZW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto/16 :goto_cf9

    :cond_18
    const/16 v2, 0xed

    goto/16 :goto_cf9

    :sswitch_1c
    const-string v0, "ZM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto/16 :goto_cf9

    :cond_26
    const/16 v2, 0xec

    goto/16 :goto_cf9

    :sswitch_2a
    const-string v0, "ZA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34

    goto/16 :goto_cf9

    :cond_34
    const/16 v2, 0xeb

    goto/16 :goto_cf9

    :sswitch_38
    const-string v0, "YT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_42

    goto/16 :goto_cf9

    :cond_42
    const/16 v2, 0xea

    goto/16 :goto_cf9

    :sswitch_46
    const-string v0, "YE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_50

    goto/16 :goto_cf9

    :cond_50
    const/16 v2, 0xe9

    goto/16 :goto_cf9

    :sswitch_54
    const-string v0, "XK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5e

    goto/16 :goto_cf9

    :cond_5e
    const/16 v2, 0xe8

    goto/16 :goto_cf9

    :sswitch_62
    const-string v0, "WS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6c

    goto/16 :goto_cf9

    :cond_6c
    const/16 v2, 0xe7

    goto/16 :goto_cf9

    :sswitch_70
    const-string v0, "WF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7a

    goto/16 :goto_cf9

    :cond_7a
    const/16 v2, 0xe6

    goto/16 :goto_cf9

    :sswitch_7e
    const-string v0, "VU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_88

    goto/16 :goto_cf9

    :cond_88
    const/16 v2, 0xe5

    goto/16 :goto_cf9

    :sswitch_8c
    const-string v0, "VN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_96

    goto/16 :goto_cf9

    :cond_96
    const/16 v2, 0xe4

    goto/16 :goto_cf9

    :sswitch_9a
    const-string v0, "VI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a4

    goto/16 :goto_cf9

    :cond_a4
    const/16 v2, 0xe3

    goto/16 :goto_cf9

    :sswitch_a8
    const-string v0, "VG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b2

    goto/16 :goto_cf9

    :cond_b2
    const/16 v2, 0xe2

    goto/16 :goto_cf9

    :sswitch_b6
    const-string v0, "VE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c0

    goto/16 :goto_cf9

    :cond_c0
    const/16 v2, 0xe1

    goto/16 :goto_cf9

    :sswitch_c4
    const-string v0, "VC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ce

    goto/16 :goto_cf9

    :cond_ce
    const/16 v2, 0xe0

    goto/16 :goto_cf9

    :sswitch_d2
    const-string v0, "UZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_dc

    goto/16 :goto_cf9

    :cond_dc
    const/16 v2, 0xdf

    goto/16 :goto_cf9

    :sswitch_e0
    const-string v0, "UY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ea

    goto/16 :goto_cf9

    :cond_ea
    const/16 v2, 0xde

    goto/16 :goto_cf9

    :sswitch_ee
    const-string v0, "US"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f8

    goto/16 :goto_cf9

    :cond_f8
    const/16 v2, 0xdd

    goto/16 :goto_cf9

    :sswitch_fc
    const-string v0, "UG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_106

    goto/16 :goto_cf9

    :cond_106
    const/16 v2, 0xdc

    goto/16 :goto_cf9

    :sswitch_10a
    const-string v0, "UA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_114

    goto/16 :goto_cf9

    :cond_114
    const/16 v2, 0xdb

    goto/16 :goto_cf9

    :sswitch_118
    const-string v0, "TZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_122

    goto/16 :goto_cf9

    :cond_122
    const/16 v2, 0xda

    goto/16 :goto_cf9

    :sswitch_126
    const-string v0, "TW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_130

    goto/16 :goto_cf9

    :cond_130
    const/16 v2, 0xd9

    goto/16 :goto_cf9

    :sswitch_134
    const-string v0, "TV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13e

    goto/16 :goto_cf9

    :cond_13e
    const/16 v2, 0xd8

    goto/16 :goto_cf9

    :sswitch_142
    const-string v0, "TT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14c

    goto/16 :goto_cf9

    :cond_14c
    const/16 v2, 0xd7

    goto/16 :goto_cf9

    :sswitch_150
    const-string v0, "TR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15a

    goto/16 :goto_cf9

    :cond_15a
    const/16 v2, 0xd6

    goto/16 :goto_cf9

    :sswitch_15e
    const-string v0, "TO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_168

    goto/16 :goto_cf9

    :cond_168
    const/16 v2, 0xd5

    goto/16 :goto_cf9

    :sswitch_16c
    const-string v0, "TN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_176

    goto/16 :goto_cf9

    :cond_176
    const/16 v2, 0xd4

    goto/16 :goto_cf9

    :sswitch_17a
    const-string v0, "TM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_184

    goto/16 :goto_cf9

    :cond_184
    const/16 v2, 0xd3

    goto/16 :goto_cf9

    :sswitch_188
    const-string v0, "TL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_192

    goto/16 :goto_cf9

    :cond_192
    const/16 v2, 0xd2

    goto/16 :goto_cf9

    :sswitch_196
    const-string v0, "TJ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a0

    goto/16 :goto_cf9

    :cond_1a0
    const/16 v2, 0xd1

    goto/16 :goto_cf9

    :sswitch_1a4
    const-string v0, "TH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1ae

    goto/16 :goto_cf9

    :cond_1ae
    const/16 v2, 0xd0

    goto/16 :goto_cf9

    :sswitch_1b2
    const-string v0, "TG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1bc

    goto/16 :goto_cf9

    :cond_1bc
    const/16 v2, 0xcf

    goto/16 :goto_cf9

    :sswitch_1c0
    const-string v0, "TD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1ca

    goto/16 :goto_cf9

    :cond_1ca
    const/16 v2, 0xce

    goto/16 :goto_cf9

    :sswitch_1ce
    const-string v0, "TC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d8

    goto/16 :goto_cf9

    :cond_1d8
    const/16 v2, 0xcd

    goto/16 :goto_cf9

    :sswitch_1dc
    const-string v0, "SZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e6

    goto/16 :goto_cf9

    :cond_1e6
    const/16 v2, 0xcc

    goto/16 :goto_cf9

    :sswitch_1ea
    const-string v0, "SY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f4

    goto/16 :goto_cf9

    :cond_1f4
    const/16 v2, 0xcb

    goto/16 :goto_cf9

    :sswitch_1f8
    const-string v0, "SX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_202

    goto/16 :goto_cf9

    :cond_202
    const/16 v2, 0xca

    goto/16 :goto_cf9

    :sswitch_206
    const-string v0, "SV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_210

    goto/16 :goto_cf9

    :cond_210
    const/16 v2, 0xc9

    goto/16 :goto_cf9

    :sswitch_214
    const-string v0, "ST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21e

    goto/16 :goto_cf9

    :cond_21e
    const/16 v2, 0xc8

    goto/16 :goto_cf9

    :sswitch_222
    const-string v0, "SS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22c

    goto/16 :goto_cf9

    :cond_22c
    const/16 v2, 0xc7

    goto/16 :goto_cf9

    :sswitch_230
    const-string v0, "SR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23a

    goto/16 :goto_cf9

    :cond_23a
    const/16 v2, 0xc6

    goto/16 :goto_cf9

    :sswitch_23e
    const-string v0, "SO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_248

    goto/16 :goto_cf9

    :cond_248
    const/16 v2, 0xc5

    goto/16 :goto_cf9

    :sswitch_24c
    const-string v0, "SN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_256

    goto/16 :goto_cf9

    :cond_256
    const/16 v2, 0xc4

    goto/16 :goto_cf9

    :sswitch_25a
    const-string v0, "SM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_264

    goto/16 :goto_cf9

    :cond_264
    const/16 v2, 0xc3

    goto/16 :goto_cf9

    :sswitch_268
    const-string v0, "SL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_272

    goto/16 :goto_cf9

    :cond_272
    const/16 v2, 0xc2

    goto/16 :goto_cf9

    :sswitch_276
    const-string v0, "SK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_280

    goto/16 :goto_cf9

    :cond_280
    const/16 v2, 0xc1

    goto/16 :goto_cf9

    :sswitch_284
    const-string v0, "SJ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28e

    goto/16 :goto_cf9

    :cond_28e
    const/16 v2, 0xc0

    goto/16 :goto_cf9

    :sswitch_292
    const-string v0, "SI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29c

    goto/16 :goto_cf9

    :cond_29c
    const/16 v2, 0xbf

    goto/16 :goto_cf9

    :sswitch_2a0
    const-string v0, "SH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2aa

    goto/16 :goto_cf9

    :cond_2aa
    const/16 v2, 0xbe

    goto/16 :goto_cf9

    :sswitch_2ae
    const-string v0, "SG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b8

    goto/16 :goto_cf9

    :cond_2b8
    const/16 v2, 0xbd

    goto/16 :goto_cf9

    :sswitch_2bc
    const-string v0, "SE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c6

    goto/16 :goto_cf9

    :cond_2c6
    const/16 v2, 0xbc

    goto/16 :goto_cf9

    :sswitch_2ca
    const-string v0, "SD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d4

    goto/16 :goto_cf9

    :cond_2d4
    const/16 v2, 0xbb

    goto/16 :goto_cf9

    :sswitch_2d8
    const-string v0, "SC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e2

    goto/16 :goto_cf9

    :cond_2e2
    const/16 v2, 0xba

    goto/16 :goto_cf9

    :sswitch_2e6
    const-string v0, "SB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f0

    goto/16 :goto_cf9

    :cond_2f0
    const/16 v2, 0xb9

    goto/16 :goto_cf9

    :sswitch_2f4
    const-string v0, "SA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2fe

    goto/16 :goto_cf9

    :cond_2fe
    const/16 v2, 0xb8

    goto/16 :goto_cf9

    :sswitch_302
    const-string v0, "RW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_30c

    goto/16 :goto_cf9

    :cond_30c
    const/16 v2, 0xb7

    goto/16 :goto_cf9

    :sswitch_310
    const-string v0, "RU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_31a

    goto/16 :goto_cf9

    :cond_31a
    const/16 v2, 0xb6

    goto/16 :goto_cf9

    :sswitch_31e
    const-string v0, "RS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_328

    goto/16 :goto_cf9

    :cond_328
    const/16 v2, 0xb5

    goto/16 :goto_cf9

    :sswitch_32c
    const-string v0, "RO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_336

    goto/16 :goto_cf9

    :cond_336
    const/16 v2, 0xb4

    goto/16 :goto_cf9

    :sswitch_33a
    const-string v0, "RE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_344

    goto/16 :goto_cf9

    :cond_344
    const/16 v2, 0xb3

    goto/16 :goto_cf9

    :sswitch_348
    const-string v0, "QA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_352

    goto/16 :goto_cf9

    :cond_352
    const/16 v2, 0xb2

    goto/16 :goto_cf9

    :sswitch_356
    const-string v0, "PY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_360

    goto/16 :goto_cf9

    :cond_360
    const/16 v2, 0xb1

    goto/16 :goto_cf9

    :sswitch_364
    const-string v0, "PW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36e

    goto/16 :goto_cf9

    :cond_36e
    const/16 v2, 0xb0

    goto/16 :goto_cf9

    :sswitch_372
    const-string v0, "PT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_37c

    goto/16 :goto_cf9

    :cond_37c
    const/16 v2, 0xaf

    goto/16 :goto_cf9

    :sswitch_380
    const-string v0, "PS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38a

    goto/16 :goto_cf9

    :cond_38a
    const/16 v2, 0xae

    goto/16 :goto_cf9

    :sswitch_38e
    const-string v0, "PR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_398

    goto/16 :goto_cf9

    :cond_398
    const/16 v2, 0xad

    goto/16 :goto_cf9

    :sswitch_39c
    const-string v0, "PM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a6

    goto/16 :goto_cf9

    :cond_3a6
    const/16 v2, 0xac

    goto/16 :goto_cf9

    :sswitch_3aa
    const-string v0, "PL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3b4

    goto/16 :goto_cf9

    :cond_3b4
    const/16 v2, 0xab

    goto/16 :goto_cf9

    :sswitch_3b8
    const-string v0, "PK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3c2

    goto/16 :goto_cf9

    :cond_3c2
    const/16 v2, 0xaa

    goto/16 :goto_cf9

    :sswitch_3c6
    const-string v0, "PH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3d0

    goto/16 :goto_cf9

    :cond_3d0
    const/16 v2, 0xa9

    goto/16 :goto_cf9

    :sswitch_3d4
    const-string v0, "PG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3de

    goto/16 :goto_cf9

    :cond_3de
    const/16 v2, 0xa8

    goto/16 :goto_cf9

    :sswitch_3e2
    const-string v0, "PF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3ec

    goto/16 :goto_cf9

    :cond_3ec
    const/16 v2, 0xa7

    goto/16 :goto_cf9

    :sswitch_3f0
    const-string v0, "PE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3fa

    goto/16 :goto_cf9

    :cond_3fa
    const/16 v2, 0xa6

    goto/16 :goto_cf9

    :sswitch_3fe
    const-string v0, "PA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_408

    goto/16 :goto_cf9

    :cond_408
    const/16 v2, 0xa5

    goto/16 :goto_cf9

    :sswitch_40c
    const-string v0, "OM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_416

    goto/16 :goto_cf9

    :cond_416
    const/16 v2, 0xa4

    goto/16 :goto_cf9

    :sswitch_41a
    const-string v0, "NZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_424

    goto/16 :goto_cf9

    :cond_424
    const/16 v2, 0xa3

    goto/16 :goto_cf9

    :sswitch_428
    const-string v0, "NU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_432

    goto/16 :goto_cf9

    :cond_432
    const/16 v2, 0xa2

    goto/16 :goto_cf9

    :sswitch_436
    const-string v0, "NR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_440

    goto/16 :goto_cf9

    :cond_440
    const/16 v2, 0xa1

    goto/16 :goto_cf9

    :sswitch_444
    const-string v0, "NP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_44e

    goto/16 :goto_cf9

    :cond_44e
    const/16 v2, 0xa0

    goto/16 :goto_cf9

    :sswitch_452
    const-string v0, "NO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_45c

    goto/16 :goto_cf9

    :cond_45c
    const/16 v2, 0x9f

    goto/16 :goto_cf9

    :sswitch_460
    const-string v0, "NL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_46a

    goto/16 :goto_cf9

    :cond_46a
    const/16 v2, 0x9e

    goto/16 :goto_cf9

    :sswitch_46e
    const-string v0, "NI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_478

    goto/16 :goto_cf9

    :cond_478
    const/16 v2, 0x9d

    goto/16 :goto_cf9

    :sswitch_47c
    const-string v0, "NG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_486

    goto/16 :goto_cf9

    :cond_486
    const/16 v2, 0x9c

    goto/16 :goto_cf9

    :sswitch_48a
    const-string v0, "NE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_494

    goto/16 :goto_cf9

    :cond_494
    const/16 v2, 0x9b

    goto/16 :goto_cf9

    :sswitch_498
    const-string v0, "NC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4a2

    goto/16 :goto_cf9

    :cond_4a2
    const/16 v2, 0x9a

    goto/16 :goto_cf9

    :sswitch_4a6
    const-string v0, "NA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4b0

    goto/16 :goto_cf9

    :cond_4b0
    const/16 v2, 0x99

    goto/16 :goto_cf9

    :sswitch_4b4
    const-string v0, "MZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4be

    goto/16 :goto_cf9

    :cond_4be
    const/16 v2, 0x98

    goto/16 :goto_cf9

    :sswitch_4c2
    const-string v0, "MY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4cc

    goto/16 :goto_cf9

    :cond_4cc
    const/16 v2, 0x97

    goto/16 :goto_cf9

    :sswitch_4d0
    const-string v0, "MX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4da

    goto/16 :goto_cf9

    :cond_4da
    const/16 v2, 0x96

    goto/16 :goto_cf9

    :sswitch_4de
    const-string v0, "MW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4e8

    goto/16 :goto_cf9

    :cond_4e8
    const/16 v2, 0x95

    goto/16 :goto_cf9

    :sswitch_4ec
    const-string v0, "MV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4f6

    goto/16 :goto_cf9

    :cond_4f6
    const/16 v2, 0x94

    goto/16 :goto_cf9

    :sswitch_4fa
    const-string v0, "MU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_504

    goto/16 :goto_cf9

    :cond_504
    const/16 v2, 0x93

    goto/16 :goto_cf9

    :sswitch_508
    const-string v0, "MT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_512

    goto/16 :goto_cf9

    :cond_512
    const/16 v2, 0x92

    goto/16 :goto_cf9

    :sswitch_516
    const-string v0, "MS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_520

    goto/16 :goto_cf9

    :cond_520
    const/16 v2, 0x91

    goto/16 :goto_cf9

    :sswitch_524
    const-string v0, "MR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_52e

    goto/16 :goto_cf9

    :cond_52e
    const/16 v2, 0x90

    goto/16 :goto_cf9

    :sswitch_532
    const-string v0, "MQ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_53c

    goto/16 :goto_cf9

    :cond_53c
    const/16 v2, 0x8f

    goto/16 :goto_cf9

    :sswitch_540
    const-string v0, "MP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_54a

    goto/16 :goto_cf9

    :cond_54a
    const/16 v2, 0x8e

    goto/16 :goto_cf9

    :sswitch_54e
    const-string v0, "MO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_558

    goto/16 :goto_cf9

    :cond_558
    const/16 v2, 0x8d

    goto/16 :goto_cf9

    :sswitch_55c
    const-string v0, "MN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_566

    goto/16 :goto_cf9

    :cond_566
    const/16 v2, 0x8c

    goto/16 :goto_cf9

    :sswitch_56a
    const-string v0, "MM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_574

    goto/16 :goto_cf9

    :cond_574
    const/16 v2, 0x8b

    goto/16 :goto_cf9

    :sswitch_578
    const-string v0, "ML"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_582

    goto/16 :goto_cf9

    :cond_582
    const/16 v2, 0x8a

    goto/16 :goto_cf9

    :sswitch_586
    const-string v0, "MK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_590

    goto/16 :goto_cf9

    :cond_590
    const/16 v2, 0x89

    goto/16 :goto_cf9

    :sswitch_594
    const-string v0, "MH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_59e

    goto/16 :goto_cf9

    :cond_59e
    const/16 v2, 0x88

    goto/16 :goto_cf9

    :sswitch_5a2
    const-string v0, "MG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5ac

    goto/16 :goto_cf9

    :cond_5ac
    const/16 v2, 0x87

    goto/16 :goto_cf9

    :sswitch_5b0
    const-string v0, "MF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5ba

    goto/16 :goto_cf9

    :cond_5ba
    const/16 v2, 0x86

    goto/16 :goto_cf9

    :sswitch_5be
    const-string v0, "ME"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5c8

    goto/16 :goto_cf9

    :cond_5c8
    const/16 v2, 0x85

    goto/16 :goto_cf9

    :sswitch_5cc
    const-string v0, "MD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5d6

    goto/16 :goto_cf9

    :cond_5d6
    const/16 v2, 0x84

    goto/16 :goto_cf9

    :sswitch_5da
    const-string v0, "MC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5e4

    goto/16 :goto_cf9

    :cond_5e4
    const/16 v2, 0x83

    goto/16 :goto_cf9

    :sswitch_5e8
    const-string v0, "MA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5f2

    goto/16 :goto_cf9

    :cond_5f2
    const/16 v2, 0x82

    goto/16 :goto_cf9

    :sswitch_5f6
    const-string v0, "LY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_600

    goto/16 :goto_cf9

    :cond_600
    const/16 v2, 0x81

    goto/16 :goto_cf9

    :sswitch_604
    const-string v0, "LV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_60e

    goto/16 :goto_cf9

    :cond_60e
    const/16 v2, 0x80

    goto/16 :goto_cf9

    :sswitch_612
    const-string v0, "LU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_61c

    goto/16 :goto_cf9

    :cond_61c
    const/16 v2, 0x7f

    goto/16 :goto_cf9

    :sswitch_620
    const-string v0, "LT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_62a

    goto/16 :goto_cf9

    :cond_62a
    const/16 v2, 0x7e

    goto/16 :goto_cf9

    :sswitch_62e
    const-string v0, "LS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_638

    goto/16 :goto_cf9

    :cond_638
    const/16 v2, 0x7d

    goto/16 :goto_cf9

    :sswitch_63c
    const-string v0, "LR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_646

    goto/16 :goto_cf9

    :cond_646
    const/16 v2, 0x7c

    goto/16 :goto_cf9

    :sswitch_64a
    const-string v0, "LK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_654

    goto/16 :goto_cf9

    :cond_654
    const/16 v2, 0x7b

    goto/16 :goto_cf9

    :sswitch_658
    const-string v0, "LI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_662

    goto/16 :goto_cf9

    :cond_662
    const/16 v2, 0x7a

    goto/16 :goto_cf9

    :sswitch_666
    const-string v0, "LC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_670

    goto/16 :goto_cf9

    :cond_670
    const/16 v2, 0x79

    goto/16 :goto_cf9

    :sswitch_674
    const-string v0, "LB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_67e

    goto/16 :goto_cf9

    :cond_67e
    const/16 v2, 0x78

    goto/16 :goto_cf9

    :sswitch_682
    const-string v0, "LA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_68c

    goto/16 :goto_cf9

    :cond_68c
    const/16 v2, 0x77

    goto/16 :goto_cf9

    :sswitch_690
    const-string v0, "KZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_69a

    goto/16 :goto_cf9

    :cond_69a
    const/16 v2, 0x76

    goto/16 :goto_cf9

    :sswitch_69e
    const-string v0, "KY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6a8

    goto/16 :goto_cf9

    :cond_6a8
    const/16 v2, 0x75

    goto/16 :goto_cf9

    :sswitch_6ac
    const-string v0, "KW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6b6

    goto/16 :goto_cf9

    :cond_6b6
    const/16 v2, 0x74

    goto/16 :goto_cf9

    :sswitch_6ba
    const-string v0, "KR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6c4

    goto/16 :goto_cf9

    :cond_6c4
    const/16 v2, 0x73

    goto/16 :goto_cf9

    :sswitch_6c8
    const-string v0, "KP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6d2

    goto/16 :goto_cf9

    :cond_6d2
    const/16 v2, 0x72

    goto/16 :goto_cf9

    :sswitch_6d6
    const-string v0, "KM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6e0

    goto/16 :goto_cf9

    :cond_6e0
    const/16 v2, 0x71

    goto/16 :goto_cf9

    :sswitch_6e4
    const-string v0, "KI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6ee

    goto/16 :goto_cf9

    :cond_6ee
    const/16 v2, 0x70

    goto/16 :goto_cf9

    :sswitch_6f2
    const-string v0, "KH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6fc

    goto/16 :goto_cf9

    :cond_6fc
    const/16 v2, 0x6f

    goto/16 :goto_cf9

    :sswitch_700
    const-string v0, "KG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_70a

    goto/16 :goto_cf9

    :cond_70a
    const/16 v2, 0x6e

    goto/16 :goto_cf9

    :sswitch_70e
    const-string v0, "KE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_718

    goto/16 :goto_cf9

    :cond_718
    const/16 v2, 0x6d

    goto/16 :goto_cf9

    :sswitch_71c
    const-string v0, "JP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_726

    goto/16 :goto_cf9

    :cond_726
    const/16 v2, 0x6c

    goto/16 :goto_cf9

    :sswitch_72a
    const-string v0, "JO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_734

    goto/16 :goto_cf9

    :cond_734
    const/16 v2, 0x6b

    goto/16 :goto_cf9

    :sswitch_738
    const-string v0, "JM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_742

    goto/16 :goto_cf9

    :cond_742
    const/16 v2, 0x6a

    goto/16 :goto_cf9

    :sswitch_746
    const-string v0, "JE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_750

    goto/16 :goto_cf9

    :cond_750
    const/16 v2, 0x69

    goto/16 :goto_cf9

    :sswitch_754
    const-string v0, "IT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_75e

    goto/16 :goto_cf9

    :cond_75e
    const/16 v2, 0x68

    goto/16 :goto_cf9

    :sswitch_762
    const-string v0, "IS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_76c

    goto/16 :goto_cf9

    :cond_76c
    const/16 v2, 0x67

    goto/16 :goto_cf9

    :sswitch_770
    const-string v0, "IR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_77a

    goto/16 :goto_cf9

    :cond_77a
    const/16 v2, 0x66

    goto/16 :goto_cf9

    :sswitch_77e
    const-string v0, "IQ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_788

    goto/16 :goto_cf9

    :cond_788
    const/16 v2, 0x65

    goto/16 :goto_cf9

    :sswitch_78c
    const-string v0, "IO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_796

    goto/16 :goto_cf9

    :cond_796
    const/16 v2, 0x64

    goto/16 :goto_cf9

    :sswitch_79a
    const-string v0, "IN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7a4

    goto/16 :goto_cf9

    :cond_7a4
    const/16 v2, 0x63

    goto/16 :goto_cf9

    :sswitch_7a8
    const-string v0, "IM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7b2

    goto/16 :goto_cf9

    :cond_7b2
    const/16 v2, 0x62

    goto/16 :goto_cf9

    :sswitch_7b6
    const-string v0, "IL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7c0

    goto/16 :goto_cf9

    :cond_7c0
    const/16 v2, 0x61

    goto/16 :goto_cf9

    :sswitch_7c4
    const-string v0, "IE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7ce

    goto/16 :goto_cf9

    :cond_7ce
    const/16 v2, 0x60

    goto/16 :goto_cf9

    :sswitch_7d2
    const-string v0, "ID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7dc

    goto/16 :goto_cf9

    :cond_7dc
    const/16 v2, 0x5f

    goto/16 :goto_cf9

    :sswitch_7e0
    const-string v0, "HU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7ea

    goto/16 :goto_cf9

    :cond_7ea
    const/16 v2, 0x5e

    goto/16 :goto_cf9

    :sswitch_7ee
    const-string v0, "HT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7f8

    goto/16 :goto_cf9

    :cond_7f8
    const/16 v2, 0x5d

    goto/16 :goto_cf9

    :sswitch_7fc
    const-string v0, "HR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_806

    goto/16 :goto_cf9

    :cond_806
    const/16 v2, 0x5c

    goto/16 :goto_cf9

    :sswitch_80a
    const-string v0, "HN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_814

    goto/16 :goto_cf9

    :cond_814
    const/16 v2, 0x5b

    goto/16 :goto_cf9

    :sswitch_818
    const-string v0, "HK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_822

    goto/16 :goto_cf9

    :cond_822
    const/16 v2, 0x5a

    goto/16 :goto_cf9

    :sswitch_826
    const-string v0, "GY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_830

    goto/16 :goto_cf9

    :cond_830
    const/16 v2, 0x59

    goto/16 :goto_cf9

    :sswitch_834
    const-string v0, "GW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_83e

    goto/16 :goto_cf9

    :cond_83e
    const/16 v2, 0x58

    goto/16 :goto_cf9

    :sswitch_842
    const-string v0, "GU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_84c

    goto/16 :goto_cf9

    :cond_84c
    const/16 v2, 0x57

    goto/16 :goto_cf9

    :sswitch_850
    const-string v0, "GT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_85a

    goto/16 :goto_cf9

    :cond_85a
    const/16 v2, 0x56

    goto/16 :goto_cf9

    :sswitch_85e
    const-string v0, "GR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_868

    goto/16 :goto_cf9

    :cond_868
    const/16 v2, 0x55

    goto/16 :goto_cf9

    :sswitch_86c
    const-string v0, "GQ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_876

    goto/16 :goto_cf9

    :cond_876
    const/16 v2, 0x54

    goto/16 :goto_cf9

    :sswitch_87a
    const-string v0, "GP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_884

    goto/16 :goto_cf9

    :cond_884
    const/16 v2, 0x53

    goto/16 :goto_cf9

    :sswitch_888
    const-string v0, "GN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_892

    goto/16 :goto_cf9

    :cond_892
    const/16 v2, 0x52

    goto/16 :goto_cf9

    :sswitch_896
    const-string v0, "GM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8a0

    goto/16 :goto_cf9

    :cond_8a0
    const/16 v2, 0x51

    goto/16 :goto_cf9

    :sswitch_8a4
    const-string v0, "GL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8ae

    goto/16 :goto_cf9

    :cond_8ae
    const/16 v2, 0x50

    goto/16 :goto_cf9

    :sswitch_8b2
    const-string v0, "GI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8bc

    goto/16 :goto_cf9

    :cond_8bc
    const/16 v2, 0x4f

    goto/16 :goto_cf9

    :sswitch_8c0
    const-string v0, "GH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8ca

    goto/16 :goto_cf9

    :cond_8ca
    const/16 v2, 0x4e

    goto/16 :goto_cf9

    :sswitch_8ce
    const-string v0, "GG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8d8

    goto/16 :goto_cf9

    :cond_8d8
    const/16 v2, 0x4d

    goto/16 :goto_cf9

    :sswitch_8dc
    const-string v0, "GF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8e6

    goto/16 :goto_cf9

    :cond_8e6
    const/16 v2, 0x4c

    goto/16 :goto_cf9

    :sswitch_8ea
    const-string v0, "GE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8f4

    goto/16 :goto_cf9

    :cond_8f4
    const/16 v2, 0x4b

    goto/16 :goto_cf9

    :sswitch_8f8
    const-string v0, "GD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_902

    goto/16 :goto_cf9

    :cond_902
    const/16 v2, 0x4a

    goto/16 :goto_cf9

    :sswitch_906
    const-string v0, "GB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_910

    goto/16 :goto_cf9

    :cond_910
    const/16 v2, 0x49

    goto/16 :goto_cf9

    :sswitch_914
    const-string v0, "GA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_91e

    goto/16 :goto_cf9

    :cond_91e
    const/16 v2, 0x48

    goto/16 :goto_cf9

    :sswitch_922
    const-string v0, "FR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_92c

    goto/16 :goto_cf9

    :cond_92c
    const/16 v2, 0x47

    goto/16 :goto_cf9

    :sswitch_930
    const-string v0, "FO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_93a

    goto/16 :goto_cf9

    :cond_93a
    const/16 v2, 0x46

    goto/16 :goto_cf9

    :sswitch_93e
    const-string v0, "FM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_948

    goto/16 :goto_cf9

    :cond_948
    const/16 v2, 0x45

    goto/16 :goto_cf9

    :sswitch_94c
    const-string v0, "FK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_956

    goto/16 :goto_cf9

    :cond_956
    const/16 v2, 0x44

    goto/16 :goto_cf9

    :sswitch_95a
    const-string v0, "FJ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_964

    goto/16 :goto_cf9

    :cond_964
    const/16 v2, 0x43

    goto/16 :goto_cf9

    :sswitch_968
    const-string v0, "FI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_972

    goto/16 :goto_cf9

    :cond_972
    const/16 v2, 0x42

    goto/16 :goto_cf9

    :sswitch_976
    const-string v0, "ET"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_980

    goto/16 :goto_cf9

    :cond_980
    const/16 v2, 0x41

    goto/16 :goto_cf9

    :sswitch_984
    const-string v0, "ES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_98e

    goto/16 :goto_cf9

    :cond_98e
    const/16 v2, 0x40

    goto/16 :goto_cf9

    :sswitch_992
    const-string v0, "ER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_99c

    goto/16 :goto_cf9

    :cond_99c
    const/16 v2, 0x3f

    goto/16 :goto_cf9

    :sswitch_9a0
    const-string v0, "EG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9aa

    goto/16 :goto_cf9

    :cond_9aa
    const/16 v2, 0x3e

    goto/16 :goto_cf9

    :sswitch_9ae
    const-string v0, "EE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9b8

    goto/16 :goto_cf9

    :cond_9b8
    const/16 v2, 0x3d

    goto/16 :goto_cf9

    :sswitch_9bc
    const-string v0, "EC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9c6

    goto/16 :goto_cf9

    :cond_9c6
    const/16 v2, 0x3c

    goto/16 :goto_cf9

    :sswitch_9ca
    const-string v0, "DZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9d4

    goto/16 :goto_cf9

    :cond_9d4
    const/16 v2, 0x3b

    goto/16 :goto_cf9

    :sswitch_9d8
    const-string v0, "DO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9e2

    goto/16 :goto_cf9

    :cond_9e2
    const/16 v2, 0x3a

    goto/16 :goto_cf9

    :sswitch_9e6
    const-string v0, "DM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9f0

    goto/16 :goto_cf9

    :cond_9f0
    const/16 v2, 0x39

    goto/16 :goto_cf9

    :sswitch_9f4
    const-string v0, "DK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9fe

    goto/16 :goto_cf9

    :cond_9fe
    const/16 v2, 0x38

    goto/16 :goto_cf9

    :sswitch_a02
    const-string v0, "DJ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a0c

    goto/16 :goto_cf9

    :cond_a0c
    const/16 v2, 0x37

    goto/16 :goto_cf9

    :sswitch_a10
    const-string v0, "DE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a1a

    goto/16 :goto_cf9

    :cond_a1a
    const/16 v2, 0x36

    goto/16 :goto_cf9

    :sswitch_a1e
    const-string v0, "CZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a28

    goto/16 :goto_cf9

    :cond_a28
    const/16 v2, 0x35

    goto/16 :goto_cf9

    :sswitch_a2c
    const-string v0, "CY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a36

    goto/16 :goto_cf9

    :cond_a36
    const/16 v2, 0x34

    goto/16 :goto_cf9

    :sswitch_a3a
    const-string v0, "CX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a44

    goto/16 :goto_cf9

    :cond_a44
    const/16 v2, 0x33

    goto/16 :goto_cf9

    :sswitch_a48
    const-string v0, "CW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a52

    goto/16 :goto_cf9

    :cond_a52
    const/16 v2, 0x32

    goto/16 :goto_cf9

    :sswitch_a56
    const-string v0, "CV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a60

    goto/16 :goto_cf9

    :cond_a60
    const/16 v2, 0x31

    goto/16 :goto_cf9

    :sswitch_a64
    const-string v0, "CU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a6e

    goto/16 :goto_cf9

    :cond_a6e
    const/16 v2, 0x30

    goto/16 :goto_cf9

    :sswitch_a72
    const-string v0, "CR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a7c

    goto/16 :goto_cf9

    :cond_a7c
    const/16 v2, 0x2f

    goto/16 :goto_cf9

    :sswitch_a80
    const-string v0, "CO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a8a

    goto/16 :goto_cf9

    :cond_a8a
    const/16 v2, 0x2e

    goto/16 :goto_cf9

    :sswitch_a8e
    const-string v0, "CN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a98

    goto/16 :goto_cf9

    :cond_a98
    const/16 v2, 0x2d

    goto/16 :goto_cf9

    :sswitch_a9c
    const-string v0, "CM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_aa6

    goto/16 :goto_cf9

    :cond_aa6
    const/16 v2, 0x2c

    goto/16 :goto_cf9

    :sswitch_aaa
    const-string v0, "CL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ab4

    goto/16 :goto_cf9

    :cond_ab4
    const/16 v2, 0x2b

    goto/16 :goto_cf9

    :sswitch_ab8
    const-string v0, "CK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ac2

    goto/16 :goto_cf9

    :cond_ac2
    const/16 v2, 0x2a

    goto/16 :goto_cf9

    :sswitch_ac6
    const-string v0, "CI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ad0

    goto/16 :goto_cf9

    :cond_ad0
    const/16 v2, 0x29

    goto/16 :goto_cf9

    :sswitch_ad4
    const-string v0, "CH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ade

    goto/16 :goto_cf9

    :cond_ade
    const/16 v2, 0x28

    goto/16 :goto_cf9

    :sswitch_ae2
    const-string v0, "CG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_aec

    goto/16 :goto_cf9

    :cond_aec
    const/16 v2, 0x27

    goto/16 :goto_cf9

    :sswitch_af0
    const-string v0, "CF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_afa

    goto/16 :goto_cf9

    :cond_afa
    const/16 v2, 0x26

    goto/16 :goto_cf9

    :sswitch_afe
    const-string v0, "CD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b08

    goto/16 :goto_cf9

    :cond_b08
    const/16 v2, 0x25

    goto/16 :goto_cf9

    :sswitch_b0c
    const-string v0, "CA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b16

    goto/16 :goto_cf9

    :cond_b16
    const/16 v2, 0x24

    goto/16 :goto_cf9

    :sswitch_b1a
    const-string v0, "BZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b24

    goto/16 :goto_cf9

    :cond_b24
    const/16 v2, 0x23

    goto/16 :goto_cf9

    :sswitch_b28
    const-string v0, "BY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b32

    goto/16 :goto_cf9

    :cond_b32
    const/16 v2, 0x22

    goto/16 :goto_cf9

    :sswitch_b36
    const-string v0, "BW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b40

    goto/16 :goto_cf9

    :cond_b40
    const/16 v2, 0x21

    goto/16 :goto_cf9

    :sswitch_b44
    const-string v0, "BT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b4e

    goto/16 :goto_cf9

    :cond_b4e
    const/16 v2, 0x20

    goto/16 :goto_cf9

    :sswitch_b52
    const-string v0, "BS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b5c

    goto/16 :goto_cf9

    :cond_b5c
    const/16 v2, 0x1f

    goto/16 :goto_cf9

    :sswitch_b60
    const-string v0, "BR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b6a

    goto/16 :goto_cf9

    :cond_b6a
    const/16 v2, 0x1e

    goto/16 :goto_cf9

    :sswitch_b6e
    const-string v0, "BQ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b78

    goto/16 :goto_cf9

    :cond_b78
    const/16 v2, 0x1d

    goto/16 :goto_cf9

    :sswitch_b7c
    const-string v0, "BO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b86

    goto/16 :goto_cf9

    :cond_b86
    const/16 v2, 0x1c

    goto/16 :goto_cf9

    :sswitch_b8a
    const-string v0, "BN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b94

    goto/16 :goto_cf9

    :cond_b94
    const/16 v2, 0x1b

    goto/16 :goto_cf9

    :sswitch_b98
    const-string v0, "BM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ba2

    goto/16 :goto_cf9

    :cond_ba2
    const/16 v2, 0x1a

    goto/16 :goto_cf9

    :sswitch_ba6
    const-string v0, "BL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_bb0

    goto/16 :goto_cf9

    :cond_bb0
    const/16 v2, 0x19

    goto/16 :goto_cf9

    :sswitch_bb4
    const-string v0, "BJ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_bbe

    goto/16 :goto_cf9

    :cond_bbe
    const/16 v2, 0x18

    goto/16 :goto_cf9

    :sswitch_bc2
    const-string v0, "BI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_bcc

    goto/16 :goto_cf9

    :cond_bcc
    const/16 v2, 0x17

    goto/16 :goto_cf9

    :sswitch_bd0
    const-string v0, "BH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_bda

    goto/16 :goto_cf9

    :cond_bda
    const/16 v2, 0x16

    goto/16 :goto_cf9

    :sswitch_bde
    const-string v0, "BG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_be8

    goto/16 :goto_cf9

    :cond_be8
    const/16 v2, 0x15

    goto/16 :goto_cf9

    :sswitch_bec
    const-string v0, "BF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_bf6

    goto/16 :goto_cf9

    :cond_bf6
    const/16 v2, 0x14

    goto/16 :goto_cf9

    :sswitch_bfa
    const-string v0, "BE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c04

    goto/16 :goto_cf9

    :cond_c04
    const/16 v2, 0x13

    goto/16 :goto_cf9

    :sswitch_c08
    const-string v0, "BD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c12

    goto/16 :goto_cf9

    :cond_c12
    const/16 v2, 0x12

    goto/16 :goto_cf9

    :sswitch_c16
    const-string v0, "BB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c20

    goto/16 :goto_cf9

    :cond_c20
    const/16 v2, 0x11

    goto/16 :goto_cf9

    :sswitch_c24
    const-string v0, "BA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c2e

    goto/16 :goto_cf9

    :cond_c2e
    const/16 v2, 0x10

    goto/16 :goto_cf9

    :sswitch_c32
    const-string v0, "AZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c3c

    goto/16 :goto_cf9

    :cond_c3c
    const/16 v2, 0xf

    goto/16 :goto_cf9

    :sswitch_c40
    const-string v0, "AX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c4a

    goto/16 :goto_cf9

    :cond_c4a
    const/16 v2, 0xe

    goto/16 :goto_cf9

    :sswitch_c4e
    const-string v0, "AW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c58

    goto/16 :goto_cf9

    :cond_c58
    const/16 v2, 0xd

    goto/16 :goto_cf9

    :sswitch_c5c
    const-string v0, "AU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c66

    goto/16 :goto_cf9

    :cond_c66
    const/16 v2, 0xc

    goto/16 :goto_cf9

    :sswitch_c6a
    const-string v0, "AT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c74

    goto/16 :goto_cf9

    :cond_c74
    const/16 v2, 0xb

    goto/16 :goto_cf9

    :sswitch_c78
    const-string v0, "AS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c82

    goto/16 :goto_cf9

    :cond_c82
    const/16 v2, 0xa

    goto/16 :goto_cf9

    :sswitch_c86
    const-string v0, "AR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c90

    goto/16 :goto_cf9

    :cond_c90
    const/16 v2, 0x9

    goto/16 :goto_cf9

    :sswitch_c94
    const-string v0, "AQ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c9e

    goto/16 :goto_cf9

    :cond_c9e
    const/16 v2, 0x8

    goto/16 :goto_cf9

    :sswitch_ca2
    const-string v0, "AO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_cab

    goto :goto_cf9

    :cond_cab
    const/4 v2, 0x7

    goto :goto_cf9

    :sswitch_cad
    const-string v0, "AM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_cb6

    goto :goto_cf9

    :cond_cb6
    const/4 v2, 0x6

    goto :goto_cf9

    :sswitch_cb8
    const-string v0, "AL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_cc1

    goto :goto_cf9

    :cond_cc1
    const/4 v2, 0x5

    goto :goto_cf9

    :sswitch_cc3
    const-string v0, "AI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ccc

    goto :goto_cf9

    :cond_ccc
    const/4 v2, 0x4

    goto :goto_cf9

    :sswitch_cce
    const-string v0, "AG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_cd7

    goto :goto_cf9

    :cond_cd7
    const/4 v2, 0x3

    goto :goto_cf9

    :sswitch_cd9
    const-string v0, "AF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ce2

    goto :goto_cf9

    :cond_ce2
    const/4 v2, 0x2

    goto :goto_cf9

    :sswitch_ce4
    const-string v0, "AE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ced

    goto :goto_cf9

    :cond_ced
    const/4 v2, 0x1

    goto :goto_cf9

    :sswitch_cef
    const-string v0, "AD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_cf8

    goto :goto_cf9

    :cond_cf8
    const/4 v2, 0x0

    :goto_cf9
    packed-switch v2, :pswitch_data_1476

    new-array p0, v1, [I

    .line 870
    fill-array-data p0, :array_1656

    return-object p0

    :pswitch_d02  #0xed
    new-array p0, v1, [I

    .line 868
    fill-array-data p0, :array_1666

    return-object p0

    :pswitch_d08  #0xec
    new-array p0, v1, [I

    .line 866
    fill-array-data p0, :array_1676

    return-object p0

    :pswitch_d0e  #0xeb
    new-array p0, v1, [I

    .line 864
    fill-array-data p0, :array_1686

    return-object p0

    :pswitch_d14  #0xea
    new-array p0, v1, [I

    .line 862
    fill-array-data p0, :array_1696

    return-object p0

    :pswitch_d1a  #0xe8
    new-array p0, v1, [I

    .line 851
    fill-array-data p0, :array_16a6

    return-object p0

    :pswitch_d20  #0xe7
    new-array p0, v1, [I

    .line 849
    fill-array-data p0, :array_16b6

    return-object p0

    :pswitch_d26  #0xe5
    new-array p0, v1, [I

    .line 844
    fill-array-data p0, :array_16c6

    return-object p0

    :pswitch_d2c  #0xe4
    new-array p0, v1, [I

    .line 842
    fill-array-data p0, :array_16d6

    return-object p0

    :pswitch_d32  #0xe3
    new-array p0, v1, [I

    .line 840
    fill-array-data p0, :array_16e6

    return-object p0

    :pswitch_d38  #0xdf
    new-array p0, v1, [I

    .line 826
    fill-array-data p0, :array_16f6

    return-object p0

    :pswitch_d3e  #0xdb
    new-array p0, v1, [I

    .line 814
    fill-array-data p0, :array_1706

    return-object p0

    :pswitch_d44  #0xd9
    new-array p0, v1, [I

    .line 809
    fill-array-data p0, :array_1716

    return-object p0

    :pswitch_d4a  #0xd7
    new-array p0, v1, [I

    .line 799
    fill-array-data p0, :array_1726

    return-object p0

    :pswitch_d50  #0xd6
    new-array p0, v1, [I

    .line 797
    fill-array-data p0, :array_1736

    return-object p0

    :pswitch_d56  #0xd5
    new-array p0, v1, [I

    .line 795
    fill-array-data p0, :array_1746

    return-object p0

    :pswitch_d5c  #0xd3
    new-array p0, v1, [I

    .line 793
    fill-array-data p0, :array_1756

    return-object p0

    :pswitch_d62  #0xd1
    new-array p0, v1, [I

    .line 786
    fill-array-data p0, :array_1766

    return-object p0

    :pswitch_d68  #0xd0
    new-array p0, v1, [I

    .line 784
    fill-array-data p0, :array_1776

    return-object p0

    :pswitch_d6e  #0xcf
    new-array p0, v1, [I

    .line 782
    fill-array-data p0, :array_1786

    return-object p0

    :pswitch_d74  #0xcc
    new-array p0, v1, [I

    .line 777
    fill-array-data p0, :array_1796

    return-object p0

    :pswitch_d7a  #0xca, 0xcd
    new-array p0, v1, [I

    .line 780
    fill-array-data p0, :array_17a6

    return-object p0

    :pswitch_d80  #0xc9
    new-array p0, v1, [I

    .line 775
    fill-array-data p0, :array_17b6

    return-object p0

    :pswitch_d86  #0xc2
    new-array p0, v1, [I

    .line 752
    fill-array-data p0, :array_17c6

    return-object p0

    :pswitch_d8c  #0xbd
    new-array p0, v1, [I

    .line 740
    fill-array-data p0, :array_17d6

    return-object p0

    :pswitch_d92  #0xba
    new-array p0, v1, [I

    .line 738
    fill-array-data p0, :array_17e6

    return-object p0

    :pswitch_d98  #0xb8, 0xd4, 0xe2
    new-array p0, v1, [I

    .line 838
    fill-array-data p0, :array_17f6

    return-object p0

    :pswitch_d9e  #0xb7
    new-array p0, v1, [I

    .line 731
    fill-array-data p0, :array_1806

    return-object p0

    :pswitch_da4  #0xb6
    new-array p0, v1, [I

    .line 729
    fill-array-data p0, :array_1816

    return-object p0

    :pswitch_daa  #0xb4
    new-array p0, v1, [I

    .line 721
    fill-array-data p0, :array_1826

    return-object p0

    :pswitch_db0  #0xb3
    new-array p0, v1, [I

    .line 719
    fill-array-data p0, :array_1836

    return-object p0

    :pswitch_db6  #0xb2
    new-array p0, v1, [I

    .line 717
    fill-array-data p0, :array_1846

    return-object p0

    :pswitch_dbc  #0xb1
    new-array p0, v1, [I

    .line 715
    fill-array-data p0, :array_1856

    return-object p0

    :pswitch_dc2  #0xb0
    new-array p0, v1, [I

    .line 713
    fill-array-data p0, :array_1866

    return-object p0

    :pswitch_dc8  #0xaf
    new-array p0, v1, [I

    .line 711
    fill-array-data p0, :array_1876

    return-object p0

    :pswitch_dce  #0xae
    new-array p0, v1, [I

    .line 709
    fill-array-data p0, :array_1886

    return-object p0

    :pswitch_dd4  #0xad
    new-array p0, v1, [I

    .line 707
    fill-array-data p0, :array_1896

    return-object p0

    :pswitch_dda  #0xa9
    new-array p0, v1, [I

    .line 705
    fill-array-data p0, :array_18a6

    return-object p0

    :pswitch_de0  #0xa7
    new-array p0, v1, [I

    .line 700
    fill-array-data p0, :array_18b6

    return-object p0

    :pswitch_de6  #0xa6
    new-array p0, v1, [I

    .line 698
    fill-array-data p0, :array_18c6

    return-object p0

    :pswitch_dec  #0xa5
    new-array p0, v1, [I

    .line 696
    fill-array-data p0, :array_18d6

    return-object p0

    :pswitch_df2  #0xa4
    new-array p0, v1, [I

    .line 694
    fill-array-data p0, :array_18e6

    return-object p0

    :pswitch_df8  #0xa3
    new-array p0, v1, [I

    .line 692
    fill-array-data p0, :array_18f6

    return-object p0

    :pswitch_dfe  #0xa1
    new-array p0, v1, [I

    .line 690
    fill-array-data p0, :array_1906

    return-object p0

    :pswitch_e04  #0xa0
    new-array p0, v1, [I

    .line 688
    fill-array-data p0, :array_1916

    return-object p0

    :pswitch_e0a  #0x9f
    new-array p0, v1, [I

    .line 686
    fill-array-data p0, :array_1926

    return-object p0

    :pswitch_e10  #0x9e
    new-array p0, v1, [I

    .line 684
    fill-array-data p0, :array_1936

    return-object p0

    :pswitch_e16  #0x9d
    new-array p0, v1, [I

    .line 682
    fill-array-data p0, :array_1946

    return-object p0

    :pswitch_e1c  #0x9c
    new-array p0, v1, [I

    .line 680
    fill-array-data p0, :array_1956

    return-object p0

    :pswitch_e22  #0x99
    new-array p0, v1, [I

    .line 675
    fill-array-data p0, :array_1966

    return-object p0

    :pswitch_e28  #0x95
    new-array p0, v1, [I

    .line 667
    fill-array-data p0, :array_1976

    return-object p0

    :pswitch_e2e  #0x94
    new-array p0, v1, [I

    .line 665
    fill-array-data p0, :array_1986

    return-object p0

    :pswitch_e34  #0x93
    new-array p0, v1, [I

    .line 663
    fill-array-data p0, :array_1996

    return-object p0

    :pswitch_e3a  #0x90
    new-array p0, v1, [I

    .line 656
    fill-array-data p0, :array_19a6

    return-object p0

    :pswitch_e40  #0x8d
    new-array p0, v1, [I

    .line 650
    fill-array-data p0, :array_19b6

    return-object p0

    :pswitch_e46  #0x8c
    new-array p0, v1, [I

    .line 648
    fill-array-data p0, :array_19c6

    return-object p0

    :pswitch_e4c  #0x8b
    new-array p0, v1, [I

    .line 646
    fill-array-data p0, :array_19d6

    return-object p0

    :pswitch_e52  #0x8a
    new-array p0, v1, [I

    .line 644
    fill-array-data p0, :array_19e6

    return-object p0

    :pswitch_e58  #0x88
    new-array p0, v1, [I

    .line 642
    fill-array-data p0, :array_19f6

    return-object p0

    :pswitch_e5e  #0x87
    new-array p0, v1, [I

    .line 640
    fill-array-data p0, :array_1a06

    return-object p0

    :pswitch_e64  #0x86
    new-array p0, v1, [I

    .line 638
    fill-array-data p0, :array_1a16

    return-object p0

    :pswitch_e6a  #0x83
    new-array p0, v1, [I

    .line 633
    fill-array-data p0, :array_1a26

    return-object p0

    :pswitch_e70  #0x7f
    new-array p0, v1, [I

    .line 631
    fill-array-data p0, :array_1a36

    return-object p0

    :pswitch_e76  #0x7d
    new-array p0, v1, [I

    .line 629
    fill-array-data p0, :array_1a46

    return-object p0

    :pswitch_e7c  #0x7c
    new-array p0, v1, [I

    .line 627
    fill-array-data p0, :array_1a56

    return-object p0

    :pswitch_e82  #0x7b
    new-array p0, v1, [I

    .line 625
    fill-array-data p0, :array_1a66

    return-object p0

    :pswitch_e88  #0x78
    new-array p0, v1, [I

    .line 618
    fill-array-data p0, :array_1a76

    return-object p0

    :pswitch_e8e  #0x77, 0xde
    new-array p0, v1, [I

    .line 824
    fill-array-data p0, :array_1a86

    return-object p0

    :pswitch_e94  #0x76
    new-array p0, v1, [I

    .line 616
    fill-array-data p0, :array_1a96

    return-object p0

    :pswitch_e9a  #0x74
    new-array p0, v1, [I

    .line 610
    fill-array-data p0, :array_1aa6

    return-object p0

    :pswitch_ea0  #0x73
    new-array p0, v1, [I

    .line 608
    fill-array-data p0, :array_1ab6

    return-object p0

    :pswitch_ea6  #0x70, 0x71, 0x81, 0xb9
    new-array p0, v1, [I

    .line 736
    fill-array-data p0, :array_1ac6

    return-object p0

    :pswitch_eac  #0x6f
    new-array p0, v1, [I

    .line 606
    fill-array-data p0, :array_1ad6

    return-object p0

    :pswitch_eb2  #0x6e
    new-array p0, v1, [I

    .line 604
    fill-array-data p0, :array_1ae6

    return-object p0

    :pswitch_eb8  #0x6d
    new-array p0, v1, [I

    .line 602
    fill-array-data p0, :array_1af6

    return-object p0

    :pswitch_ebe  #0x6c
    new-array p0, v1, [I

    .line 600
    fill-array-data p0, :array_1b06

    return-object p0

    :pswitch_ec4  #0x6b, 0x85
    new-array p0, v1, [I

    .line 636
    fill-array-data p0, :array_1b16

    return-object p0

    :pswitch_eca  #0x69
    new-array p0, v1, [I

    .line 595
    fill-array-data p0, :array_1b26

    return-object p0

    :pswitch_ed0  #0x68
    new-array p0, v1, [I

    .line 593
    fill-array-data p0, :array_1b36

    return-object p0

    :pswitch_ed6  #0x66
    new-array p0, v1, [I

    .line 591
    fill-array-data p0, :array_1b46

    return-object p0

    :pswitch_edc  #0x65, 0xdc
    new-array p0, v1, [I

    .line 817
    fill-array-data p0, :array_1b56

    return-object p0

    :pswitch_ee2  #0x63
    new-array p0, v1, [I

    .line 589
    fill-array-data p0, :array_1b66

    return-object p0

    :pswitch_ee8  #0x62
    new-array p0, v1, [I

    .line 587
    fill-array-data p0, :array_1b76

    return-object p0

    :pswitch_eee  #0x61
    new-array p0, v1, [I

    .line 585
    fill-array-data p0, :array_1b86

    return-object p0

    :pswitch_ef4  #0x5f
    new-array p0, v1, [I

    .line 580
    fill-array-data p0, :array_1b96

    return-object p0

    :pswitch_efa  #0x5e
    new-array p0, v1, [I

    .line 578
    fill-array-data p0, :array_1ba6

    return-object p0

    :pswitch_f00  #0x5b, 0xaa, 0xc5
    new-array p0, v1, [I

    .line 764
    fill-array-data p0, :array_1bb6

    return-object p0

    :pswitch_f06  #0x5a
    new-array p0, v1, [I

    .line 576
    fill-array-data p0, :array_1bc6

    return-object p0

    :pswitch_f0c  #0x58, 0xda
    new-array p0, v1, [I

    .line 812
    fill-array-data p0, :array_1bd6

    return-object p0

    :pswitch_f12  #0x56
    new-array p0, v1, [I

    .line 568
    fill-array-data p0, :array_1be6

    return-object p0

    :pswitch_f18  #0x55, 0x5c, 0x84, 0x89, 0xb5
    new-array p0, v1, [I

    .line 727
    fill-array-data p0, :array_1bf6

    return-object p0

    :pswitch_f1e  #0x54
    new-array p0, v1, [I

    .line 566
    fill-array-data p0, :array_1c06

    return-object p0

    :pswitch_f24  #0x52
    new-array p0, v1, [I

    .line 564
    fill-array-data p0, :array_1c16

    return-object p0

    :pswitch_f2a  #0x51, 0xe6
    new-array p0, v1, [I

    .line 847
    fill-array-data p0, :array_1c26

    return-object p0

    :pswitch_f30  #0x4e
    new-array p0, v1, [I

    .line 562
    fill-array-data p0, :array_1c36

    return-object p0

    :pswitch_f36  #0x4c, 0x53, 0x8f
    new-array p0, v1, [I

    .line 654
    fill-array-data p0, :array_1c46

    return-object p0

    :pswitch_f3c  #0x4b
    new-array p0, v1, [I

    .line 556
    fill-array-data p0, :array_1c56

    return-object p0

    :pswitch_f42  #0x49
    new-array p0, v1, [I

    .line 554
    fill-array-data p0, :array_1c66

    return-object p0

    :pswitch_f48  #0x48
    new-array p0, v1, [I

    .line 552
    fill-array-data p0, :array_1c76

    return-object p0

    :pswitch_f4e  #0x47
    new-array p0, v1, [I

    .line 550
    fill-array-data p0, :array_1c86

    return-object p0

    :pswitch_f54  #0x45
    new-array p0, v1, [I

    .line 548
    fill-array-data p0, :array_1c96

    return-object p0

    :pswitch_f5a  #0x44, 0x72, 0x82, 0x98, 0xc8
    new-array p0, v1, [I

    .line 773
    fill-array-data p0, :array_1ca6

    return-object p0

    :pswitch_f60  #0x43
    new-array p0, v1, [I

    .line 546
    fill-array-data p0, :array_1cb6

    return-object p0

    :pswitch_f66  #0x42
    new-array p0, v1, [I

    .line 544
    fill-array-data p0, :array_1cc6

    return-object p0

    :pswitch_f6c  #0x41
    new-array p0, v1, [I

    .line 542
    fill-array-data p0, :array_1cd6

    return-object p0

    :pswitch_f72  #0x40, 0x60
    new-array p0, v1, [I

    .line 583
    fill-array-data p0, :array_1ce6

    return-object p0

    :pswitch_f78  #0x3e
    new-array p0, v1, [I

    .line 540
    fill-array-data p0, :array_1cf6

    return-object p0

    :pswitch_f7e  #0x3d, 0x7e, 0x80, 0x92
    new-array p0, v1, [I

    .line 661
    fill-array-data p0, :array_1d06

    return-object p0

    :pswitch_f84  #0x3c
    new-array p0, v1, [I

    .line 538
    fill-array-data p0, :array_1d16

    return-object p0

    :pswitch_f8a  #0x3a, 0x6a
    new-array p0, v1, [I

    .line 598
    fill-array-data p0, :array_1d26

    return-object p0

    :pswitch_f90  #0x38
    new-array p0, v1, [I

    .line 536
    fill-array-data p0, :array_1d36

    return-object p0

    :pswitch_f96  #0x37
    new-array p0, v1, [I

    .line 534
    fill-array-data p0, :array_1d46

    return-object p0

    :pswitch_f9c  #0x36
    new-array p0, v1, [I

    .line 532
    fill-array-data p0, :array_1d56

    return-object p0

    :pswitch_fa2  #0x34
    new-array p0, v1, [I

    .line 530
    fill-array-data p0, :array_1d66

    return-object p0

    :pswitch_fa8  #0x32
    new-array p0, v1, [I

    .line 528
    fill-array-data p0, :array_1d76

    return-object p0

    :pswitch_fae  #0x31
    new-array p0, v1, [I

    .line 526
    fill-array-data p0, :array_1d86

    return-object p0

    :pswitch_fb4  #0x30, 0xa8
    new-array p0, v1, [I

    .line 703
    fill-array-data p0, :array_1d96

    return-object p0

    :pswitch_fba  #0x2f
    new-array p0, v1, [I

    .line 524
    fill-array-data p0, :array_1da6

    return-object p0

    :pswitch_fc0  #0x2e
    new-array p0, v1, [I

    .line 522
    fill-array-data p0, :array_1db6

    return-object p0

    :pswitch_fc6  #0x2d
    new-array p0, v1, [I

    .line 520
    fill-array-data p0, :array_1dc6

    return-object p0

    :pswitch_fcc  #0x2b, 0xab, 0xdd
    new-array p0, v1, [I

    .line 821
    fill-array-data p0, :array_1dd6

    return-object p0

    :pswitch_fd2  #0x2a
    new-array p0, v1, [I

    .line 515
    fill-array-data p0, :array_1de6

    return-object p0

    :pswitch_fd8  #0x29
    new-array p0, v1, [I

    .line 513
    fill-array-data p0, :array_1df6

    return-object p0

    :pswitch_fde  #0x27, 0x96
    new-array p0, v1, [I

    .line 670
    fill-array-data p0, :array_1e06

    return-object p0

    :pswitch_fe4  #0x26
    new-array p0, v1, [I

    .line 511
    fill-array-data p0, :array_1e16

    return-object p0

    :pswitch_fea  #0x25
    new-array p0, v1, [I

    .line 509
    fill-array-data p0, :array_1e26

    return-object p0

    :pswitch_ff0  #0x24
    new-array p0, v1, [I

    .line 507
    fill-array-data p0, :array_1e36

    return-object p0

    :pswitch_ff6  #0x23
    new-array p0, v1, [I

    .line 505
    fill-array-data p0, :array_1e46

    return-object p0

    :pswitch_ffc  #0x22
    new-array p0, v1, [I

    .line 503
    fill-array-data p0, :array_1e56

    return-object p0

    :pswitch_1002  #0x21, 0x59
    new-array p0, v1, [I

    .line 574
    fill-array-data p0, :array_1e66

    return-object p0

    :pswitch_1008  #0x20
    new-array p0, v1, [I

    .line 501
    fill-array-data p0, :array_1e76

    return-object p0

    :pswitch_100e  #0x1f
    new-array p0, v1, [I

    .line 499
    fill-array-data p0, :array_1e86

    return-object p0

    :pswitch_1014  #0x1e, 0xc6
    new-array p0, v1, [I

    .line 767
    fill-array-data p0, :array_1e96

    return-object p0

    :pswitch_101a  #0x1d
    new-array p0, v1, [I

    .line 497
    fill-array-data p0, :array_1ea6

    return-object p0

    :pswitch_1020  #0x1c
    new-array p0, v1, [I

    .line 495
    fill-array-data p0, :array_1eb6

    return-object p0

    :pswitch_1026  #0x1b
    new-array p0, v1, [I

    .line 493
    fill-array-data p0, :array_1ec6

    return-object p0

    :pswitch_102c  #0x18
    new-array p0, v1, [I

    .line 491
    fill-array-data p0, :array_1ed6

    return-object p0

    :pswitch_1032  #0x17, 0x3b, 0xcb, 0xd2
    new-array p0, v1, [I

    .line 791
    fill-array-data p0, :array_1ee6

    return-object p0

    :pswitch_1038  #0x16
    new-array p0, v1, [I

    .line 489
    fill-array-data p0, :array_1ef6

    return-object p0

    :pswitch_103e  #0x15, 0x35, 0xbf
    new-array p0, v1, [I

    .line 744
    fill-array-data p0, :array_1f06

    return-object p0

    :pswitch_1044  #0x14
    new-array p0, v1, [I

    .line 487
    fill-array-data p0, :array_1f16

    return-object p0

    :pswitch_104a  #0x13
    new-array p0, v1, [I

    .line 485
    fill-array-data p0, :array_1f26

    return-object p0

    :pswitch_1050  #0x12, 0x97
    new-array p0, v1, [I

    .line 673
    fill-array-data p0, :array_1f36

    return-object p0

    :pswitch_1056  #0x11, 0x46, 0x4d
    new-array p0, v1, [I

    .line 560
    fill-array-data p0, :array_1f46

    return-object p0

    :pswitch_105c  #0xf, 0x9a
    new-array p0, v1, [I

    .line 678
    fill-array-data p0, :array_1f56

    return-object p0

    :pswitch_1062  #0xe, 0x4f, 0x7a, 0x8e, 0xac, 0xc0, 0xc3
    new-array p0, v1, [I

    .line 760
    fill-array-data p0, :array_1f66

    return-object p0

    :pswitch_1068  #0xd, 0x57
    new-array p0, v1, [I

    .line 571
    fill-array-data p0, :array_1f76

    return-object p0

    :pswitch_106e  #0xc
    new-array p0, v1, [I

    .line 483
    fill-array-data p0, :array_1f86

    return-object p0

    :pswitch_1074  #0xb, 0x28, 0x67, 0xbc, 0xc1
    new-array p0, v1, [I

    .line 750
    fill-array-data p0, :array_1f96

    return-object p0

    :pswitch_107a  #0xa
    new-array p0, v1, [I

    .line 481
    fill-array-data p0, :array_1fa6

    return-object p0

    :pswitch_1080  #0x9
    new-array p0, v1, [I

    .line 479
    fill-array-data p0, :array_1fb6

    return-object p0

    :pswitch_1086  #0x8, 0x3f, 0x64, 0xa2, 0xbe, 0xc7, 0xd8
    new-array p0, v1, [I

    .line 807
    fill-array-data p0, :array_1fc6

    return-object p0

    :pswitch_108c  #0x7, 0x2c
    new-array p0, v1, [I

    .line 518
    fill-array-data p0, :array_1fd6

    return-object p0

    :pswitch_1092  #0x6
    new-array p0, v1, [I

    .line 477
    fill-array-data p0, :array_1fe6

    return-object p0

    :pswitch_1098  #0x5, 0x10, 0x75
    new-array p0, v1, [I

    .line 614
    fill-array-data p0, :array_1ff6

    return-object p0

    :pswitch_109e  #0x4, 0x19, 0x33, 0x39, 0x4a, 0x91, 0xe0
    new-array p0, v1, [I

    .line 834
    fill-array-data p0, :array_2006

    return-object p0

    :pswitch_10a4  #0x3
    new-array p0, v1, [I

    .line 475
    fill-array-data p0, :array_2016

    return-object p0

    :pswitch_10aa  #0x2, 0x5d, 0x9b, 0xbb, 0xc4, 0xce, 0xe1, 0xe9
    new-array p0, v1, [I

    .line 860
    fill-array-data p0, :array_2026

    return-object p0

    :pswitch_10b0  #0x1
    new-array p0, v1, [I

    .line 473
    fill-array-data p0, :array_2036

    return-object p0

    :pswitch_10b6  #0x0, 0x1a, 0x50, 0x79
    new-array p0, v1, [I

    .line 623
    fill-array-data p0, :array_2046

    return-object p0

    :sswitch_data_10bc
    .sparse-switch
        0x823 -> :sswitch_cef
        0x824 -> :sswitch_ce4
        0x825 -> :sswitch_cd9
        0x826 -> :sswitch_cce
        0x828 -> :sswitch_cc3
        0x82b -> :sswitch_cb8
        0x82c -> :sswitch_cad
        0x82e -> :sswitch_ca2
        0x830 -> :sswitch_c94
        0x831 -> :sswitch_c86
        0x832 -> :sswitch_c78
        0x833 -> :sswitch_c6a
        0x834 -> :sswitch_c5c
        0x836 -> :sswitch_c4e
        0x837 -> :sswitch_c40
        0x839 -> :sswitch_c32
        0x83f -> :sswitch_c24
        0x840 -> :sswitch_c16
        0x842 -> :sswitch_c08
        0x843 -> :sswitch_bfa
        0x844 -> :sswitch_bec
        0x845 -> :sswitch_bde
        0x846 -> :sswitch_bd0
        0x847 -> :sswitch_bc2
        0x848 -> :sswitch_bb4
        0x84a -> :sswitch_ba6
        0x84b -> :sswitch_b98
        0x84c -> :sswitch_b8a
        0x84d -> :sswitch_b7c
        0x84f -> :sswitch_b6e
        0x850 -> :sswitch_b60
        0x851 -> :sswitch_b52
        0x852 -> :sswitch_b44
        0x855 -> :sswitch_b36
        0x857 -> :sswitch_b28
        0x858 -> :sswitch_b1a
        0x85e -> :sswitch_b0c
        0x861 -> :sswitch_afe
        0x863 -> :sswitch_af0
        0x864 -> :sswitch_ae2
        0x865 -> :sswitch_ad4
        0x866 -> :sswitch_ac6
        0x868 -> :sswitch_ab8
        0x869 -> :sswitch_aaa
        0x86a -> :sswitch_a9c
        0x86b -> :sswitch_a8e
        0x86c -> :sswitch_a80
        0x86f -> :sswitch_a72
        0x872 -> :sswitch_a64
        0x873 -> :sswitch_a56
        0x874 -> :sswitch_a48
        0x875 -> :sswitch_a3a
        0x876 -> :sswitch_a2c
        0x877 -> :sswitch_a1e
        0x881 -> :sswitch_a10
        0x886 -> :sswitch_a02
        0x887 -> :sswitch_9f4
        0x889 -> :sswitch_9e6
        0x88b -> :sswitch_9d8
        0x896 -> :sswitch_9ca
        0x89e -> :sswitch_9bc
        0x8a0 -> :sswitch_9ae
        0x8a2 -> :sswitch_9a0
        0x8ad -> :sswitch_992
        0x8ae -> :sswitch_984
        0x8af -> :sswitch_976
        0x8c3 -> :sswitch_968
        0x8c4 -> :sswitch_95a
        0x8c5 -> :sswitch_94c
        0x8c7 -> :sswitch_93e
        0x8c9 -> :sswitch_930
        0x8cc -> :sswitch_922
        0x8da -> :sswitch_914
        0x8db -> :sswitch_906
        0x8dd -> :sswitch_8f8
        0x8de -> :sswitch_8ea
        0x8df -> :sswitch_8dc
        0x8e0 -> :sswitch_8ce
        0x8e1 -> :sswitch_8c0
        0x8e2 -> :sswitch_8b2
        0x8e5 -> :sswitch_8a4
        0x8e6 -> :sswitch_896
        0x8e7 -> :sswitch_888
        0x8e9 -> :sswitch_87a
        0x8ea -> :sswitch_86c
        0x8eb -> :sswitch_85e
        0x8ed -> :sswitch_850
        0x8ee -> :sswitch_842
        0x8f0 -> :sswitch_834
        0x8f2 -> :sswitch_826
        0x903 -> :sswitch_818
        0x906 -> :sswitch_80a
        0x90a -> :sswitch_7fc
        0x90c -> :sswitch_7ee
        0x90d -> :sswitch_7e0
        0x91b -> :sswitch_7d2
        0x91c -> :sswitch_7c4
        0x923 -> :sswitch_7b6
        0x924 -> :sswitch_7a8
        0x925 -> :sswitch_79a
        0x926 -> :sswitch_78c
        0x928 -> :sswitch_77e
        0x929 -> :sswitch_770
        0x92a -> :sswitch_762
        0x92b -> :sswitch_754
        0x93b -> :sswitch_746
        0x943 -> :sswitch_738
        0x945 -> :sswitch_72a
        0x946 -> :sswitch_71c
        0x95a -> :sswitch_70e
        0x95c -> :sswitch_700
        0x95d -> :sswitch_6f2
        0x95e -> :sswitch_6e4
        0x962 -> :sswitch_6d6
        0x965 -> :sswitch_6c8
        0x967 -> :sswitch_6ba
        0x96c -> :sswitch_6ac
        0x96e -> :sswitch_69e
        0x96f -> :sswitch_690
        0x975 -> :sswitch_682
        0x976 -> :sswitch_674
        0x977 -> :sswitch_666
        0x97d -> :sswitch_658
        0x97f -> :sswitch_64a
        0x986 -> :sswitch_63c
        0x987 -> :sswitch_62e
        0x988 -> :sswitch_620
        0x989 -> :sswitch_612
        0x98a -> :sswitch_604
        0x98d -> :sswitch_5f6
        0x994 -> :sswitch_5e8
        0x996 -> :sswitch_5da
        0x997 -> :sswitch_5cc
        0x998 -> :sswitch_5be
        0x999 -> :sswitch_5b0
        0x99a -> :sswitch_5a2
        0x99b -> :sswitch_594
        0x99e -> :sswitch_586
        0x99f -> :sswitch_578
        0x9a0 -> :sswitch_56a
        0x9a1 -> :sswitch_55c
        0x9a2 -> :sswitch_54e
        0x9a3 -> :sswitch_540
        0x9a4 -> :sswitch_532
        0x9a5 -> :sswitch_524
        0x9a6 -> :sswitch_516
        0x9a7 -> :sswitch_508
        0x9a8 -> :sswitch_4fa
        0x9a9 -> :sswitch_4ec
        0x9aa -> :sswitch_4de
        0x9ab -> :sswitch_4d0
        0x9ac -> :sswitch_4c2
        0x9ad -> :sswitch_4b4
        0x9b3 -> :sswitch_4a6
        0x9b5 -> :sswitch_498
        0x9b7 -> :sswitch_48a
        0x9b9 -> :sswitch_47c
        0x9bb -> :sswitch_46e
        0x9be -> :sswitch_460
        0x9c1 -> :sswitch_452
        0x9c2 -> :sswitch_444
        0x9c4 -> :sswitch_436
        0x9c7 -> :sswitch_428
        0x9cc -> :sswitch_41a
        0x9de -> :sswitch_40c
        0x9f1 -> :sswitch_3fe
        0x9f5 -> :sswitch_3f0
        0x9f6 -> :sswitch_3e2
        0x9f7 -> :sswitch_3d4
        0x9f8 -> :sswitch_3c6
        0x9fb -> :sswitch_3b8
        0x9fc -> :sswitch_3aa
        0x9fd -> :sswitch_39c
        0xa02 -> :sswitch_38e
        0xa03 -> :sswitch_380
        0xa04 -> :sswitch_372
        0xa07 -> :sswitch_364
        0xa09 -> :sswitch_356
        0xa10 -> :sswitch_348
        0xa33 -> :sswitch_33a
        0xa3d -> :sswitch_32c
        0xa41 -> :sswitch_31e
        0xa43 -> :sswitch_310
        0xa45 -> :sswitch_302
        0xa4e -> :sswitch_2f4
        0xa4f -> :sswitch_2e6
        0xa50 -> :sswitch_2d8
        0xa51 -> :sswitch_2ca
        0xa52 -> :sswitch_2bc
        0xa54 -> :sswitch_2ae
        0xa55 -> :sswitch_2a0
        0xa56 -> :sswitch_292
        0xa57 -> :sswitch_284
        0xa58 -> :sswitch_276
        0xa59 -> :sswitch_268
        0xa5a -> :sswitch_25a
        0xa5b -> :sswitch_24c
        0xa5c -> :sswitch_23e
        0xa5f -> :sswitch_230
        0xa60 -> :sswitch_222
        0xa61 -> :sswitch_214
        0xa63 -> :sswitch_206
        0xa65 -> :sswitch_1f8
        0xa66 -> :sswitch_1ea
        0xa67 -> :sswitch_1dc
        0xa6f -> :sswitch_1ce
        0xa70 -> :sswitch_1c0
        0xa73 -> :sswitch_1b2
        0xa74 -> :sswitch_1a4
        0xa76 -> :sswitch_196
        0xa78 -> :sswitch_188
        0xa79 -> :sswitch_17a
        0xa7a -> :sswitch_16c
        0xa7b -> :sswitch_15e
        0xa7e -> :sswitch_150
        0xa80 -> :sswitch_142
        0xa82 -> :sswitch_134
        0xa83 -> :sswitch_126
        0xa86 -> :sswitch_118
        0xa8c -> :sswitch_10a
        0xa92 -> :sswitch_fc
        0xa9e -> :sswitch_ee
        0xaa4 -> :sswitch_e0
        0xaa5 -> :sswitch_d2
        0xaad -> :sswitch_c4
        0xaaf -> :sswitch_b6
        0xab1 -> :sswitch_a8
        0xab3 -> :sswitch_9a
        0xab8 -> :sswitch_8c
        0xabf -> :sswitch_7e
        0xacf -> :sswitch_70
        0xadc -> :sswitch_62
        0xaf3 -> :sswitch_54
        0xb0c -> :sswitch_46
        0xb1b -> :sswitch_38
        0xb27 -> :sswitch_2a
        0xb33 -> :sswitch_1c
        0xb3d -> :sswitch_e
    .end sparse-switch

    :pswitch_data_1476
    .packed-switch 0x0
        :pswitch_10b6  #00000000
        :pswitch_10b0  #00000001
        :pswitch_10aa  #00000002
        :pswitch_10a4  #00000003
        :pswitch_109e  #00000004
        :pswitch_1098  #00000005
        :pswitch_1092  #00000006
        :pswitch_108c  #00000007
        :pswitch_1086  #00000008
        :pswitch_1080  #00000009
        :pswitch_107a  #0000000a
        :pswitch_1074  #0000000b
        :pswitch_106e  #0000000c
        :pswitch_1068  #0000000d
        :pswitch_1062  #0000000e
        :pswitch_105c  #0000000f
        :pswitch_1098  #00000010
        :pswitch_1056  #00000011
        :pswitch_1050  #00000012
        :pswitch_104a  #00000013
        :pswitch_1044  #00000014
        :pswitch_103e  #00000015
        :pswitch_1038  #00000016
        :pswitch_1032  #00000017
        :pswitch_102c  #00000018
        :pswitch_109e  #00000019
        :pswitch_10b6  #0000001a
        :pswitch_1026  #0000001b
        :pswitch_1020  #0000001c
        :pswitch_101a  #0000001d
        :pswitch_1014  #0000001e
        :pswitch_100e  #0000001f
        :pswitch_1008  #00000020
        :pswitch_1002  #00000021
        :pswitch_ffc  #00000022
        :pswitch_ff6  #00000023
        :pswitch_ff0  #00000024
        :pswitch_fea  #00000025
        :pswitch_fe4  #00000026
        :pswitch_fde  #00000027
        :pswitch_1074  #00000028
        :pswitch_fd8  #00000029
        :pswitch_fd2  #0000002a
        :pswitch_fcc  #0000002b
        :pswitch_108c  #0000002c
        :pswitch_fc6  #0000002d
        :pswitch_fc0  #0000002e
        :pswitch_fba  #0000002f
        :pswitch_fb4  #00000030
        :pswitch_fae  #00000031
        :pswitch_fa8  #00000032
        :pswitch_109e  #00000033
        :pswitch_fa2  #00000034
        :pswitch_103e  #00000035
        :pswitch_f9c  #00000036
        :pswitch_f96  #00000037
        :pswitch_f90  #00000038
        :pswitch_109e  #00000039
        :pswitch_f8a  #0000003a
        :pswitch_1032  #0000003b
        :pswitch_f84  #0000003c
        :pswitch_f7e  #0000003d
        :pswitch_f78  #0000003e
        :pswitch_1086  #0000003f
        :pswitch_f72  #00000040
        :pswitch_f6c  #00000041
        :pswitch_f66  #00000042
        :pswitch_f60  #00000043
        :pswitch_f5a  #00000044
        :pswitch_f54  #00000045
        :pswitch_1056  #00000046
        :pswitch_f4e  #00000047
        :pswitch_f48  #00000048
        :pswitch_f42  #00000049
        :pswitch_109e  #0000004a
        :pswitch_f3c  #0000004b
        :pswitch_f36  #0000004c
        :pswitch_1056  #0000004d
        :pswitch_f30  #0000004e
        :pswitch_1062  #0000004f
        :pswitch_10b6  #00000050
        :pswitch_f2a  #00000051
        :pswitch_f24  #00000052
        :pswitch_f36  #00000053
        :pswitch_f1e  #00000054
        :pswitch_f18  #00000055
        :pswitch_f12  #00000056
        :pswitch_1068  #00000057
        :pswitch_f0c  #00000058
        :pswitch_1002  #00000059
        :pswitch_f06  #0000005a
        :pswitch_f00  #0000005b
        :pswitch_f18  #0000005c
        :pswitch_10aa  #0000005d
        :pswitch_efa  #0000005e
        :pswitch_ef4  #0000005f
        :pswitch_f72  #00000060
        :pswitch_eee  #00000061
        :pswitch_ee8  #00000062
        :pswitch_ee2  #00000063
        :pswitch_1086  #00000064
        :pswitch_edc  #00000065
        :pswitch_ed6  #00000066
        :pswitch_1074  #00000067
        :pswitch_ed0  #00000068
        :pswitch_eca  #00000069
        :pswitch_f8a  #0000006a
        :pswitch_ec4  #0000006b
        :pswitch_ebe  #0000006c
        :pswitch_eb8  #0000006d
        :pswitch_eb2  #0000006e
        :pswitch_eac  #0000006f
        :pswitch_ea6  #00000070
        :pswitch_ea6  #00000071
        :pswitch_f5a  #00000072
        :pswitch_ea0  #00000073
        :pswitch_e9a  #00000074
        :pswitch_1098  #00000075
        :pswitch_e94  #00000076
        :pswitch_e8e  #00000077
        :pswitch_e88  #00000078
        :pswitch_10b6  #00000079
        :pswitch_1062  #0000007a
        :pswitch_e82  #0000007b
        :pswitch_e7c  #0000007c
        :pswitch_e76  #0000007d
        :pswitch_f7e  #0000007e
        :pswitch_e70  #0000007f
        :pswitch_f7e  #00000080
        :pswitch_ea6  #00000081
        :pswitch_f5a  #00000082
        :pswitch_e6a  #00000083
        :pswitch_f18  #00000084
        :pswitch_ec4  #00000085
        :pswitch_e64  #00000086
        :pswitch_e5e  #00000087
        :pswitch_e58  #00000088
        :pswitch_f18  #00000089
        :pswitch_e52  #0000008a
        :pswitch_e4c  #0000008b
        :pswitch_e46  #0000008c
        :pswitch_e40  #0000008d
        :pswitch_1062  #0000008e
        :pswitch_f36  #0000008f
        :pswitch_e3a  #00000090
        :pswitch_109e  #00000091
        :pswitch_f7e  #00000092
        :pswitch_e34  #00000093
        :pswitch_e2e  #00000094
        :pswitch_e28  #00000095
        :pswitch_fde  #00000096
        :pswitch_1050  #00000097
        :pswitch_f5a  #00000098
        :pswitch_e22  #00000099
        :pswitch_105c  #0000009a
        :pswitch_10aa  #0000009b
        :pswitch_e1c  #0000009c
        :pswitch_e16  #0000009d
        :pswitch_e10  #0000009e
        :pswitch_e0a  #0000009f
        :pswitch_e04  #000000a0
        :pswitch_dfe  #000000a1
        :pswitch_1086  #000000a2
        :pswitch_df8  #000000a3
        :pswitch_df2  #000000a4
        :pswitch_dec  #000000a5
        :pswitch_de6  #000000a6
        :pswitch_de0  #000000a7
        :pswitch_fb4  #000000a8
        :pswitch_dda  #000000a9
        :pswitch_f00  #000000aa
        :pswitch_fcc  #000000ab
        :pswitch_1062  #000000ac
        :pswitch_dd4  #000000ad
        :pswitch_dce  #000000ae
        :pswitch_dc8  #000000af
        :pswitch_dc2  #000000b0
        :pswitch_dbc  #000000b1
        :pswitch_db6  #000000b2
        :pswitch_db0  #000000b3
        :pswitch_daa  #000000b4
        :pswitch_f18  #000000b5
        :pswitch_da4  #000000b6
        :pswitch_d9e  #000000b7
        :pswitch_d98  #000000b8
        :pswitch_ea6  #000000b9
        :pswitch_d92  #000000ba
        :pswitch_10aa  #000000bb
        :pswitch_1074  #000000bc
        :pswitch_d8c  #000000bd
        :pswitch_1086  #000000be
        :pswitch_103e  #000000bf
        :pswitch_1062  #000000c0
        :pswitch_1074  #000000c1
        :pswitch_d86  #000000c2
        :pswitch_1062  #000000c3
        :pswitch_10aa  #000000c4
        :pswitch_f00  #000000c5
        :pswitch_1014  #000000c6
        :pswitch_1086  #000000c7
        :pswitch_f5a  #000000c8
        :pswitch_d80  #000000c9
        :pswitch_d7a  #000000ca
        :pswitch_1032  #000000cb
        :pswitch_d74  #000000cc
        :pswitch_d7a  #000000cd
        :pswitch_10aa  #000000ce
        :pswitch_d6e  #000000cf
        :pswitch_d68  #000000d0
        :pswitch_d62  #000000d1
        :pswitch_1032  #000000d2
        :pswitch_d5c  #000000d3
        :pswitch_d98  #000000d4
        :pswitch_d56  #000000d5
        :pswitch_d50  #000000d6
        :pswitch_d4a  #000000d7
        :pswitch_1086  #000000d8
        :pswitch_d44  #000000d9
        :pswitch_f0c  #000000da
        :pswitch_d3e  #000000db
        :pswitch_edc  #000000dc
        :pswitch_fcc  #000000dd
        :pswitch_e8e  #000000de
        :pswitch_d38  #000000df
        :pswitch_109e  #000000e0
        :pswitch_10aa  #000000e1
        :pswitch_d98  #000000e2
        :pswitch_d32  #000000e3
        :pswitch_d2c  #000000e4
        :pswitch_d26  #000000e5
        :pswitch_f2a  #000000e6
        :pswitch_d20  #000000e7
        :pswitch_d1a  #000000e8
        :pswitch_10aa  #000000e9
        :pswitch_d14  #000000ea
        :pswitch_d0e  #000000eb
        :pswitch_d08  #000000ec
        :pswitch_d02  #000000ed
    .end packed-switch

    :array_1656
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1666
    .array-data 4
        0x3
        0x2
        0x4
        0x3
        0x2
        0x2
    .end array-data

    :array_1676
    .array-data 4
        0x3
        0x3
        0x4
        0x2
        0x2
        0x2
    .end array-data

    :array_1686
    .array-data 4
        0x3
        0x3
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_1696
    .array-data 4
        0x4
        0x1
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_16a6
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_16b6
    .array-data 4
        0x3
        0x1
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_16c6
    .array-data 4
        0x4
        0x2
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_16d6
    .array-data 4
        0x0
        0x3
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_16e6
    .array-data 4
        0x1
        0x2
        0x1
        0x3
        0x2
        0x2
    .end array-data

    :array_16f6
    .array-data 4
        0x2
        0x2
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_1706
    .array-data 4
        0x0
        0x3
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_1716
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1726
    .array-data 4
        0x1
        0x4
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_1736
    .array-data 4
        0x1
        0x1
        0x0
        0x1
        0x2
        0x2
    .end array-data

    :array_1746
    .array-data 4
        0x4
        0x2
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_1756
    .array-data 4
        0x4
        0x2
        0x4
        0x2
        0x2
        0x2
    .end array-data

    :array_1766
    .array-data 4
        0x4
        0x2
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_1776
    .array-data 4
        0x0
        0x3
        0x2
        0x3
        0x3
        0x0
    .end array-data

    :array_1786
    .array-data 4
        0x3
        0x3
        0x2
        0x0
        0x2
        0x2
    .end array-data

    :array_1796
    .array-data 4
        0x4
        0x3
        0x2
        0x4
        0x2
        0x2
    .end array-data

    :array_17a6
    .array-data 4
        0x2
        0x2
        0x1
        0x0
        0x2
        0x2
    .end array-data

    :array_17b6
    .array-data 4
        0x2
        0x2
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_17c6
    .array-data 4
        0x4
        0x3
        0x4
        0x1
        0x2
        0x2
    .end array-data

    :array_17d6
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x1
        0x4
    .end array-data

    :array_17e6
    .array-data 4
        0x4
        0x3
        0x0
        0x2
        0x2
        0x2
    .end array-data

    :array_17f6
    .array-data 4
        0x2
        0x2
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_1806
    .array-data 4
        0x3
        0x4
        0x3
        0x0
        0x2
        0x2
    .end array-data

    :array_1816
    .array-data 4
        0x0
        0x0
        0x0
        0x1
        0x2
        0x2
    .end array-data

    :array_1826
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_1836
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_1846
    .array-data 4
        0x2
        0x4
        0x2
        0x4
        0x4
        0x2
    .end array-data

    :array_1856
    .array-data 4
        0x2
        0x2
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_1866
    .array-data 4
        0x2
        0x2
        0x4
        0x1
        0x2
        0x2
    .end array-data

    :array_1876
    .array-data 4
        0x0
        0x1
        0x0
        0x0
        0x2
        0x2
    .end array-data

    :array_1886
    .array-data 4
        0x3
        0x4
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_1896
    .array-data 4
        0x2
        0x3
        0x2
        0x2
        0x3
        0x3
    .end array-data

    :array_18a6
    .array-data 4
        0x2
        0x2
        0x3
        0x3
        0x3
        0x2
    .end array-data

    :array_18b6
    .array-data 4
        0x2
        0x3
        0x3
        0x1
        0x2
        0x2
    .end array-data

    :array_18c6
    .array-data 4
        0x2
        0x3
        0x4
        0x4
        0x4
        0x2
    .end array-data

    :array_18d6
    .array-data 4
        0x1
        0x3
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_18e6
    .array-data 4
        0x2
        0x3
        0x1
        0x3
        0x4
        0x2
    .end array-data

    :array_18f6
    .array-data 4
        0x1
        0x0
        0x1
        0x2
        0x4
        0x2
    .end array-data

    :array_1906
    .array-data 4
        0x3
        0x2
        0x2
        0x0
        0x2
        0x2
    .end array-data

    :array_1916
    .array-data 4
        0x2
        0x1
        0x4
        0x3
        0x2
        0x2
    .end array-data

    :array_1926
    .array-data 4
        0x0
        0x0
        0x2
        0x0
        0x0
        0x2
    .end array-data

    :array_1936
    .array-data 4
        0x0
        0x0
        0x3
        0x2
        0x0
        0x4
    .end array-data

    :array_1946
    .array-data 4
        0x2
        0x3
        0x4
        0x3
        0x2
        0x2
    .end array-data

    :array_1956
    .array-data 4
        0x3
        0x4
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_1966
    .array-data 4
        0x4
        0x3
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1976
    .array-data 4
        0x4
        0x2
        0x1
        0x0
        0x2
        0x2
    .end array-data

    :array_1986
    .array-data 4
        0x3
        0x4
        0x1
        0x4
        0x2
        0x2
    .end array-data

    :array_1996
    .array-data 4
        0x3
        0x1
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_19a6
    .array-data 4
        0x4
        0x1
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_19b6
    .array-data 4
        0x0
        0x2
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_19c6
    .array-data 4
        0x2
        0x0
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_19d6
    .array-data 4
        0x2
        0x4
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_19e6
    .array-data 4
        0x4
        0x3
        0x3
        0x1
        0x2
        0x2
    .end array-data

    :array_19f6
    .array-data 4
        0x3
        0x2
        0x2
        0x4
        0x2
        0x2
    .end array-data

    :array_1a06
    .array-data 4
        0x3
        0x4
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1a16
    .array-data 4
        0x1
        0x2
        0x1
        0x0
        0x2
        0x2
    .end array-data

    :array_1a26
    .array-data 4
        0x0
        0x2
        0x2
        0x0
        0x2
        0x2
    .end array-data

    :array_1a36
    .array-data 4
        0x1
        0x0
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1a46
    .array-data 4
        0x3
        0x3
        0x4
        0x3
        0x2
        0x2
    .end array-data

    :array_1a56
    .array-data 4
        0x3
        0x4
        0x4
        0x3
        0x2
        0x2
    .end array-data

    :array_1a66
    .array-data 4
        0x3
        0x1
        0x3
        0x4
        0x4
        0x2
    .end array-data

    :array_1a76
    .array-data 4
        0x3
        0x2
        0x1
        0x4
        0x2
        0x2
    .end array-data

    :array_1a86
    .array-data 4
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_1a96
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1aa6
    .array-data 4
        0x1
        0x1
        0x0
        0x0
        0x0
        0x2
    .end array-data

    :array_1ab6
    .array-data 4
        0x0
        0x0
        0x1
        0x3
        0x4
        0x4
    .end array-data

    :array_1ac6
    .array-data 4
        0x4
        0x2
        0x4
        0x3
        0x2
        0x2
    .end array-data

    :array_1ad6
    .array-data 4
        0x1
        0x1
        0x4
        0x2
        0x2
        0x2
    .end array-data

    :array_1ae6
    .array-data 4
        0x2
        0x1
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_1af6
    .array-data 4
        0x3
        0x3
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1b06
    .array-data 4
        0x0
        0x1
        0x0
        0x1
        0x1
        0x1
    .end array-data

    :array_1b16
    .array-data 4
        0x1
        0x0
        0x0
        0x1
        0x2
        0x2
    .end array-data

    :array_1b26
    .array-data 4
        0x3
        0x2
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_1b36
    .array-data 4
        0x0
        0x1
        0x0
        0x1
        0x1
        0x2
    .end array-data

    :array_1b46
    .array-data 4
        0x3
        0x0
        0x1
        0x1
        0x3
        0x0
    .end array-data

    :array_1b56
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_1b66
    .array-data 4
        0x1
        0x1
        0x3
        0x2
        0x4
        0x3
    .end array-data

    :array_1b76
    .array-data 4
        0x0
        0x2
        0x0
        0x1
        0x2
        0x2
    .end array-data

    :array_1b86
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x4
        0x2
    .end array-data

    :array_1b96
    .array-data 4
        0x3
        0x2
        0x3
        0x3
        0x3
        0x2
    .end array-data

    :array_1ba6
    .array-data 4
        0x0
        0x0
        0x0
        0x1
        0x3
        0x2
    .end array-data

    :array_1bb6
    .array-data 4
        0x3
        0x2
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_1bc6
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x2
        0x0
    .end array-data

    :array_1bd6
    .array-data 4
        0x3
        0x4
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_1be6
    .array-data 4
        0x2
        0x3
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_1bf6
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x2
        0x2
    .end array-data

    :array_1c06
    .array-data 4
        0x4
        0x2
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_1c16
    .array-data 4
        0x4
        0x3
        0x4
        0x2
        0x2
        0x2
    .end array-data

    :array_1c26
    .array-data 4
        0x4
        0x2
        0x2
        0x4
        0x2
        0x2
    .end array-data

    :array_1c36
    .array-data 4
        0x3
        0x2
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_1c46
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x2
        0x2
    .end array-data

    :array_1c56
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x2
        0x2
    .end array-data

    :array_1c66
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x3
    .end array-data

    :array_1c76
    .array-data 4
        0x2
        0x3
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_1c86
    .array-data 4
        0x1
        0x1
        0x2
        0x1
        0x1
        0x1
    .end array-data

    :array_1c96
    .array-data 4
        0x3
        0x2
        0x4
        0x2
        0x2
        0x2
    .end array-data

    :array_1ca6
    .array-data 4
        0x3
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1cb6
    .array-data 4
        0x3
        0x1
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_1cc6
    .array-data 4
        0x0
        0x0
        0x0
        0x1
        0x0
        0x2
    .end array-data

    :array_1cd6
    .array-data 4
        0x4
        0x4
        0x3
        0x1
        0x2
        0x2
    .end array-data

    :array_1ce6
    .array-data 4
        0x0
        0x1
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_1cf6
    .array-data 4
        0x3
        0x4
        0x2
        0x3
        0x2
        0x2
    .end array-data

    :array_1d06
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x2
        0x2
    .end array-data

    :array_1d16
    .array-data 4
        0x2
        0x4
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_1d26
    .array-data 4
        0x3
        0x4
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_1d36
    .array-data 4
        0x0
        0x0
        0x1
        0x0
        0x0
        0x2
    .end array-data

    :array_1d46
    .array-data 4
        0x4
        0x1
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_1d56
    .array-data 4
        0x0
        0x0
        0x2
        0x2
        0x1
        0x2
    .end array-data

    :array_1d66
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x1
        0x2
    .end array-data

    :array_1d76
    .array-data 4
        0x2
        0x2
        0x0
        0x0
        0x2
        0x2
    .end array-data

    :array_1d86
    .array-data 4
        0x2
        0x3
        0x1
        0x0
        0x2
        0x2
    .end array-data

    :array_1d96
    .array-data 4
        0x4
        0x4
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_1da6
    .array-data 4
        0x2
        0x2
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_1db6
    .array-data 4
        0x2
        0x2
        0x4
        0x2
        0x2
        0x2
    .end array-data

    :array_1dc6
    .array-data 4
        0x2
        0x0
        0x2
        0x2
        0x3
        0x1
    .end array-data

    :array_1dd6
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x3
        0x2
    .end array-data

    :array_1de6
    .array-data 4
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_1df6
    .array-data 4
        0x3
        0x3
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_1e06
    .array-data 4
        0x2
        0x4
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_1e16
    .array-data 4
        0x4
        0x2
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_1e26
    .array-data 4
        0x4
        0x2
        0x3
        0x1
        0x2
        0x2
    .end array-data

    :array_1e36
    .array-data 4
        0x0
        0x2
        0x1
        0x2
        0x4
        0x1
    .end array-data

    :array_1e46
    .array-data 4
        0x2
        0x4
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1e56
    .array-data 4
        0x0
        0x1
        0x1
        0x3
        0x2
        0x2
    .end array-data

    :array_1e66
    .array-data 4
        0x3
        0x4
        0x1
        0x0
        0x2
        0x2
    .end array-data

    :array_1e76
    .array-data 4
        0x3
        0x1
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_1e86
    .array-data 4
        0x4
        0x2
        0x2
        0x3
        0x2
        0x2
    .end array-data

    :array_1e96
    .array-data 4
        0x2
        0x3
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1ea6
    .array-data 4
        0x1
        0x2
        0x2
        0x0
        0x2
        0x2
    .end array-data

    :array_1eb6
    .array-data 4
        0x1
        0x3
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_1ec6
    .array-data 4
        0x3
        0x2
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_1ed6
    .array-data 4
        0x4
        0x4
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_1ee6
    .array-data 4
        0x4
        0x3
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_1ef6
    .array-data 4
        0x1
        0x2
        0x2
        0x4
        0x4
        0x2
    .end array-data

    :array_1f06
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
        0x2
    .end array-data

    :array_1f16
    .array-data 4
        0x4
        0x3
        0x4
        0x3
        0x2
        0x2
    .end array-data

    :array_1f26
    .array-data 4
        0x0
        0x0
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_1f36
    .array-data 4
        0x2
        0x1
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_1f46
    .array-data 4
        0x0
        0x2
        0x0
        0x0
        0x2
        0x2
    .end array-data

    :array_1f56
    .array-data 4
        0x3
        0x2
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_1f66
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1f76
    .array-data 4
        0x1
        0x2
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_1f86
    .array-data 4
        0x0
        0x1
        0x0
        0x1
        0x2
        0x2
    .end array-data

    :array_1f96
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
    .end array-data

    :array_1fa6
    .array-data 4
        0x2
        0x2
        0x2
        0x3
        0x2
        0x2
    .end array-data

    :array_1fb6
    .array-data 4
        0x2
        0x4
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_1fc6
    .array-data 4
        0x4
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1fd6
    .array-data 4
        0x3
        0x4
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_1fe6
    .array-data 4
        0x2
        0x3
        0x2
        0x4
        0x2
        0x2
    .end array-data

    :array_1ff6
    .array-data 4
        0x1
        0x2
        0x0
        0x1
        0x2
        0x2
    .end array-data

    :array_2006
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_2016
    .array-data 4
        0x2
        0x3
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_2026
    .array-data 4
        0x4
        0x4
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_2036
    .array-data 4
        0x1
        0x4
        0x4
        0x4
        0x3
        0x2
    .end array-data

    :array_2046
    .array-data 4
        0x1
        0x2
        0x0
        0x0
        0x2
        0x2
    .end array-data
.end method

.method private getInitialBitrateEstimateForNetworkType(I)J
    .registers 4

    .line 452
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->initialBitrateEstimates:Lcom/google/common/collect/ImmutableMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_1b

    .line 454
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->initialBitrateEstimates:Lcom/google/common/collect/ImmutableMap;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    :cond_1b
    if-nez p1, :cond_24

    const-wide/32 v0, 0xf4240

    .line 457
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 459
    :cond_24
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static declared-synchronized getSingletonInstance(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;
    .registers 3

    const-class v0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    monitor-enter v0

    .line 260
    :try_start_3
    sget-object v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->singletonInstance:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    if-nez v1, :cond_12

    .line 261
    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->build()Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    move-result-object p0

    sput-object p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->singletonInstance:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    .line 263
    :cond_12
    sget-object p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->singletonInstance:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v0

    return-object p0

    :catchall_16
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static isTransferAtFullNetworkSpeed(Lcom/google/android/exoplayer2/upstream/DataSpec;Z)Z
    .registers 2

    if-eqz p1, :cond_c

    const/16 p1, 0x8

    .line 463
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/DataSpec;->isFlagSet(I)Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private maybeNotifyBandwidthSample(IJJ)V
    .registers 15

    if-nez p1, :cond_f

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_f

    .line 444
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->lastReportedBitrateEstimate:J

    cmp-long v2, p4, v0

    if-nez v2, :cond_f

    return-void

    .line 447
    :cond_f
    iput-wide p4, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->lastReportedBitrateEstimate:J

    .line 448
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->eventDispatcher:Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;->bandwidthSample(IJJ)V

    return-void
.end method

.method private declared-synchronized onNetworkTypeChanged(I)V
    .registers 10

    monitor-enter p0

    .line 408
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->networkType:I

    if-eqz v0, :cond_b

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->resetOnNetworkTypeChange:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_55

    if-nez v1, :cond_b

    .line 410
    monitor-exit p0

    return-void

    .line 413
    :cond_b
    :try_start_b
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->networkTypeOverrideSet:Z

    if-eqz v1, :cond_11

    .line 414
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->networkTypeOverride:I
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_55

    :cond_11
    if-ne v0, p1, :cond_15

    .line 417
    monitor-exit p0

    return-void

    .line 420
    :cond_15
    :try_start_15
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->networkType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_53

    if-eqz p1, :cond_53

    const/16 v0, 0x8

    if-ne p1, v0, :cond_21

    goto :goto_53

    .line 429
    :cond_21
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->getInitialBitrateEstimateForNetworkType(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    .line 430
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 431
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->streamCount:I

    if-lez p1, :cond_38

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J

    sub-long v2, v0, v2

    long-to-int p1, v2

    move v3, p1

    goto :goto_3a

    :cond_38
    const/4 p1, 0x0

    const/4 v3, 0x0

    .line 432
    :goto_3a
    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->maybeNotifyBandwidthSample(IJJ)V

    .line 435
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J

    const-wide/16 v0, 0x0

    .line 436
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    .line 437
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->totalBytesTransferred:J

    .line 438
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->totalElapsedTimeMs:J

    .line 439
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->slidingPercentile:Lcom/google/android/exoplayer2/upstream/SlidingPercentile;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->reset()V
    :try_end_51
    .catchall {:try_start_15 .. :try_end_51} :catchall_55

    .line 440
    monitor-exit p0

    return-void

    .line 425
    :cond_53
    :goto_53
    monitor-exit p0

    return-void

    :catchall_55
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V
    .registers 4

    .line 347
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->eventDispatcher:Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;->addListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V

    return-void
.end method

.method public declared-synchronized getBitrateEstimate()J
    .registers 3

    monitor-enter p0

    .line 337
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->bitrateEstimate:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic getTimeToFirstByteEstimateUs()J
    .registers 3

    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter$-CC;->$default$getTimeToFirstByteEstimateUs(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransferListener()Lcom/google/android/exoplayer2/upstream/TransferListener;
    .registers 1

    return-object p0
.end method

.method public declared-synchronized onBytesTransferred(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;ZI)V
    .registers 5

    monitor-enter p0

    .line 377
    :try_start_1
    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->isTransferAtFullNetworkSpeed(Lcom/google/android/exoplayer2/upstream/DataSpec;Z)Z

    move-result p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_11

    if-nez p1, :cond_9

    .line 378
    monitor-exit p0

    return-void

    .line 380
    :cond_9
    :try_start_9
    iget-wide p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    int-to-long p3, p4

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_11

    .line 381
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onTransferEnd(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Z)V
    .registers 14

    monitor-enter p0

    .line 385
    :try_start_1
    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->isTransferAtFullNetworkSpeed(Lcom/google/android/exoplayer2/upstream/DataSpec;Z)Z

    move-result p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_71

    if-nez p1, :cond_9

    .line 386
    monitor-exit p0

    return-void

    .line 388
    :cond_9
    :try_start_9
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->streamCount:I

    const/4 p2, 0x1

    if-lez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 389
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 390
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J

    sub-long v2, v0, v2

    long-to-int v5, v2

    .line 391
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->totalElapsedTimeMs:J

    int-to-long v6, v5

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->totalElapsedTimeMs:J

    .line 392
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->totalBytesTransferred:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->totalBytesTransferred:J

    if-lez v5, :cond_6a

    long-to-float p1, v6

    const/high16 p3, 0x45fa0000  # 8000.0f

    mul-float p1, p1, p3

    int-to-float p3, v5

    div-float/2addr p1, p3

    .line 395
    iget-object p3, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->slidingPercentile:Lcom/google/android/exoplayer2/upstream/SlidingPercentile;

    long-to-double v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {p3, v2, p1}, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->addSample(IF)V

    .line 396
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->totalElapsedTimeMs:J

    const-wide/16 v6, 0x7d0

    cmp-long p1, v2, v6

    if-gez p1, :cond_51

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->totalBytesTransferred:J

    const-wide/32 v6, 0x80000

    cmp-long p1, v2, v6

    if-ltz p1, :cond_5c

    .line 398
    :cond_51
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->slidingPercentile:Lcom/google/android/exoplayer2/upstream/SlidingPercentile;

    const/high16 p3, 0x3f000000  # 0.5f

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->getPercentile(F)F

    move-result p1

    float-to-long v2, p1

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    .line 400
    :cond_5c
    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->maybeNotifyBandwidthSample(IJJ)V

    .line 401
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J

    const-wide/16 v0, 0x0

    .line 402
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    .line 404
    :cond_6a
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->streamCount:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->streamCount:I
    :try_end_6f
    .catchall {:try_start_9 .. :try_end_6f} :catchall_71

    .line 405
    monitor-exit p0

    return-void

    :catchall_71
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onTransferInitializing(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Z)V
    .registers 4

    return-void
.end method

.method public declared-synchronized onTransferStart(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Z)V
    .registers 4

    monitor-enter p0

    .line 365
    :try_start_1
    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->isTransferAtFullNetworkSpeed(Lcom/google/android/exoplayer2/upstream/DataSpec;Z)Z

    move-result p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1d

    if-nez p1, :cond_9

    .line 366
    monitor-exit p0

    return-void

    .line 368
    :cond_9
    :try_start_9
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->streamCount:I

    if-nez p1, :cond_15

    .line 369
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J

    .line 371
    :cond_15
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->streamCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->streamCount:I
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_1d

    .line 372
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeEventListener(Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V
    .registers 3

    .line 354
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->eventDispatcher:Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;->removeListener(Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V

    return-void
.end method

.method public declared-synchronized setNetworkTypeOverride(I)V
    .registers 3

    monitor-enter p0

    .line 330
    :try_start_1
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->networkTypeOverride:I

    const/4 v0, 0x1

    .line 331
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->networkTypeOverrideSet:Z

    .line 332
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->onNetworkTypeChanged(I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 333
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method
