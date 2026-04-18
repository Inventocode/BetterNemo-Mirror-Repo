.class public final Lcom/codemao/midi/util/MidiStatisticsUtils;
.super Ljava/lang/Object;
.source "MidiStatisticsUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/midi/util/MidiStatisticsUtils;

.field private static statisticsEventListener:Lcom/codemao/midi/util/StatisticsEventListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 3
    new-instance v0, Lcom/codemao/midi/util/MidiStatisticsUtils;

    invoke-direct {v0}, Lcom/codemao/midi/util/MidiStatisticsUtils;-><init>()V

    sput-object v0, Lcom/codemao/midi/util/MidiStatisticsUtils;->INSTANCE:Lcom/codemao/midi/util/MidiStatisticsUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic sendEvent$default(Lcom/codemao/midi/util/MidiStatisticsUtils;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 12
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/midi/util/MidiStatisticsUtils;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final init(Lcom/codemao/midi/util/StatisticsEventListener;)V
    .registers 3

    const-string v0, "statisticsEventListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sput-object p1, Lcom/codemao/midi/util/MidiStatisticsUtils;->statisticsEventListener:Lcom/codemao/midi/util/StatisticsEventListener;

    return-void
.end method

.method public final sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcom/codemao/midi/util/MidiStatisticsUtils;->statisticsEventListener:Lcom/codemao/midi/util/StatisticsEventListener;

    if-eqz v0, :cond_11

    invoke-interface {v0, p1, p2, p3}, Lcom/codemao/midi/util/StatisticsEventListener;->onStatisticsClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_11
    return-void
.end method
