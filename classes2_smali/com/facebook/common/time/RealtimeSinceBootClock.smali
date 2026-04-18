.class public Lcom/facebook/common/time/RealtimeSinceBootClock;
.super Ljava/lang/Object;
.source "RealtimeSinceBootClock.java"


# annotations
.annotation build Lcom/facebook/common/internal/DoNotStrip;
.end annotation


# static fields
.field private static final INSTANCE:Lcom/facebook/common/time/RealtimeSinceBootClock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Lcom/facebook/common/time/RealtimeSinceBootClock;

    invoke-direct {v0}, Lcom/facebook/common/time/RealtimeSinceBootClock;-><init>()V

    sput-object v0, Lcom/facebook/common/time/RealtimeSinceBootClock;->INSTANCE:Lcom/facebook/common/time/RealtimeSinceBootClock;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/facebook/common/time/RealtimeSinceBootClock;
    .registers 1
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    .line 32
    sget-object v0, Lcom/facebook/common/time/RealtimeSinceBootClock;->INSTANCE:Lcom/facebook/common/time/RealtimeSinceBootClock;

    return-object v0
.end method
