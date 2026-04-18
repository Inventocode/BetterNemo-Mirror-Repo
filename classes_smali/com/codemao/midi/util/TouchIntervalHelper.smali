.class public final Lcom/codemao/midi/util/TouchIntervalHelper;
.super Ljava/lang/Object;
.source "TouchIntervalHelper.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/midi/util/TouchIntervalHelper;

.field private static lastTouchMills:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 8
    new-instance v0, Lcom/codemao/midi/util/TouchIntervalHelper;

    invoke-direct {v0}, Lcom/codemao/midi/util/TouchIntervalHelper;-><init>()V

    sput-object v0, Lcom/codemao/midi/util/TouchIntervalHelper;->INSTANCE:Lcom/codemao/midi/util/TouchIntervalHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic checkTouchInterval$default(Lcom/codemao/midi/util/TouchIntervalHelper;JILjava/lang/Object;)Z
    .registers 5

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_6

    const-wide/16 p1, 0x12c

    .line 20
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/codemao/midi/util/TouchIntervalHelper;->checkTouchInterval(J)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final checkTouchInterval(J)Z
    .registers 7

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/codemao/midi/util/TouchIntervalHelper;->lastTouchMills:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, p1

    if-ltz v2, :cond_13

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, Lcom/codemao/midi/util/TouchIntervalHelper;->lastTouchMills:J

    const/4 p1, 0x1

    return p1

    .line 25
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, Lcom/codemao/midi/util/TouchIntervalHelper;->lastTouchMills:J

    const/4 p1, 0x0

    return p1
.end method
